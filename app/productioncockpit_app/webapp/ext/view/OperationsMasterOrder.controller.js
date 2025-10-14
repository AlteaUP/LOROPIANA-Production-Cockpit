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
                this.byId("TableOperations").attachSelectionChange(function (oEvent) {
                    if(oEvent.getParameters().selectedContext.length > 0){
                        oController.byId("productioncockpitapp::ZZ1_C_MASTERORDER_OPEROperationsPage--TableOperations-content::CustomAction::changeWCMasterAction").setEnabled(true);
                        oController.byId("productioncockpitapp::ZZ1_C_MASTERORDER_OPEROperationsPage--TableOperations-content::CustomAction::addPhaseMasterAction").setEnabled(true);
                        oController.byId("productioncockpitapp::ZZ1_C_MASTERORDER_OPEROperationsPage--TableOperations-content::CustomAction::deletePhaseMasterAction").setEnabled(true);
                        oController.byId("productioncockpitapp::ZZ1_C_MASTERORDER_OPEROperationsPage--TableOperations-content::CustomAction::movePhaseMasterAction").setEnabled(true);                        
                    } else {
                        oController.byId("productioncockpitapp::ZZ1_C_MASTERORDER_OPEROperationsPage--TableOperations-content::CustomAction::changeWCMasterAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_C_MASTERORDER_OPEROperationsPage--TableOperations-content::CustomAction::addPhaseMasterAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_C_MASTERORDER_OPEROperationsPage--TableOperations-content::CustomAction::deletePhaseMasterAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_C_MASTERORDER_OPEROperationsPage--TableOperations-content::CustomAction::movePhaseMasterAction").setEnabled(false);                        
                    }
                });
            },

            onCloseOperationsChangeWCMasterDialog: function(){
                oController.pOperationsChangeWCMasterDialog.close();
            },

            onCloseOperationsAddPhaseMasterDialog: function(){
                oController.pOperationsAddPhaseMasterDialog.close();
            },

            onCloseOperationsMovePhaseDialog: function(){
                oController.pOperationsMovePhaseMasterDialog.close();
            },

            onActionOperationMaster: function(oEvent){
                var buttonId = oEvent.getParameters().id.split("::")[oEvent.getParameters().id.split("::").length-1]
                // controllo quale pulsante ho selezionato
                switch(buttonId) {
                case "changeWCMasterAction":
                    // code block
                    oController.buttonSelected = "changeWC"
                    break;
                case "addPhaseMasterAction":
                    // code block
                    oController.buttonSelected = "addPhase"
                    break;
                case "deletePhaseMasterAction":
                    // code block
                    oController.buttonSelected = "deletePhase"
                    break;
                case "movePhaseMasterAction":
                    // code block
                    oController.buttonSelected = "movePhase"
                    break;
                default:
                    // code block
                    oController.buttonSelected = ""
                }
                if(oController.buttonSelected === "changeWC"){
                    if(oController.pOperationsChangeWCMasterDialog === null || oController.pOperationsChangeWCMasterDialog === undefined){
                        oController.pOperationsChangeWCMasterDialog = sap.ui.xmlfragment(this.getView().getId(), "productioncockpitapp.ext.Fragment.OperationsChangeWCMasterDialog", oController);
                        oController.getView().addDependent(oController.pOperationsChangeWCMasterDialog);
                    }

                    oController.pOperationsChangeWCMasterDialog.open();

                    var selectedOperationsMasterArray = []
                    var selectedOperationsMasterObject = {}
                    for(var i=0; i<oController.byId("TableOperations").getSelectedContexts().length; i++){
                        selectedOperationsMasterObject = oController.byId("TableOperations").getSelectedContexts()[i].getObject()
                        selectedOperationsMasterObject.NewMaterial = selectedOperationsMasterObject.Material
                        selectedOperationsMasterArray.push(selectedOperationsMasterObject)
                    }

                    var oTable = oController.byId("OperationsChangeWCMasterTableId");
                        
                    var oModel = new JSONModel();
                    oModel.setData({ SelectedOperationsChangeWCMaster: selectedOperationsMasterArray})
                    oTable.setModel(oModel);
                } else if(oController.buttonSelected === "addPhase"){
                    if(oController.pOperationsAddPhaseMasterDialog === null || oController.pOperationsAddPhaseMasterDialog === undefined){
                        oController.pOperationsAddPhaseMasterDialog = sap.ui.xmlfragment(this.getView().getId(), "productioncockpitapp.ext.Fragment.OperationsAddPhaseMasterDialog", oController);
                        oController.getView().addDependent(oController.pOperationsAddPhaseMasterDialog);
                    }

                    oController.pOperationsAddPhaseMasterDialog.open();

                    var selectedOperationsMasterArray = []
                    var selectedOperationsMasterObject = {}
                    for(var i=0; i<oController.byId("TableOperations").getSelectedContexts().length; i++){
                        selectedOperationsMasterObject = oController.byId("TableOperations").getSelectedContexts()[i].getObject()
                        selectedOperationsMasterObject.NewMaterial = selectedOperationsMasterObject.Material
                        selectedOperationsMasterArray.push(selectedOperationsMasterObject)
                    }

                    var oTable = oController.byId("OperationsAddPhaseMasterTableId");
                        
                    var oModel = new JSONModel();
                    oModel.setData({ SelectedOperationsAddPhaseMaster: selectedOperationsMasterArray})
                    oTable.setModel(oModel);
                } else if(oController.buttonSelected === "movePhase"){ 
                    if(oController.byId("TableOperations").getSelectedContexts().length === 1){
                        if(oController.pOperationsMovePhaseMasterDialog === null || oController.pOperationsMovePhaseMasterDialog === undefined){
                            oController.pOperationsMovePhaseMasterDialog = sap.ui.xmlfragment(this.getView().getId(), "productioncockpitapp.ext.Fragment.OperationsMovePhaseDialog", oController);
                            oController.getView().addDependent(oController.pOperationsMovePhaseMasterDialog);
                        }

                        oController.pOperationsMovePhaseMasterDialog.open();

                        var selectedOperationsMasterArray = []
                        var selectedOperationsMasterObject = {}
                        for(var i=0; i<oController.byId("TableOperations").getSelectedContexts().length; i++){
                            selectedOperationsMasterObject = oController.byId("TableOperations").getSelectedContexts()[i].getObject()
                            selectedOperationsMasterObject.NewMaterial = selectedOperationsMasterObject.Material
                            selectedOperationsMasterArray.push(selectedOperationsMasterObject)
                        }

                        var oTable = oController.byId("OperationsMovePhaseTableId");
                            
                        var oModel = new JSONModel();
                        oModel.setData({ SelectedOperationsMovePhase: selectedOperationsMasterArray})
                        oTable.setModel(oModel);
                    } else {
                        MessageToast.show(oController.getResourceBundle().getText("selectOnlyOneRecord")) 
                    } 
                } else {
                    oController.onDeleteMoveOperationsMaster()
                }
            }

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
