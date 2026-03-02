sap.ui.define(
    [
        'sap/fe/core/PageController',
        'sap/ui/model/json/JSONModel',
        "sap/m/Dialog",
    ],
    function (PageController, JSONModel, Dialog) {
        'use strict';

        var oController;
        var keyRouting;

        return PageController.extend('productioncockpitapp.ext.view.Components', {
            /**
             * Called when a controller is instantiated and its View controls (if available) are already created.
             * Can be used to modify the View before it is displayed, to bind event handlers and do other one-time initialization.
             * @memberOf productioncockpitapp.ext.view.Components
             */
            onInit: function () {
                oController = this;
                this.getOwnerComponent()
                    .getExtensionComponent()
                    .getRouter()
                    .getRoute("ZZ1_C_COMBINEDORDER_COMPComponentsPage")
                    .attachPatternMatched(this._onRouteMatched, this);

                this.getView().attachModelContextChange(() => {
                    const ctx = this.getView().getBindingContext();
                    if (ctx !== undefined && ctx !== null) {
                        var newPathSplitted = ctx.sPath.split("/");
                        var newPath = newPathSplitted[0] + "/" + newPathSplitted[1];
                        ctx.sPath = newPath
                    }
                    console.log("View binding context:", ctx && ctx.getPath());
                });
                this.byId("TableCombinedComponents").attachSelectionChange(function (oEvent) {
                    if (oEvent.getParameters().selectedContext.length > 0) {
                        oController.byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_COMPComponentsPage--TableCombinedComponents-content::CustomAction::replacementCompCombinedAction").setEnabled(true);
                        oController.byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_COMPComponentsPage--TableCombinedComponents-content::CustomAction::integrationCompCombinedAction").setEnabled(true);
                        oController.byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_COMPComponentsPage--TableCombinedComponents-content::CustomAction::deleteCompCombinedAction").setEnabled(true);
                        oController.byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_COMPComponentsPage--TableCombinedComponents-content::CustomAction::closeCompCombinedAction").setEnabled(true);
                    } else {
                        oController.byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_COMPComponentsPage--TableCombinedComponents-content::CustomAction::replacementCompCombinedAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_COMPComponentsPage--TableCombinedComponents-content::CustomAction::integrationCompCombinedAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_COMPComponentsPage--TableCombinedComponents-content::CustomAction::deleteCompCombinedAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_COMPComponentsPage--TableCombinedComponents-content::CustomAction::closeCompCombinedAction").setEnabled(false);
                    }
                });
                var reasonDataModel = new JSONModel({
                    ReasonSet: []
                });
                reasonDataModel.setDefaultBindingMode("TwoWay");
                this.setModel(reasonDataModel, "reasonServiceCombined");
            },
            _onRouteMatched: function () {
                debugger;
                const oTable = this.byId("TableCombinedComponents");
                if (!oTable) return;

                const oMDCTable = oTable.getMDCTable?.();
                if (!oMDCTable) return;

                const oBinding = oMDCTable.getRowBinding?.();
                if (!oBinding) return;

                // evita attach multipli
                if (this._bDataReceivedAttached !== true) {
                    oBinding.attachDataReceived(this._onDataReceived, this);
                    this._bDataReceivedAttached = true;
                }

                this._onDataReceived();
            },

            _onDataReceived: async function (oEvent) {
                debugger;
                if (this._bRestoring) return;
                this._bRestoring = true;

                try {
                    const s = sessionStorage.getItem("CombinedReturnState");
                    if (!s) return;

                    const st = JSON.parse(s);
                    if (!st) return;

                    const oTable = this.byId("TableCombinedComponents");
                    const oMDCTable = oTable && oTable.getMDCTable && oTable.getMDCTable();
                    //const oInner = oMDCTable._oTable;

                    const oBinding = oMDCTable && oMDCTable.getRowBinding && oMDCTable.getRowBinding();
                    if (!oBinding) return;

                    const iLen = oBinding.getLength?.() || 200;
                    const aCtx = oBinding.requestContexts
                        ? await oBinding.requestContexts(0, Math.min(iLen, 500))
                        : (oBinding.getCurrentContexts?.() || oBinding.getContexts?.(0, 200) || []);


                    //Recupero eventuale sessione (se risultano componenti assegnati)
                    const batchSession = sessionStorage.getItem("batchAssigned");

                    let excludedId = null;

                    if (batchSession) {
                        const parsed = JSON.parse(batchSession);
                        excludedId = String(parsed.ID);
                    }

                    if (
                        Array.isArray(st.keys) &&
                        st.keys.length === 1 &&
                        String(st.keys[0]) === String(excludedId)
                    ) {
                        return;
                    }

                    // seleziona per indice
                    for (const ctx of aCtx) {
                        const o = ctx.getObject();
                        if (!o) continue;

                        const bSelect =
                            st.keys.includes(String(o.ID)) &&
                            String(o.ID) !== excludedId;

                        if (ctx.setSelected) {
                            await ctx.setSelected(bSelect);
                        }
                    }

                    const sBtnId = (st.action === "replacement")
                        ? "replacementCompCombinedAction"
                        : "integrationCompCombinedAction";

                    this.onActionComponentsCombined({ getParameters: () => ({ id: `::${sBtnId}` }) });

                    //sessionStorage.removeItem("CombinedReturnState");

                } finally {
                    this._bRestoring = false;
                }
            },

            onAfterRendering: function () {
                sap.ui.getCore().byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_COMPComponentsPage--FilterBarCombinedComp-content-btnSearch").firePress()
                // recupero CDS delle reason
                var oModel = this.getView().getModel(); // OData V4 Model
                var oListBinding = oModel.bindList("/ZZ1_MFG_REASON_SOST");

                oListBinding.requestContexts().then(aContexts => {
                    oController.getView().getModel("reasonServiceCombined").setProperty("/ReasonSet", aContexts.map(oContext => oContext.getObject()));
                    console.log("Dati Reason letti:", aContexts.map(oContext => oContext.getObject()));
                }).catch(err => {
                    console.error("Errore nella chiamata OData:", err);
                });
            },

            onActionComponentsCombined: function (oEvent) {
                //rimuovo storage id righe
                sessionStorage.removeItem("CombinedReturnState");
                var buttonId = oEvent.getParameters().id.split("::")[oEvent.getParameters().id.split("::").length - 1]
                // controllo quale pulsante ho selezionato
                switch (buttonId) {
                    case "replacementCompCombinedAction":
                        // code block
                        oController.buttonSelected = "replacement"
                        break;
                    case "integrationCompCombinedAction":
                        // code block
                        oController.buttonSelected = "integration"
                        break;
                    case "deleteCompCombinedAction":
                        // code block
                        oController.buttonSelected = "delete"
                        break;
                    case "closeCompCombinedAction":
                        // code block
                        oController.buttonSelected = "close"
                        break;
                    default:
                        // code block
                        oController.buttonSelected = ""
                }
                if (oController.buttonSelected === "replacement" || oController.buttonSelected === "integration") {
                    //salvo action + chiavi rige selezionate (serve per ritornare sul fragment dalla vista assegnazioni batch)
                    /*           const sAction = (buttonId === "replacementCompCombinedAction") ? "replacement" : "integration";
                              const oTableCombined = this.byId("TableCombinedComponents");
                              const aKeys = oTableCombined.getSelectedContexts().map(ctx => {
                                  const o = ctx.getObject();
                                  return String(o.ID);
                              });
          
                              sessionStorage.setItem("CombinedReturnState", JSON.stringify({
                                  reopen: true,
                                  action: sAction,
                                  keys: aKeys
                              })); */

                    if (oController.pReplacementCompCombinedDialog === null || oController.pReplacementCompCombinedDialog === undefined) {
                        oController.pReplacementCompCombinedDialog = sap.ui.xmlfragment(this.getView().getId(), "productioncockpitapp.ext.Fragment.ReplacementCompCombinedDialog", oController);
                        oController.getView().addDependent(oController.pReplacementCompCombinedDialog);
                    }

                    oController.pReplacementCompCombinedDialog.open();

                    if (oController.buttonSelected === "integration") {
                        oController.byId("ReplacementCompCombinedDialog").setTitle(oController.getResourceBundle().getText("integrationComp"))
                        oController.byId("checkboxRecharge_ID").setVisible(false)
                    } else {
                        oController.byId("ReplacementCompCombinedDialog").setTitle(oController.getResourceBundle().getText("replacementComp"))
                        oController.byId("checkboxRecharge_ID").setVisible(true)
                    }

                    var selectedComponentsCombinedArray = []
                    var selectedComponentsCombinedObject = {}
                    //setto il valore di default alla prorpietà reason del model
                    var aReasons = this.getView().getModel("reasonServiceCombined").getProperty("/ReasonSet") || [];
                    var sDefaultText = aReasons.length
                        ? (aReasons[0].Reason + " - " + aReasons[0].Note)
                        : "";
                    selectedComponentsCombinedObject.ReasonKey =
                        aReasons[0].SAP_UUID;

                    for (var i = 0; i < oController.byId("TableCombinedComponents").getSelectedContexts().length; i++) {
                        selectedComponentsCombinedObject = oController.byId("TableCombinedComponents").getSelectedContexts()[i].getObject()
                        if (oController.buttonSelected === "integration") {
                            selectedComponentsCombinedObject.visibleCheckboxRecharge = false
                            selectedComponentsCombinedObject.NewMaterial = selectedComponentsCombinedObject.Material
                            selectedComponentsCombinedObject.Batch = ""
                        } else {
                            selectedComponentsCombinedObject.visibleCheckboxRecharge = true
                            selectedComponentsCombinedObject.NewMaterial = ""
                            selectedComponentsCombinedObject.Batch = ""
                        }
                        if (selectedComponentsCombinedObject.requirementtype !== 'BB') {
                            selectedComponentsCombinedObject.selectedCheckboxRecharge = false
                            selectedComponentsCombinedObject.editableCheckboxRecharge = false
                        } else {
                            selectedComponentsCombinedObject.selectedCheckboxRecharge = true
                            selectedComponentsCombinedObject.editableCheckboxRecharge = true
                        }
                        if (selectedComponentsCombinedObject.Reason === undefined || selectedComponentsCombinedObject.Reason === "") {
                            selectedComponentsCombinedObject.Reason = sDefaultText;
                        }
                        if (selectedComponentsCombinedObject.Note === undefined) {
                            selectedComponentsCombinedObject.Note = "";
                        }
                        selectedComponentsCombinedArray.push(selectedComponentsCombinedObject)
                    }

                    var oTable = oController.byId("ReplacementCompCombinedTableId");

                    var oModel = new JSONModel();
                    oModel.setDefaultBindingMode(sap.ui.model.BindingMode.TwoWay);
                    oModel.setData({ SelectedComponentsCombined: selectedComponentsCombinedArray })
                    oTable.setModel(oModel);
                } else {
                    oController.onDeleteCloseComponentsCombined()
                }

            },

            onCloseReplacementCompCombinedDialog: function () {
                oController.pReplacementCompCombinedDialog.close();
            },

            onReasonChange: function (oEvent) {
                const oSelect = oEvent.getSource();
                const oCtx = oSelect.getBindingContext();
                const sKey = oSelect.getSelectedKey();

                const textReason = oSelect.getSelectedItem().getText()
                oCtx.setProperty("Reason", textReason);
                oCtx.setProperty("ReasonKey", sKey);
            },
            //function per gestire view -> assegnazione Batch tab componenti Combined - INIZIO
            onBatchViewCombined: async function (oEvent) {
                const oInput = oEvent.getSource();
                const oTableCombined = this.byId("TableCombinedComponents");
                const oCtx = oInput.getBindingContext();
                const oRow = oCtx.getObject();

                const oComponent = this.getOwnerComponent().getExtensionComponent();
                this.oRouter = oComponent.getRouter();

                const sMaterial = oRow.Material;
                const sPlant = oRow.Plant;
                const sStorageLocation = oRow.StorageLocation;
                const sID = oRow.ID;

                sessionStorage.setItem("stockNavParams", JSON.stringify({
                    Material: sMaterial,
                    Plant: sPlant,
                    StorageLocation: sStorageLocation,
                    ID: oRow.ID,
                    row: {
                        ...oRow
                    },
                }));

                const aKeys = (oTableCombined?.getSelectedContexts?.() || [])
                    .map(ctx => String(ctx.getObject().ID));

                sessionStorage.setItem("CombinedReturnState", JSON.stringify({
                    action: oController.buttonSelected,
                    keys: aKeys
                }))

                this.oRouter.navTo("ZZ1_CombPlnOrdersStockPage", { query: { _ts: Date.now().toString() } });

            },
            //function per gestire view -> assegnazione Batch tab componenti Combined - FINE

            onConfirmReplacementCompCombinedDialog: function () {
                console.log("onConfirmReplacementCompCombinedDialog");
                var dataToSend = []
                var dataObjectToSend = {}
                var table = this.byId("ReplacementCompCombinedTableId")
                    .getModel()
                    .getProperty("/SelectedComponentsCombined") || [];

                for (var i = 0; i < table.length; i++) {
                    dataObjectToSend = {}
                    dataObjectToSend.id = "001"
                    dataObjectToSend.CprodOrd = table[i].CprodOrd
                    dataObjectToSend.FshMprodOrd = table[i].FshMprodOrd
                    if (table[i].NewMaterial !== null && table[i].NewMaterial !== undefined) {
                        dataObjectToSend.matnr_new = table[i].NewMaterial
                    } else {
                        dataObjectToSend.matnr_new = ""
                    }
                    dataObjectToSend.matnr_old = table[i].Material
                    dataObjectToSend.charg = table[i].Batch
                    dataObjectToSend.meins = table[i].BaseUnit
                    dataObjectToSend.menge = Number(table[i].TotalConfdQtyForATPInBaseUoM)
                    dataObjectToSend.vornr = table[i].ManufacturingOrderOperation
                    dataObjectToSend.plnfl = table[i].ManufacturingOrderSequence
                    dataObjectToSend.note = table[i].Note
                    dataObjectToSend.reason = table[i].Reason;
                    dataObjectToSend.lgort = table[i].Lgort1
                    dataObjectToSend.werks = table[i].Plant
                    dataObjectToSend.stk_seg = table[i].RequirementSegment
                    if (oController.buttonSelected === 'replacement') {
                        dataObjectToSend.action = "SOST"
                        if (table[i].selectedCheckboxRecharge === true) {
                            dataObjectToSend.recharge = 'X'
                        } else {
                            dataObjectToSend.recharge = ''
                        }
                    } else if (oController.buttonSelected === 'integration') {
                        dataObjectToSend.action = "INTE"
                    } else {
                        dataObjectToSend.action = ""
                    }
                    dataToSend.push(dataObjectToSend)
                }

                var oBusyDialog = new sap.m.BusyDialog();
                oBusyDialog.open();

                const oModel = oController.getView().getModel();
                var oBindingContext = oModel.bindContext("/Replacement(...)");
                oBindingContext.setParameter("Record",
                    dataToSend
                );

                if (dataToSend.length > 0) {
                    oBindingContext.execute().then((oResult) => {
                        var oContext = oBindingContext.getBoundContext();
                        sap.ui.getCore().byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_COMPComponentsPage--TableCombinedComponents-content-innerTable").getBinding("rows").refresh()
                        var v = oContext.getObject().value;
                        var s = (typeof v === "string") ? v : JSON.stringify(v ?? "");
                        //oController.openDialogMessageText(oController.getResourceBundle().getText("operationCompletedSuccefully"), "S");
                        if (/* oContext.getObject().value.indexOf("Error") > -1 */s.includes("Error")) {
                            oController.openDialogMessageText(oContext.getObject().value, "E");
                        } else {
                            //oController.openDialogMessageText(oContext.getObject().value, "S");
                            oController.openDialogMessageText(oController.getResourceBundle().getText("operationCompletedSuccefully"), "S");
                        }
                        sap.ui.getCore().byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_COMPComponentsPage--TableCombinedComponents").getMDCTable().clearSelection()
                        oBusyDialog.close();

                    }).catch((oError) => {
                        oBusyDialog.close();
                        if (oError.error !== undefined && oError.error !== null) {
                            oController.openDialogMessageText(oError.error.message, "E");
                        } else {
                            oController.openDialogMessageText(oError, "E");
                        }
                    });
                } else {
                    //MessageToast.show(oController.getResourceBundle().getText("noDataToSend")) 
                    oController.openDialogMessageText(oController.getResourceBundle().getText("noDataToSend"), "E");
                    oBusyDialog.close();
                }
                oController.pReplacementCompCombinedDialog.close();
            },

            onDeleteCloseComponentsCombined: function () {
                console.log("onDeleteCloseComponentsCombined");
                var dataToSend = []
                var dataObjectToSend = {}

                for (var i = 0; i < this.byId("TableCombinedComponents").getSelectedContexts().length; i++) {
                    dataObjectToSend = {}
                    dataObjectToSend.id = "001"
                    dataObjectToSend.CprodOrd = oController.byId("TableCombinedComponents").getSelectedContexts()[i].getObject().CprodOrd
                    dataObjectToSend.FshMprodOrd = oController.byId("TableCombinedComponents").getSelectedContexts()[i].getObject().FshMprodOrd
                    dataObjectToSend.matnr_new = oController.byId("TableCombinedComponents").getSelectedContexts()[i].getObject().NewMaterial
                    dataObjectToSend.matnr_old = oController.byId("TableCombinedComponents").getSelectedContexts()[i].getObject().Material
                    dataObjectToSend.charg = oController.byId("TableCombinedComponents").getSelectedContexts()[i].getObject().Batch
                    dataObjectToSend.meins = oController.byId("TableCombinedComponents").getSelectedContexts()[i].getObject().BaseUnit
                    dataObjectToSend.menge = Number(oController.byId("TableCombinedComponents").getSelectedContexts()[i].getObject().TotalConfdQtyForATPInBaseUoM)
                    dataObjectToSend.vornr = oController.byId("TableCombinedComponents").getSelectedContexts()[i].getObject().ManufacturingOrderOperation
                    dataObjectToSend.plnfl = oController.byId("TableCombinedComponents").getSelectedContexts()[i].getObject().ManufacturingOrderSequence
                    dataObjectToSend.note = oController.byId("TableCombinedComponents").getSelectedContexts()[i].getObject().Note
                    dataObjectToSend.reason = oController.byId("TableCombinedComponents").getSelectedContexts()[i].getObject().Reason
                    dataObjectToSend.lgort = oController.byId("TableCombinedComponents").getSelectedContexts()[i].getObject().Lgort1 // o lgort2?
                    dataObjectToSend.werks = oController.byId("TableCombinedComponents").getSelectedContexts()[i].getObject().Plant
                    dataObjectToSend.stk_seg = oController.byId("TableCombinedComponents").getSelectedContexts()[i].getObject().RequirementSegment
                    if (oController.buttonSelected === 'delete') {
                        dataObjectToSend.action = "CANC"
                    } else if (oController.buttonSelected === 'close') {
                        dataObjectToSend.action = "SFPF"
                    } else {
                        dataObjectToSend.action = ""
                    }
                    dataToSend.push(dataObjectToSend)
                }

                var oBusyDialog = new sap.m.BusyDialog();
                oBusyDialog.open();

                const oModel = oController.getView().getModel();
                var oBindingContext = oModel.bindContext("/Replacement(...)");
                oBindingContext.setParameter("Record",
                    dataToSend
                );

                if (dataToSend.length > 0) {
                    oBindingContext.execute().then((oResult) => {
                        var oContext = oBindingContext.getBoundContext();
                        if (oContext.getObject().value.to_intcomp[0].flag_error === "true") {
                            oController.openDialogMessageText(oContext.getObject().value.to_intcomp[0].msg, "E");
                        } else {
                            //oController.openDialogMessageText(oContext.getObject().value, "S");
                            oController.openDialogMessageText(oController.getResourceBundle().getText("operationCompletedSuccefully"), "S");
                        }
                        sap.ui.getCore().byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_COMPComponentsPage--TableCombinedComponents-content-innerTable").getBinding("rows").refresh()
                        //oController.openDialogMessageText(oController.getResourceBundle().getText("operationCompletedSuccefully"), "S");
                        sap.ui.getCore().byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_COMPComponentsPage--TableCombinedComponents").getMDCTable().clearSelection()
                        oBusyDialog.close();

                    }).catch((oError) => {
                        oBusyDialog.close();
                        if (oError.error !== undefined && oError.error !== null) {
                            oController.openDialogMessageText(oError.error.message, "E");
                        } else {
                            oController.openDialogMessageText(oError, "E");
                        }
                    });
                } else {
                    //MessageToast.show(oController.getResourceBundle().getText("noDataToSend")) 
                    if ((this.byId("ReplacementCompMasterTableId").getModel().getData().SelectedComponentsMaster[0].QtyToIssue) > 0) {
                        oController.openDialogMessageText(oController.getResourceBundle().getText("noDataToSend"), "E");
                    }
                    oBusyDialog.close();
                }

            },

            openDialogMessageText: function (text, messType) {
                var vTitle = "Message";
                var vState = "Error";

                if (messType === "E") {
                    vTitle = this.getResourceBundle().getText("errorTitle");
                    vState = "Error";
                } else
                    if (messType === "I" || messType === "S") {
                        vTitle = this.getResourceBundle().getText("successTitle");
                        vState = "Success";
                    }

                var dialog = new Dialog({
                    title: vTitle,
                    type: "Message",
                    state: vState,
                    content: new sap.m.Text({
                        text: text
                    }),

                    beginButton: new sap.m.Button({
                        text: "OK",
                        press: function () {
                            dialog.close();
                        }
                    }),
                    afterClose: function () {
                        dialog.destroy();
                    }
                });

                dialog.open();
            },

            /*onInit: function () {
                oController = this;
                keyRouting = ""
                console.log("ENTRATOOOOOO")
            //      PageController.prototype.onInit.apply(this, arguments); // needs to be called to properly initialize the page controller
                const oComponent = this.getOwnerComponent().getExtensionComponent();

                this.oRouter = oComponent.getRouter();
                this.oRouter.getRoute("ZZ1_C_MASTERORDER_COMPComponentsPage").attachPatternMatched(this.onObjectMatched, this);
            },

            onObjectMatched: function(oEvent) {
                console.log("objectMatched")
                oController.keyRouting = oEvent.getParameter("arguments").ZZ1_C_MASTERORDER_COMPKey
            },*/


            /**
             * Similar to onAfterRendering, but this hook is invoked before the controller's View is re-rendered
             * (NOT before the first rendering! onInit() is used for that one!).
             * @memberOf productioncockpitapp.ext.view.Components
             */
            //  onBeforeRendering: function() {
            //
            //  },

            /**
             * Called when the View has been rendered (so its HTML is part of the document). Post-rendering manipulations of the HTML could be done here.
             * This hook is the same one that SAPUI5 controls get after being rendered.
             * @memberOf productioncockpitapp.ext.view.Components
             */
            /*
            modifyDataBeforeRebind: function(oEvent){
                console.log("keyRouting "+oController.keyRouting)
                if(oController.keyRouting.indexOf(";") > -1){
                    var keyRoutingSplit = oController.keyRouting.split(";")
                    var filter = {}
                    var filters = []
                    for(var i=0; i<keyRoutingSplit.length; i++){
                        filter = new sap.ui.model.Filter("FshMprodOrd", sap.ui.model.FilterOperator.EQ, keyRoutingSplit[i])
                        filters.push(filter)
                    }
                    oEvent.mParameters.collectionBindingInfo.collectionBindingInfo.filters = filters
                } else {
                    oEvent.mParameters.collectionBindingInfo.collectionBindingInfo.filters = [new sap.ui.model.Filter("FshMprodOrd", sap.ui.model.FilterOperator.EQ, oController.keyRouting)]
                }
                
                
                console.log("FUNCTION modifyRebind")
            },*/

            /**
             * Called when the Controller is destroyed. Use this one to free resources and finalize activities.
             * @memberOf productioncockpitapp.ext.view.Components
             */
            //  onExit: function() {
            //
            //  }
        });
    }
);
