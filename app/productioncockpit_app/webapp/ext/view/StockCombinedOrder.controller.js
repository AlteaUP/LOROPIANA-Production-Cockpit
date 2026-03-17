sap.ui.define(
    [
        'sap/fe/core/PageController',
        'sap/ui/model/json/JSONModel',
        "sap/m/MessageToast",
        "sap/m/Dialog",
    ],
    function (PageController, JSONModel, MessageToast, Dialog) {
        'use strict';

        var oController;

        return PageController.extend('productioncockpitapp.ext.view.Components', {
            /**
             * Called when a controller is instantiated and its View controls (if available) are already created.
             * Can be used to modify the View before it is displayed, to bind event handlers and do other one-time initialization.
             * @memberOf productioncockpitapp.ext.view.Components
             */
            onInit: function () {
                debugger;
                this.getOwnerComponent()
                    .getExtensionComponent()
                    .getRouter()
                    .getRoute("ZZ1_CombPlnOrdersStockPage")
                    .attachPatternMatched(this._onRouteMatched, this);
                const oRouter = this.getOwnerComponent().getExtensionComponent().getRouter();
                oRouter.attachRouteMatched((oEvent) => {
                    this._sLastRoute = oEvent.getParameter("name");
                }, this);
                oRouter.attachBeforeRouteMatched(this._onBeforeRouteMatched, this);

                var reasonDataModel = new JSONModel({
                    ReasonSet: []
                });
                reasonDataModel.setDefaultBindingMode("TwoWay");
                this.setModel(reasonDataModel, "reasonServiceCombinedAssegna");
            },
            _onBeforeRouteMatched: function (oEvent) {
                debugger
                let sNextRoute = oEvent.getParameter("name");
                if (this._sLastRoute === "ZZ1_CombPlnOrdersStockPage" && sNextRoute !== "ZZ1_CombPlnOrdersStockPage") {
                    console.log("Uscita da StockPage");
                    //faccio detach
                    const oMacroTable = this.byId("TableStock");
                    const oMDCTable = oMacroTable.getMDCTable && oMacroTable.getMDCTable();
                    const oInnerTable = oMDCTable && oMDCTable._oTable;
                    oInnerTable.detachUpdateFinished(this._onUpdateFinished, this);
                    //elimino storage "navParams" - "batchAssigned"
                    sessionStorage.removeItem("stockNavParams");
                }
            },

            _onRouteMatched: function (oEvent) {
                debugger;
                oController = this;
                sessionStorage.removeItem("batchAssigned");
                this._navParams = JSON.parse(sessionStorage.getItem("stockNavParams") || "{}");

                const oStocksModel = new sap.ui.model.json.JSONModel({
                    tableCount: 0
                });
                this.getView().setModel(oStocksModel, "stocksModel");

                const oMacroTable = this.byId("TableStock");
                const oFilterBar = this.byId("orderComponentFilter");
                //const oContent = oFilterBar?.getContent?.();
                if (!oMacroTable || !oFilterBar) return;

                const p = this._navParams || {};

                oFilterBar.setVisible(false);
                oMacroTable.setBindingSuspended(true);

                oFilterBar.removeAllFilterFields();
                oFilterBar.setFilterValues("Material", p.Material);
                oFilterBar.setFilterValues("Plant", p.Plant);
                oFilterBar.setFilterValues("StorageLocation", p.StorageLocation);
                const cprod = (p.row && p.row.CprodOrd ? String(p.row.CprodOrd) : "").trim();
                oFilterBar.setFilterValues("CprodOrd", cprod);

                oMacroTable.setBindingSuspended(false);

                setTimeout(() => {
                    oFilterBar.getContent().fireSearch();
                    const oMDCTable = oMacroTable.getMDCTable && oMacroTable.getMDCTable();
                    const oInnerTable = oMDCTable && oMDCTable._oTable;
                    if (oInnerTable) {
                        oInnerTable.detachUpdateFinished(this._onUpdateFinished, this);
                        oInnerTable.attachUpdateFinished(this._onUpdateFinished, this);
                    }
                    const oBinding = oMacroTable.getRowBinding();
                    if (oBinding && oBinding.isA("sap.ui.model.odata.v4.ODataListBinding")) {
                        oBinding.refresh();
                    }
                }, 400);
            },

            _onUpdateFinished: function (oEvent) {
                debugger
                const oInnerTable = oEvent.getSource();
                const oMacroTable = this.byId("TableStock");
                const oRowBinding = oMacroTable.getRowBinding();
                if (!oRowBinding) return;

                const aContexts = oRowBinding.getCurrentContexts() || [];
                const aRows = oInnerTable.isA("sap.m.Table")
                    ? oInnerTable.getItems()
                    : oInnerTable.getRows();

                for (const ctx of aContexts) {
                    if (ctx?.setSelected) {
                        ctx.setSelected(false);
                    }
                }
                const p = this._navParams || {};
                const oRow = p.row;

                let material;
                let action;
                if (p.action === "replacement") {
                    action = "Sostituzione"
                    material = p.row.NewMaterial
                } else {
                    action = "Integrazione"
                    material = p.row.Material
                }

                //setto tot item e altri campi 
                const oModelStock = this.getView().getModel("stocksModel");
                oModelStock.setProperty('/tableCount', aRows.length)
                oModelStock.setProperty('/CprodOrd', p.row.CprodOrd);
                oModelStock.setProperty('/Material', material);
                oModelStock.setProperty('/TotalQuantityInEntryUnit', p.row.TotalQuantityInEntryUnit);
                oModelStock.setProperty('/Action', action)
            },
            onAfterRendering: function () {
                // recupero CDS delle reason
                var oModel = this.getView().getModel(); // OData V4 Model
                var oListBinding = oModel.bindList("/ZZ1_MFG_REASON_SOST");

                oListBinding.requestContexts().then(aContexts => {
                    oController.getView().getModel("reasonServiceCombinedAssegna").setProperty("/ReasonSet", aContexts.map(oContext => oContext.getObject()));
                    console.log("Dati Reason letti:", aContexts.map(oContext => oContext.getObject()));
                }).catch(err => {
                    console.error("Errore nella chiamata OData:", err);
                });
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
            onReasonChange: function (oEvent) {
                const oSelect = oEvent.getSource();
                const oCtx = oSelect.getBindingContext("local");

                const textReason = oSelect.getSelectedItem().getText()
                oCtx.setProperty("Reason", textReason)
            },

            /* modifyDataBeforeRebind: function (oEvent) { */
            /*   const s = sessionStorage.getItem("stockNavParams");
              if (!s) return;
              const p = JSON.parse(s); */
            /*         const p = this._navParams || {};
    
                    const oCollectionBindingInfo = oEvent.getParameter("collectionBindingInfo");
                    //aggiungo filtri
                    oCollectionBindingInfo.addFilter(new sap.ui.model.Filter("Material", "EQ", p.Material));
                    oCollectionBindingInfo.addFilter(new sap.ui.model.Filter("Plant", "EQ", p.Plant));
                    oCollectionBindingInfo.addFilter(new sap.ui.model.Filter("StorageLocation", "EQ", p.StorageLocation));
    
                    if (p.row.CprodOrd && p.row.CprodOrd.trim() !== "") {
                        oCollectionBindingInfo.addFilter(
                            new sap.ui.model.Filter("CprodOrd", "EQ", p.row.CprodOrd)
                        );
                    } */
            /*  }, */

            pressAssegna: function () {
                debugger;
                const oTableStock = oController.byId("TableStock");
                const aSelCtx = oTableStock ? oTableStock.getSelectedContexts() : [];
                if (!aSelCtx || aSelCtx.length === 0) {
                    MessageToast.show(oController.getResourceBundle().getText("selectOnlyOneRecord"))
                    return;
                }
                if (!oController.pAssegnaBatchCombinedDialog) {
                    oController.pAssegnaBatchCombinedDialog = sap.ui.xmlfragment(
                        oController.getView().getId(),
                        "productioncockpitapp.ext.Fragment.AssegnaBatchCombined",
                        oController
                    );
                    oController.getView().addDependent(oController.pAssegnaBatchCombinedDialog);
                }

                oController.pAssegnaBatchCombinedDialog.open();

                const sRet = sessionStorage.getItem("CombinedReturnState");
                if (!sRet) return;

                const oRet = JSON.parse(sRet);
                const sAction = oRet.action;
                if (sAction === "integration") {
                    oController.byId("AssegnaBatchCombinedDialog").setTitle(oController.getResourceBundle().getText("integrationComp"));
                    oController.byId("checkboxRecharge_IDA").setVisible(false);
                } else {
                    oController.byId("AssegnaBatchCombinedDialog").setTitle(oController.getResourceBundle().getText("replacementComp"));
                    oController.byId("checkboxRecharge_IDA").setVisible(true);
                }

                // 3) Recupero riga base (oRow) da storage stockNavParams
                /*    const s = sessionStorage.getItem("stockNavParams");
                   if (!s) return;
                   const p = JSON.parse(s); */
                const p = this._navParams || {};
                const oRow = p.row;
                let material;

                if (p.action === "replacement") {
                    material = oRow.NewMaterial ? oRow.NewMaterial : oRow.Material;
                } else {
                    material = oRow.Material
                }

                //creo model per il dialog batch da assegnare
                const oViewBatchModel = new sap.ui.model.json.JSONModel({
                    //required quantity
                    TotalQuantityInEntryUnit: oRow.TotalQuantityInEntryUnit,
                    Material: material
                });
                const oDialog = this.byId("AssegnaBatchCombinedDialog");
                oDialog.setModel(oViewBatchModel, "viewBatch");

                // 4) Batch selezionati dal table dentro al fragment (o view)

                const fEach = (Number(oRow.TotalQuantityInEntryUnit) || 0) / aSelCtx.length;

                const aSelected = [];
                for (let i = 0; i < aSelCtx.length; i++) {
                    const oBatchObj = aSelCtx[i].getObject(); // record batch selezionato

                    // CLONE profondo di oRow
                    const oNew = (typeof structuredClone === "function")
                        ? structuredClone(oRow)
                        : JSON.parse(JSON.stringify(oRow));

                    oNew.Batch = oBatchObj.Batch;
                    if (sAction === "integration") {
                        oNew.visibleCheckboxRecharge = false;
                    } else {
                        oNew.visibleCheckboxRecharge = true;
                    }

                    oNew.NewMaterial = material;

                    if (oNew.requirementtype !== "BB") {
                        oNew.selectedCheckboxRecharge = false;
                        oNew.editableCheckboxRecharge = false;
                    } else {
                        oNew.selectedCheckboxRecharge = true;
                        oNew.editableCheckboxRecharge = true;
                    }

                    oNew.TotalQuantityInEntryUnit = Number(fEach.toFixed(3));

                    aSelected.push(oNew);
                }
                const oModel = new sap.ui.model.json.JSONModel({
                    SelectedAssegnaBatchCombined: aSelected
                });
                oModel.setDefaultBindingMode(sap.ui.model.BindingMode.TwoWay);

                const oTable = this.byId("AssegnaBatchCombinedTableId");
                oTable.setModel(oModel, "local");
            },

            onConfirmAssegnaBatchCombinedDialog: function () {
                //assegno batch e metto id record assegnato in storage          
                const p = this._navParams || {};
                const oRow = p.row;
                var dataToSend = []
                var dataObjectToSend = {}
                var table = this.byId("AssegnaBatchCombinedTableId")
                    .getModel("local")
                    .getProperty("/SelectedAssegnaBatchCombined") || [];

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
                    dataObjectToSend.menge = Number(table[i].TotalQuantityInEntryUnit)
                    dataObjectToSend.vornr = table[i].ManufacturingOrderOperation
                    dataObjectToSend.plnfl = table[i].ManufacturingOrderSequence
                    dataObjectToSend.note = table[i].Note
                    dataObjectToSend.reason = table[i].Reason;
                    dataObjectToSend.lgort = table[i].Lgort1
                    dataObjectToSend.werks = table[i].Plant
                    dataObjectToSend.stk_seg = table[i].RequirementSegment
                    if (p.action === 'replacement') {
                        dataObjectToSend.action = "SOST"
                        if (table[i].selectedCheckboxRecharge === true) {
                            dataObjectToSend.recharge = 'X'
                        } else {
                            dataObjectToSend.recharge = ''
                        }
                    } else if (p.action === 'integration') {
                        dataObjectToSend.action = "INTE"
                    } else {
                        dataObjectToSend.action = ""
                    }
                    dataToSend.push(dataObjectToSend)
                }

                var oBusyDialog = new sap.m.BusyDialog();
                oBusyDialog.open();

                const oModel = oController.getView().getModel();
                /*   oBusyDialog.close();
                  return */
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
                        oBusyDialog.close();

                        sessionStorage.setItem("batchAssigned", JSON.stringify({
                            ID: String(oRow.ID),
                        }));
                        //torno al popup sostituzione/integrazione 
                        const Key = `.1~${String(oRow.CprodOrd).padStart(12, '0')}`;
                        const oComponent = this.getOwnerComponent().getExtensionComponent();
                        this.oRouter = oComponent.getRouter();

                        this.oRouter.navTo("ZZ1_C_COMBINEDORDER_COMPComponentsPage", {
                            ZZ1_C_COMBINEDORDER_COMPKey: "'" + Key + "'", "?query": {
                            }
                        });
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
                oController.pAssegnaBatchCombinedDialog.close();
            },
            onCloseAssegnaBatchCombinedDialog: function () {
                oController.pAssegnaBatchCombinedDialog.close();
            }
        });
    }
);
