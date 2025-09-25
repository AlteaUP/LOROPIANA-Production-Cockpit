sap.ui.define(
    [
        'sap/fe/core/PageController',
        'sap/ui/model/json/JSONModel',
        "sap/m/Dialog",
    ],
    function(PageController, JSONModel, Dialog) {
        'use strict';

        var oController;
        var keyRouting;
        var buttonSelected

        return PageController.extend('productioncockpitapp.ext.view.Components', {
            /**
             * Called when a controller is instantiated and its View controls (if available) are already created.
             * Can be used to modify the View before it is displayed, to bind event handlers and do other one-time initialization.
             * @memberOf productioncockpitapp.ext.view.Components
             */
            onInit: function () {
                oController = this;
                this.getView().attachModelContextChange(() => {
                    const ctx = this.getView().getBindingContext();
                    if(ctx !== undefined && ctx !== null){
                        var newPathSplitted = ctx.sPath.split("/"); 
                        var newPath = newPathSplitted[0] + "/" + newPathSplitted[1];
                        ctx.sPath = newPath
                    }
                    console.log("View binding context:", ctx && ctx.getPath());
                });
                this.byId("TableComponents").attachSelectionChange(function (oEvent) {
                    if(oEvent.getParameters().selectedContext.length > 0){
                        oController.byId("productioncockpitapp::ZZ1_C_MASTERORDER_COMPComponentsPage--TableComponents-content::CustomAction::replacementCompMasterAction").setEnabled(true);
                        oController.byId("productioncockpitapp::ZZ1_C_MASTERORDER_COMPComponentsPage--TableComponents-content::CustomAction::integrationCompMasterAction").setEnabled(true);
                        oController.byId("productioncockpitapp::ZZ1_C_MASTERORDER_COMPComponentsPage--TableComponents-content::CustomAction::deleteCompMasterAction").setEnabled(true);
                        oController.byId("productioncockpitapp::ZZ1_C_MASTERORDER_COMPComponentsPage--TableComponents-content::CustomAction::closeCompMasterAction").setEnabled(true);                        
                    } else {
                        oController.byId("productioncockpitapp::ZZ1_C_MASTERORDER_COMPComponentsPage--TableComponents-content::CustomAction::replacementCompMasterAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_C_MASTERORDER_COMPComponentsPage--TableComponents-content::CustomAction::integrationCompMasterAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_C_MASTERORDER_COMPComponentsPage--TableComponents-content::CustomAction::deleteCompMasterAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_C_MASTERORDER_COMPComponentsPage--TableComponents-content::CustomAction::closeCompMasterAction").setEnabled(false);                        
                    }
                });
            },

            onAfterRendering: function() {                
                sap.ui.getCore().byId("productioncockpitapp::ZZ1_C_MASTERORDER_COMPComponentsPage--FilterBarMasterComp-content-btnSearch").firePress()
            },

            onActionComponentsMaster: function(oEvent){
                var buttonId = oEvent.getParameters().id.split("::")[oEvent.getParameters().id.split("::").length-1]
                // controllo quale pulsante ho selezionato
                switch(buttonId) {
                case "replacementCompMasterAction":
                    // code block
                    oController.buttonSelected = "replacement"
                    break;
                case "integrationCompMasterAction":
                    // code block
                    oController.buttonSelected = "integration"
                    break;
                case "deleteCompMasterAction":
                    // code block
                    oController.buttonSelected = "delete"
                    break;
                case "closeCompMasterAction":
                    // code block
                    oController.buttonSelected = "close"
                    break;
                default:
                    // code block
                    oController.buttonSelected = ""
                }
                if(oController.buttonSelected === "replacement" || oController.buttonSelected === "integration"){
                    if(oController.pReplacementCompMasterDialog === null || oController.pReplacementCompMasterDialog === undefined){
                        oController.pReplacementCompMasterDialog = sap.ui.xmlfragment(this.getView().getId(), "productioncockpitapp.ext.Fragment.ReplacementCompMasterDialog", oController);
                        oController.getView().addDependent(oController.pReplacementCompMasterDialog);
                    }

                    oController.pReplacementCompMasterDialog.open();

                    var selectedComponentsMasterArray = []
                    var selectedComponentsMasterObject = {}
                    for(var i=0; i<oController.byId("TableComponents").getSelectedContexts().length; i++){
                        selectedComponentsMasterObject = oController.byId("TableComponents").getSelectedContexts()[i].getObject()
                        selectedComponentsMasterObject.NewMaterial = selectedComponentsMasterObject.Material
                        selectedComponentsMasterArray.push(selectedComponentsMasterObject)
                    }

                    var oTable = oController.byId("ReplacementCompMasterTableId");
                        
                    var oModel = new JSONModel();
                    oModel.setData({ SelectedComponentsMaster: selectedComponentsMasterArray})
                    oTable.setModel(oModel);
                } else {
                    oController.onDeleteCloseComponentsMaster()
                }
                
            },

            onCloseReplacementCompMasterDialog: function(){
                oController.pReplacementCompMasterDialog.close();
            }, 

            onConfirmReplacementCompMasterDialog: function(){                
                console.log("onConfirmReplacementCompMasterDialog");
                var dataToSend = []
                var dataObjectToSend = {}

                var table = this.byId("ReplacementCompMasterTableId").getModel().oData.SelectedComponentsMaster

                for(var i=0; i<table.length; i++){
                    dataObjectToSend = {}
                    dataObjectToSend.id = "001"                    
                    dataObjectToSend.CprodOrd = table[i].CprodOrd
                    dataObjectToSend.FshMprodOrd = table[i].FshMprodOrd
                    if(table[i].NewMaterial !== null && table[i].NewMaterial !== undefined){
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
                    dataObjectToSend.reason = table[i].Reason
                    dataObjectToSend.lgort = table[i].Lgort1 // o lgort2?
                    dataObjectToSend.werks = table[i].Plant
                    dataObjectToSend.stk_seg = table[i].RequirementSegment                    
                    if(oController.buttonSelected === 'replacement'){
                        dataObjectToSend.action = "SOST"
                    } else if(oController.buttonSelected === 'integration'){ 
                        dataObjectToSend.action = "INTE"
                    } else {
                        dataObjectToSend.action = ""
                    }
                    dataToSend.push(dataObjectToSend)
                }

                /*dataObjectToSend = {"id": "001",
                    "CprodOrd": "000000000166",
                    "FshMprodOrd": "",
                    "matnr_new": "MAL9704M01M",
                    "matnr_old": "MAL9704M01M",
                    "charg": "0000001435",
                    "meins": "NR",
                    "menge": 12,
                    "vornr": "0010",
                    "plnfl": "000000",
                    "note":  "note",
                    "reason": "reason",
                    "lgort": "K100",
                    "werks": "PF20",
                    "stk_seg": "REG",
                    "action": "INTE"
                }

                dataToSend.push(dataObjectToSend)*/

                var oBusyDialog = new sap.m.BusyDialog();
                oBusyDialog.open();

                const oModel = oController.getView().getModel();
                var oBindingContext = oModel.bindContext("/Replacement(...)");
                oBindingContext.setParameter("Record", 
                    dataToSend
                );

                if(dataToSend.length > 0){
                    oBindingContext.execute().then((oResult) => {
                        var oContext = oBindingContext.getBoundContext();                            
                        //oController.byId("TableComponents").getModel().refresh()
                        sap.ui.getCore().byId("productioncockpitapp::ZZ1_C_MASTERORDER_COMPComponentsPage--TableComponents-content-innerTable").getBinding("rows").refresh()
                        oBusyDialog.close();
                        
                    }).catch((oError) => {
                        oBusyDialog.close();
                        if(oError.error !== undefined && oError.error !== null){
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
                oController.pReplacementCompMasterDialog.close();
            },

            onDeleteCloseComponentsMaster: function (){
                console.log("onDeleteCloseComponentsMaster");
                var dataToSend = []
                var dataObjectToSend = {}

                for(var i=0; i<this.byId("TableComponents").getSelectedContexts().length; i++){
                    dataObjectToSend = {}
                    dataObjectToSend.id = "001"                    
                    dataObjectToSend.CprodOrd = oController.byId("TableComponents").getSelectedContexts()[i].getObject().CprodOrd
                    dataObjectToSend.FshMprodOrd = oController.byId("TableComponents").getSelectedContexts()[i].getObject().FshMprodOrd
                    dataObjectToSend.matnr_new = oController.byId("TableComponents").getSelectedContexts()[i].getObject().NewMaterial
                    dataObjectToSend.matnr_old = oController.byId("TableComponents").getSelectedContexts()[i].getObject().Material
                    dataObjectToSend.charg = oController.byId("TableComponents").getSelectedContexts()[i].getObject().Batch
                    dataObjectToSend.meins = oController.byId("TableComponents").getSelectedContexts()[i].getObject().BaseUnit
                    dataObjectToSend.menge = Number(oController.byId("TableComponents").getSelectedContexts()[i].getObject().TotalConfdQtyForATPInBaseUoM)
                    dataObjectToSend.vornr = oController.byId("TableComponents").getSelectedContexts()[i].getObject().ManufacturingOrderOperation
                    dataObjectToSend.plnfl = oController.byId("TableComponents").getSelectedContexts()[i].getObject().ManufacturingOrderSequence
                    dataObjectToSend.note = oController.byId("TableComponents").getSelectedContexts()[i].getObject().Note
                    dataObjectToSend.reason = oController.byId("TableComponents").getSelectedContexts()[i].getObject().Reason
                    dataObjectToSend.lgort = oController.byId("TableComponents").getSelectedContexts()[i].getObject().Lgort1 // o lgort2?
                    dataObjectToSend.werks = oController.byId("TableComponents").getSelectedContexts()[i].getObject().Plant
                    dataObjectToSend.stk_seg = oController.byId("TableComponents").getSelectedContexts()[i].getObject().RequirementSegment
                    if(oController.buttonSelected === 'delete'){
                        dataObjectToSend.action = "CANC"
                    } else if(oController.buttonSelected === 'close'){ 
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

                if(dataToSend.length > 0){
                    oBindingContext.execute().then((oResult) => {
                        var oContext = oBindingContext.getBoundContext();                            
                        sap.ui.getCore().byId("productioncockpitapp::ZZ1_C_MASTERORDER_COMPComponentsPage--TableComponents-content-innerTable").getBinding("rows").refresh()
                        oBusyDialog.close();
                        //oController.byId("TableComponents").getModel().refresh()
                        
                    }).catch((oError) => {
                        oBusyDialog.close();
                        if(oError.error !== undefined && oError.error !== null){
                            oController.openDialogMessageText(oError.error.message, "E");
                        } else {
                            oController.openDialogMessageText(oError, "E");
                        }
                    });
                } else {
                    //MessageToast.show(oController.getResourceBundle().getText("noDataToSend")) 
                    if((this.byId("ReplacementCompMasterTableId").getModel().getData().SelectedComponentsMaster[0].QtyToIssue) > 0){
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
                    if (messType === "I") {
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
