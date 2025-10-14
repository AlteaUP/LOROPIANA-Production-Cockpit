sap.ui.define(
    [
        'sap/fe/core/PageController',
        'sap/ui/model/json/JSONModel',
        "sap/m/Dialog",
        'sap/m/MessageToast'
    ],
    function(PageController, JSONModel, Dialog, MessageToast) {
        'use strict';

        var oController;

        return PageController.extend('productioncockpitapp.ext.view.Operations', {
            /**
             * Called when a controller is instantiated and its View controls (if available) are already created.
             * Can be used to modify the View before it is displayed, to bind event handlers and do other one-time initialization.
             * @memberOf productioncockpitapp.ext.view.Operations
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
                this.byId("TableCombinedOperations").attachSelectionChange(function (oEvent) {
                    if(oEvent.getParameters().selectedContext.length > 0){
                        oController.byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_OPEROperationsPage--TableCombinedOperations-content::CustomAction::changeWCCombAction").setEnabled(true);
                        oController.byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_OPEROperationsPage--TableCombinedOperations-content::CustomAction::addPhaseCombAction").setEnabled(true);
                        oController.byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_OPEROperationsPage--TableCombinedOperations-content::CustomAction::deletePhaseCombAction").setEnabled(true);
                        oController.byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_OPEROperationsPage--TableCombinedOperations-content::CustomAction::movePhaseCombAction").setEnabled(true);                        
                    } else {
                        oController.byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_OPEROperationsPage--TableCombinedOperations-content::CustomAction::changeWCCombAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_OPEROperationsPage--TableCombinedOperations-content::CustomAction::addPhaseCombAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_OPEROperationsPage--TableCombinedOperations-content::CustomAction::deletePhaseCombAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_OPEROperationsPage--TableCombinedOperations-content::CustomAction::movePhaseCombAction").setEnabled(false);                        
                    }
                });
            },

            onActionOperationCombined: function(oEvent){
                var buttonId = oEvent.getParameters().id.split("::")[oEvent.getParameters().id.split("::").length-1]
                // controllo quale pulsante ho selezionato
                switch(buttonId) {
                case "changeWCCombAction":
                    // code block
                    oController.buttonSelected = "changeWC"
                    break;
                case "addPhaseCombAction":
                    // code block
                    oController.buttonSelected = "addPhase"
                    break;
                case "deletePhaseCombAction":
                    // code block
                    oController.buttonSelected = "deletePhase"
                    break;
                case "movePhaseCombAction":
                    // code block
                    oController.buttonSelected = "movePhase"
                    break;
                default:
                    // code block
                    oController.buttonSelected = ""
                }
                if(oController.buttonSelected === "changeWC"){
                    if(oController.pOperationsChangeWCCombinedDialog === null || oController.pOperationsChangeWCCombinedDialog === undefined){
                        oController.pOperationsChangeWCCombinedDialog = sap.ui.xmlfragment(this.getView().getId(), "productioncockpitapp.ext.Fragment.OperationsChangeWCCombinedDialog", oController);
                        oController.getView().addDependent(oController.pOperationsChangeWCCombinedDialog);
                    }

                    oController.pOperationsChangeWCCombinedDialog.open();

                    var selectedOperationsCombinedArray = []
                    var selectedOperationsCombinedObject = {}
                    for(var i=0; i<oController.byId("TableCombinedOperations").getSelectedContexts().length; i++){
                        selectedOperationsCombinedObject = oController.byId("TableCombinedOperations").getSelectedContexts()[i].getObject()
                        selectedOperationsCombinedObject.NewMaterial = selectedOperationsCombinedObject.Material
                        selectedOperationsCombinedArray.push(selectedOperationsCombinedObject)
                    }

                    var oTable = oController.byId("OperationsChangeWCCombinedTableId");
                        
                    var oModel = new JSONModel();
                    oModel.setData({ SelectedOperationsChangeWCCombined: selectedOperationsCombinedArray})
                    oTable.setModel(oModel);
                } else if(oController.buttonSelected === "addPhase"){
                    if(oController.pOperationsAddPhaseCombinedDialog === null || oController.pOperationsAddPhaseCombinedDialog === undefined){
                        oController.pOperationsAddPhaseCombinedDialog = sap.ui.xmlfragment(this.getView().getId(), "productioncockpitapp.ext.Fragment.OperationsAddPhaseCombinedDialog", oController);
                        oController.getView().addDependent(oController.pOperationsAddPhaseCombinedDialog);
                    }

                    oController.pOperationsAddPhaseCombinedDialog.open();

                    var selectedOperationsCombinedArray = []
                    var selectedOperationsCombinedObject = {}
                    for(var i=0; i<oController.byId("TableCombinedOperations").getSelectedContexts().length; i++){
                        selectedOperationsCombinedObject = oController.byId("TableCombinedOperations").getSelectedContexts()[i].getObject()
                        selectedOperationsCombinedObject.NewMaterial = selectedOperationsCombinedObject.Material
                        selectedOperationsCombinedArray.push(selectedOperationsCombinedObject)
                    }

                    var oTable = oController.byId("OperationsAddPhaseCombinedTableId");
                        
                    var oModel = new JSONModel();
                    oModel.setData({ SelectedOperationsAddPhaseCombined: selectedOperationsCombinedArray})
                    oTable.setModel(oModel);
                } else if(oController.buttonSelected === "movePhase"){
                    if(oController.byId("TableCombinedOperations").getSelectedContexts().length === 1){
                        if(oController.pOperationsMovePhaseCombinedDialog === null || oController.pOperationsMovePhaseCombinedDialog === undefined){
                            oController.pOperationsMovePhaseCombinedDialog = sap.ui.xmlfragment(this.getView().getId(), "productioncockpitapp.ext.Fragment.OperationsMovePhaseDialog", oController);
                            oController.getView().addDependent(oController.pOperationsMovePhaseCombinedDialog);
                        }

                        oController.pOperationsMovePhaseCombinedDialog.open();

                        var selectedOperationsCombinedArray = []
                        var selectedOperationsCombinedObject = {}
                        for(var i=0; i<oController.byId("TableCombinedOperations").getSelectedContexts().length; i++){
                            selectedOperationsCombinedObject = oController.byId("TableCombinedOperations").getSelectedContexts()[i].getObject()
                            selectedOperationsCombinedObject.NewMaterial = selectedOperationsCombinedObject.Material
                            selectedOperationsCombinedArray.push(selectedOperationsCombinedObject)
                        }

                        var oTable = oController.byId("OperationsMovePhaseTableId");
                            
                        var oModel = new JSONModel();
                        oModel.setData({ SelectedOperationsMovePhase: selectedOperationsCombinedArray})
                        oTable.setModel(oModel);
                    } else {
                        MessageToast.show(oController.getResourceBundle().getText("selectOnlyOneRecord")) 
                    }                    
                } else {                    
                    oController.onDeleteMoveOperationsCombined()
                }
            },

            onCloseOperationsAddPhaseCombinedDialog: function(){
                oController.pOperationsAddPhaseCombinedDialog.close();
            }, 

             onCloseOperationsChangeWCCombinedDialog: function(){
                oController.pOperationsChangeWCCombinedDialog.close();
            }, 

            onCloseOperationsMovePhaseDialog: function(){
                oController.pOperationsMovePhaseCombinedDialog.close();
            }, 

            onDeleteMoveOperationsCombined: function (){
                console.log("onDeleteMoveOperationsCombined");
                var dataToSend = []
                var dataObjectToSend = {}

                for(var i=0; i<this.byId("TableCombinedOperations").getSelectedContexts().length; i++){
                    dataObjectToSend = {}
                    dataObjectToSend.id = "001"                    
                    dataObjectToSend.CprodOrd = oController.byId("TableCombinedOperations").getSelectedContexts()[i].getObject().CprodOrd
                    dataObjectToSend.FshMprodOrd = oController.byId("TableCombinedOperations").getSelectedContexts()[i].getObject().FshMprodOrd
                    dataObjectToSend.matnr_new = oController.byId("TableCombinedOperations").getSelectedContexts()[i].getObject().NewMaterial
                    dataObjectToSend.matnr_old = oController.byId("TableCombinedOperations").getSelectedContexts()[i].getObject().Material
                    dataObjectToSend.charg = oController.byId("TableCombinedOperations").getSelectedContexts()[i].getObject().Batch
                    dataObjectToSend.meins = oController.byId("TableCombinedOperations").getSelectedContexts()[i].getObject().BaseUnit
                    dataObjectToSend.menge = Number(oController.byId("TableCombinedOperations").getSelectedContexts()[i].getObject().TotalConfdQtyForATPInBaseUoM)
                    dataObjectToSend.vornr = oController.byId("TableCombinedOperations").getSelectedContexts()[i].getObject().ManufacturingOrderOperation
                    dataObjectToSend.plnfl = oController.byId("TableCombinedOperations").getSelectedContexts()[i].getObject().ManufacturingOrderSequence
                    dataObjectToSend.note = oController.byId("TableCombinedOperations").getSelectedContexts()[i].getObject().Note
                    dataObjectToSend.reason = oController.byId("TableCombinedOperations").getSelectedContexts()[i].getObject().Reason
                    dataObjectToSend.lgort = oController.byId("TableCombinedOperations").getSelectedContexts()[i].getObject().Lgort1 // o lgort2?
                    dataObjectToSend.werks = oController.byId("TableCombinedOperations").getSelectedContexts()[i].getObject().Plant
                    dataObjectToSend.stk_seg = oController.byId("TableCombinedOperations").getSelectedContexts()[i].getObject().RequirementSegment
                    if(oController.buttonSelected === 'delete'){
                        dataObjectToSend.action = "CANC"
                    } else if(oController.buttonSelected === 'move'){ 
                        dataObjectToSend.action = "SFPF"
                    } else {
                        dataObjectToSend.action = ""
                    }
                    dataToSend.push(dataObjectToSend)
                }

                /*var oBusyDialog = new sap.m.BusyDialog();
                oBusyDialog.open();

                const oModel = oController.getView().getModel();
                var oBindingContext = oModel.bindContext("/Replacement(...)");
                oBindingContext.setParameter("Record", 
                    dataToSend
                );

                if(dataToSend.length > 0){
                    oBindingContext.execute().then((oResult) => {
                        var oContext = oBindingContext.getBoundContext();                            
                        sap.ui.getCore().byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_COMPComponentsPage--TableCombinedComponents-content-innerTable-table").getBinding("rows").refresh()
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
                    if((this.byId("ReplacementCompMasterTableId").getModel().getData().SelectedComponentsMaster[0].QtyToIssue) > 0){
                        oController.openDialogMessageText(oController.getResourceBundle().getText("noDataToSend"), "E");
                    }
                    oBusyDialog.close();
                }*/

            },

            /**
             * Similar to onAfterRendering, but this hook is invoked before the controller's View is re-rendered
             * (NOT before the first rendering! onInit() is used for that one!).
             * @memberOf productioncockpitapp.ext.view.Operations
             */
            //  onBeforeRendering: function() {
            //
            //  },

            /**
             * Called when the View has been rendered (so its HTML is part of the document). Post-rendering manipulations of the HTML could be done here.
             * This hook is the same one that SAPUI5 controls get after being rendered.
             * @memberOf productioncockpitapp.ext.view.Operations
             */
            //  onAfterRendering: function() {
            //
            //  },

            /**
             * Called when the Controller is destroyed. Use this one to free resources and finalize activities.
             * @memberOf productioncockpitapp.ext.view.Operations
             */
            //  onExit: function() {
            //
            //  }
        });
    }
);
