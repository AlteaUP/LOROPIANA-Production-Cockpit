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
                        oController.byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_OPEROperationsPage--TableCombinedOperations-content::CustomAction::modifyPhaseCombAction").setEnabled(true);                        
                    } else {
                        oController.byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_OPEROperationsPage--TableCombinedOperations-content::CustomAction::changeWCCombAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_OPEROperationsPage--TableCombinedOperations-content::CustomAction::addPhaseCombAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_OPEROperationsPage--TableCombinedOperations-content::CustomAction::deletePhaseCombAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_OPEROperationsPage--TableCombinedOperations-content::CustomAction::movePhaseCombAction").setEnabled(false);                        
                        oController.byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_OPEROperationsPage--TableCombinedOperations-content::CustomAction::modifyPhaseCombAction").setEnabled(false);
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
                case "modifyPhaseCombAction":
                    oController.buttonSelected = "modifyPhase"
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

                    if(oController.buttonSelected === "modifyPhase"){
                        oController.pOperationsAddPhaseCombinedDialog.setTitle(oController.getResourceBundle().getText("modifyPhaseCombined"))
                    } else {
                        oController.pOperationsAddPhaseCombinedDialog.setTitle(oController.getResourceBundle().getText("addPhaseCombined"))
                    }
                    oController.pOperationsAddPhaseCombinedDialog.open();

                    var selectedOperationsCombinedArray = []
                    var selectedOperationsCombinedObject = {}
                    for(var i=0; i<oController.byId("TableCombinedOperations").getSelectedContexts().length; i++){
                        selectedOperationsCombinedObject = oController.byId("TableCombinedOperations").getSelectedContexts()[i].getObject()
                        selectedOperationsCombinedObject.NewMaterial = selectedOperationsCombinedObject.Material                        
                        selectedOperationsCombinedObject.editableMaterialGroup = true
                        selectedOperationsCombinedObject.ManufacturingOrderOperationEditable = true
                        selectedOperationsCombinedObject.MfgOrderOperationTextEditable = true
                        selectedOperationsCombinedObject.SupplierEditable = true
                        selectedOperationsCombinedObject.WorkCenterEditable = true
                        selectedOperationsCombinedObject.WorkCenterInternalID_1_TextEditable = true
                        selectedOperationsCombinedObject.OperationControlProfileEditable = true
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
                } else if(oController.buttonSelected === "modifyPhase"){ 
                    if(oController.byId("TableCombinedOperations").getSelectedContexts().length === 1){
                        if(oController.pOperationsAddPhaseCombinedDialog === null || oController.pOperationsAddPhaseCombinedDialog === undefined){
                            oController.pOperationsAddPhaseCombinedDialog = sap.ui.xmlfragment(this.getView().getId(), "productioncockpitapp.ext.Fragment.OperationsAddPhaseCombinedDialog", oController);
                            oController.getView().addDependent(oController.pOperationsAddPhaseCombinedDialog);
                        }

                        if(oController.buttonSelected === "modifyPhase"){
                            oController.pOperationsAddPhaseCombinedDialog.setTitle(oController.getResourceBundle().getText("modifyPhaseCombined"))
                        } else {
                            oController.pOperationsAddPhaseCombinedDialog.setTitle(oController.getResourceBundle().getText("addPhaseCombined"))
                        }

                        oController.pOperationsAddPhaseCombinedDialog.open();

                        var selectedOperationsCombinedArray = []
                        var selectedOperationsCombinedObject = {}
                        for(var i=0; i<oController.byId("TableCombinedOperations").getSelectedContexts().length; i++){
                            selectedOperationsCombinedObject = oController.byId("TableCombinedOperations").getSelectedContexts()[i].getObject()
                            selectedOperationsCombinedObject.NewMaterial = selectedOperationsCombinedObject.Material
                            selectedOperationsCombinedObject.editableMaterialGroup = false
                            selectedOperationsCombinedObject.ManufacturingOrderOperationEditable = false
                            selectedOperationsCombinedObject.MfgOrderOperationTextEditable = false
                            selectedOperationsCombinedObject.SupplierEditable = false
                            selectedOperationsCombinedObject.WorkCenterEditable = false
                            selectedOperationsCombinedObject.WorkCenterInternalID_1_TextEditable = false
                            selectedOperationsCombinedObject.OperationControlProfileEditable = false
                            selectedOperationsCombinedArray.push(selectedOperationsCombinedObject)
                        }

                        var oTable = oController.byId("OperationsAddPhaseCombinedTableId");
                            
                        var oModel = new JSONModel();
                        oModel.setData({ SelectedOperationsAddPhaseCombined: selectedOperationsCombinedArray})
                        oTable.setModel(oModel);
                    } else {
                        MessageToast.show(oController.getResourceBundle().getText("selectOnlyOneRecord")) 
                    } 
                } else {                    
                    oController.onDeleteOperationsCombined()
                }
            },

            onConfirmAddPhaseCombinedDialog: function(){
                var dataToSend = []
                var dataObjectToSend = {}

                var table = this.byId("OperationsAddPhaseCombinedTableId").getModel().oData.SelectedOperationsAddPhaseCombined

                for(var i=0; i<table.length; i++){
                    dataObjectToSend = {}
                    dataObjectToSend.id = "001"                    
                    dataObjectToSend.MasterProductionOrder = table[i].MasterProductionOrder
                    dataObjectToSend.ManufacturingOrderOperation = table[i].ManufacturingOrderOperation
                    dataObjectToSend.WorkCenter = table[i].WorkCenter
                    dataObjectToSend.Plant = table[i].Plant
                    dataObjectToSend.OperationControlProfile = table[i].OperationControlProfile
                    dataObjectToSend.MfgOrderOperationText = table[i].MfgOrderOperationText   
                    dataObjectToSend.MaterialGroup = table[i].MaterialGroup 
                    dataObjectToSend.ManufacturingOrderSequence = table[i].ManufacturingOrderSequence
                    dataObjectToSend.unit = ""//table[i].
                    dataObjectToSend.price = Number(table[i].OpExternalProcessingPrice) //table[i].        
                    if(oController.buttonSelected === "modifyPhase"){
                        dataObjectToSend.action = "UPD"
                    }  else if(oController.buttonSelected === "addPhase"){
                        dataObjectToSend.action = "ADD"
                    }  else {
                        dataObjectToSend.action = "WRK"
                    }
                    dataToSend.push(dataObjectToSend)
                }

                var oBusyDialog = new sap.m.BusyDialog();
                oBusyDialog.open();

                const oModel = oController.getView().getModel();
                var oBindingContext = oModel.bindContext("/ManageODPPhase(...)");
                oBindingContext.setParameter("Record", 
                    dataToSend
                );

                if(dataToSend.length > 0){
                    oBindingContext.execute().then((oResult) => {
                        var oContext = oBindingContext.getBoundContext();                            
                        //oController.byId("TableComponents").getModel().refresh()
                        if(oContext.getObject().value.to_operations[0].flag_error === "true"){
                            oController.openDialogMessageText(oContext.getObject().value.to_operations[0].msg, "E");
                        } else {
                            oController.openDialogMessageText("Operazione completata con successo", "S");
                        }
                        sap.ui.getCore().byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_OPEROperationsPage--TableCombinedOperations-content-innerTable").getModel().refresh()
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
            },
            
            onDeleteOperationsCombined: function(oEvent){
                console.log("onDeleteOperationsCombined");
                var dataToSend = []
                var dataObjectToSend = {}

                var table = this.byId("TableCombinedOperations").getSelectedContexts()

                for(var i=0; i<table.length; i++){
                    dataObjectToSend = {}
                    dataObjectToSend.id = "001"                    
                    dataObjectToSend.MasterProductionOrder = table[i].getObject().MasterProductionOrder
                    dataObjectToSend.ManufacturingOrderOperation = table[i].getObject().ManufacturingOrderOperation
                    dataObjectToSend.WorkCenter = table[i].getObject().WorkCenter
                    dataObjectToSend.Plant = table[i].getObject().Plant
                    dataObjectToSend.OperationControlProfile = table[i].getObject().OperationControlProfile
                    dataObjectToSend.MfgOrderOperationText = table[i].getObject().MfgOrderOperationText  
                    dataObjectToSend.MaterialGroup = table[i].getObject().MaterialGroup 
                    dataObjectToSend.unit = ""//table[i].getObject().
                    dataObjectToSend.ManufacturingOrderSequence = table[i].getObject().ManufacturingOrderSequence
                    //dataObjectToSend.price = Number(table[i].OpExternalProcessingPrice) //table[i].getObject().         
                    dataObjectToSend.action = "DEL"
                    dataToSend.push(dataObjectToSend)
                }

                var oBusyDialog = new sap.m.BusyDialog();
                oBusyDialog.open();

                const oModel = oController.getView().getModel();
                var oBindingContext = oModel.bindContext("/ManageODPPhase(...)");
                oBindingContext.setParameter("Record", 
                    dataToSend
                );

                if(dataToSend.length > 0){
                    oBindingContext.execute().then((oResult) => {
                        var oContext = oBindingContext.getBoundContext();     
                        if(oContext.getObject().value.to_operations[0].flag_error === "true"){
                            oController.openDialogMessageText(oContext.getObject().value.to_operations[0].msg, "E");
                        } else {
                            oController.openDialogMessageText("Operazione completata con successo", "S");
                        }                    
                        //oController.byId("TableComponents").getModel().refresh()
                        //sap.ui.getCore().byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_OPEROperationsPage--TableCombinedOperations-content-innerTable").getModel().refresh()
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

            onConfirmOperationsMovePhaseDialog: function(){
                console.log("onConfirmOperationsMovePhaseDialog");
                var dataToSend = []
                var dataObjectToSend = {}

                for(var i=0; i<this.byId("OperationsMovePhaseTableId").getItems().length; i++){
                    var path = this.byId("OperationsMovePhaseTableId").getItems()[i].getBindingContext().sPath
                    var object = this.byId("OperationsMovePhaseTableId").getModel().getObject(path)
                    dataObjectToSend = {}
                    dataObjectToSend.id = String(i+1).padStart(3, "0");//"001"                    
                    dataObjectToSend.CprodOrd = object.CprodOrd
                    dataObjectToSend.FshMprodOrd = object.MasterProductionOrder
                    dataObjectToSend.matnr = object.Product
                    dataObjectToSend.werks = object.Plant
                    dataObjectToSend.meins = object.ProductionUnit
                    dataObjectToSend.yield = Number(object.QtyToConfirm)
                    /*dataObjectToSend.scrap = Number(object.QtyToDiscard)
                    dataObjectToSend.rework = Number(object.QtyToRework)*/
                    dataObjectToSend.vornr = object.ManufacturingOrderOperation
                    dataObjectToSend.plnfl = object.ManufacturingOrderSequence
                    /*if(oController.byId("generateWIPbatchCheckBoxId").getSelected()){
                        dataObjectToSend.flwip = "X"
                    } else {
                        dataObjectToSend.flwip = ""
                    }
                    dataObjectToSend.reason = object.Reason*/
                    dataToSend.push(dataObjectToSend)
                }

                var oBusyDialog = new sap.m.BusyDialog();
                oBusyDialog.open();

                const oModel = oController.getView().getModel();
                var oBindingContext = oModel.bindContext("/ConfODP(...)");
                oBindingContext.setParameter("Record", 
                    dataToSend
                );

                if(dataToSend.length > 0){
                    oBindingContext.execute().then((oResult) => {
                        var oContext = oBindingContext.getBoundContext(); 
                        if(oContext.getObject().value.indexOf("Error") > -1){
                            oController.openDialogMessageText(oContext.getObject().value, "E");
                        } else {
                            oController.openDialogMessageText(oContext.getObject().value, "S");
                        }
                        //MessageToast.show(oController.getResourceBundle().getText("done"))                            
                        //sap.ui.getCore().byId("productioncockpitapp::ZZ1_C_COMBINEDORDER_COMPComponentsPage--TableCombinedComponents-content-innerTable-table").getBinding("rows").refresh()
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

            onValueHelpRequestWorkCenters: function (oEvent) {
                //this.byId("shippingPointID").setValue();
                if(oController.pWorkCentersDialog === null || oController.pWorkCentersDialog === undefined){
                    oController.pWorkCentersDialog = sap.ui.xmlfragment(this.getView().getId(), "productioncockpitapp.ext.Fragment.WorkCentersList",
                    oController);
                    oController.getView().addDependent(oController.pWorkCentersDialog);
                }

                var oInput = oEvent.getSource();
                oController._oWorkCenterContext = oInput.getBindingContext();

                oController.pWorkCentersDialog.open();
            },

            onValueHelpWorkCentersConfirm: function(oEvent){
                var oSelectedItem = oEvent.getParameter("selectedItem");
                oEvent.getSource().getBinding("items").filter([]);

                if (!oSelectedItem) {
                    return;
                }

                var oModel = oController._oWorkCenterContext.getModel();
                var sPath = oController._oWorkCenterContext.getPath();

                // Valori scelti nel SelectDialog
                var sWorkCenter = oSelectedItem.getTitle();
                var sWorkCenterText = oSelectedItem.getDescription();

                // Scrivo nel modello → la tabella si aggiorna da sola
                oModel.setProperty(sPath + "/WorkCenter", sWorkCenter);
                oModel.setProperty(sPath + "/WorkCenterInternalID_1_Text", sWorkCenterText);

            },

            onValueHelpWorkCentersClose: function(oEvent){
                oController.pWorkCentersDialog.close();
            },

            onValueHelpWorkCentersSearch: function(oEvent){
                var sValue = oEvent.getParameter("value");
			    var oFilter = new sap.ui.model.Filter("workcentertext", sap.ui.model.FilterOperator.Contains, sValue);

			    oEvent.getSource().getBinding("items").filter([oFilter]);
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
