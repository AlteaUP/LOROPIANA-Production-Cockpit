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
                        oController.byId("productioncockpitapp::ZZ1_C_MASTERORDER_OPEROperationsPage--TableOperations-content::CustomAction::modifyPhaseMasterAction").setEnabled(true);                        
                    } else {
                        oController.byId("productioncockpitapp::ZZ1_C_MASTERORDER_OPEROperationsPage--TableOperations-content::CustomAction::changeWCMasterAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_C_MASTERORDER_OPEROperationsPage--TableOperations-content::CustomAction::addPhaseMasterAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_C_MASTERORDER_OPEROperationsPage--TableOperations-content::CustomAction::deletePhaseMasterAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_C_MASTERORDER_OPEROperationsPage--TableOperations-content::CustomAction::movePhaseMasterAction").setEnabled(false);                        
                        oController.byId("productioncockpitapp::ZZ1_C_MASTERORDER_OPEROperationsPage--TableOperations-content::CustomAction::modifyPhaseMasterAction").setEnabled(false);
                    }
                });
            },

            loadTableData: function(oEvent){
                var mBindingParams = oEvent.getParameter("collectionBindingInfo");
                //Event handlers for the binding
                mBindingParams.collectionBindingInfo.events = {
                    "dataReceived" : function(oEvent){
                        var aReceivedData = oEvent.getParameter('data');

                        // modifica DL - 16/12/2025 - colore righe se operazione chiusa e tolgo selezione
                        var oMDCTable = oController.byId("TableOperations").getMDCTable();

                        var intervalId = setInterval(function() {
                            var aRows = oMDCTable._oTable.getRows();
                            if (aRows.length > 0) {
                                // Cella pronta, applica editMode
                                aRows.forEach(function(oRow) {
                                    // rimuovo classi precedenti
                                    oRow.removeStyleClass("grayBackground");
                                    
                                    if(oRow.getBindingContext() !== null){
                                        if(oRow.getBindingContext().getProperty("OperationIsDeleted") === "X"){
                                            oRow.addStyleClass("grayBackground");
                                            /*var idToRemove = oRow.getId() + "-selectMulti"
                                            sap.ui.getCore().byId(idToRemove).setVisible(false)*/
                                            var parentId = oRow.getParent().getId()
                                            var countRow = oRow.getId().substring(oRow.getId().length-1,oRow.getId().length)
                                            var idToRemove = parentId + "-rowsel" + countRow
                                            document.getElementById(idToRemove).style.visibility = "hidden";
                                        }  
                                    }                               
                    
                                });
                                clearInterval(intervalId); // ferma il polling
                            }
                        }, 100); 
                        // modifica DL - 16/12/2025 - colore righe se operazione chiusa e tolgo selezione - FINE

                        // gestione errore
                        if(oEvent.mParameters.error !== undefined && oEvent.mParameters.error !== null){
                            oController.openDialogMessageText(oEvent.mParameters.error.message , "E");
                        }
                        },
                        //More event handling can be done here
                };                

                //delete mBindingParams.collectionBindingInfo.parameters.$$getKeepAliveContext
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
                        if(oContext.getObject().value.to_confodp[0].fl_err_o){
                            oController.openDialogMessageText(oContext.getObject().value.to_confodp[0].log_mess_o, "E");
                        } else {
                            oController.openDialogMessageText(oContext.getObject().value.to_confodp[0].log_mess_o, "S");
                        }
                         setTimeout(() => {
                            sap.ui.getCore().byId("productioncockpitapp::ZZ1_C_MASTERORDER_OPEROperationsPage--TableOperations-content-innerTable").getBinding("rows").refresh()
                        }, 1000);
                        sap.ui.getCore().byId("productioncockpitapp::ZZ1_C_MASTERORDER_OPEROperationsPage--TableOperations").getMDCTable().clearSelection()
                        oController.pOperationsMovePhaseMasterDialog.close()
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
               /*var oModel = this.getView().getModel();

                var payload = {
                    id: "001",
                    to_confodp: dataToSend
                };

                oBusyDialog.open();

                oModel.callFunction("/MovePhase", {
                    method: "POST",
                    urlParameters: payload,
                    success: function(oData, response) {
                        // ✅ Qui hai il risultato della Action
                        if(oData.status === "Error") {
                            oController.openDialogMessageText(oData.message, "E");
                        } else {
                            oController.openDialogMessageText(oData.message || "Operazione completata", "S");
                        }
                        oBusyDialog.close();
                    },
                    error: function(oError) {
                        oController.openDialogMessageText(oError.message || "Errore sconosciuto", "E");
                        oBusyDialog.close();
                    }
                });*/
            },

            onActionOperationMaster: async function(oEvent){
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
                case "modifyPhaseMasterAction":
                    oController.buttonSelected = "modifyPhase"
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

                    if(oController.buttonSelected === "modifyPhase"){
                        oController.pOperationsAddPhaseMasterDialog.setTitle(oController.getResourceBundle().getText("modifyPhaseMaster"))
                    } else {
                        oController.pOperationsAddPhaseMasterDialog.setTitle(oController.getResourceBundle().getText("addPhaseMaster"))
                    }

                    oController.pOperationsAddPhaseMasterDialog.open();

                    var selectedOperationsMasterArray = []
                    var selectedOperationsMasterObject = {}
                    for(var i=0; i<oController.byId("TableOperations").getSelectedContexts().length; i++){
                        selectedOperationsMasterObject = oController.byId("TableOperations").getSelectedContexts()[i].getObject()
                        selectedOperationsMasterObject.NewMaterial = selectedOperationsMasterObject.Material
                        selectedOperationsMasterObject.MaterialGroupEditable = true
                        selectedOperationsMasterObject.ManufacturingOrderOperationEditable = true
                        selectedOperationsMasterObject.MfgOrderOperationTextEditable = true
                        selectedOperationsMasterObject.SupplierEditable = true
                        selectedOperationsMasterObject.WorkCenterEditable = true
                        selectedOperationsMasterObject.WorkCenterInternalID_1_TextEditable = true
                        selectedOperationsMasterObject.OperationControlProfileEditable = true
                        selectedOperationsMasterArray.push(selectedOperationsMasterObject)
                    }

                    var oTable = oController.byId("OperationsAddPhaseMasterTableId");
                        
                    var oModel = new JSONModel();
                    oModel.setData({ SelectedOperationsAddPhaseMaster: selectedOperationsMasterArray})
                    oTable.setModel(oModel);
                } else if(oController.buttonSelected === "modifyPhase"){ 
                    if(oController.byId("TableOperations").getSelectedContexts().length === 1){
                        if(oController.pOperationsAddPhaseMasterDialog === null || oController.pOperationsAddPhaseMasterDialog === undefined){
                            oController.pOperationsAddPhaseMasterDialog = sap.ui.xmlfragment(this.getView().getId(), "productioncockpitapp.ext.Fragment.OperationsAddPhaseMasterDialog", oController);
                            oController.getView().addDependent(oController.pOperationsAddPhaseMasterDialog);
                        }

                        if(oController.buttonSelected === "modifyPhase"){
                            oController.pOperationsAddPhaseMasterDialog.setTitle(oController.getResourceBundle().getText("modifyPhaseMaster"))
                        } else {
                            oController.pOperationsAddPhaseMasterDialog.setTitle(oController.getResourceBundle().getText("addPhaseMaster"))
                        }

                        oController.pOperationsAddPhaseMasterDialog.open();

                        var selectedOperationsMasterArray = []
                        var selectedOperationsMasterObject = {}
                        for(var i=0; i<oController.byId("TableOperations").getSelectedContexts().length; i++){
                            selectedOperationsMasterObject = oController.byId("TableOperations").getSelectedContexts()[i].getObject()
                            selectedOperationsMasterObject.NewMaterial = selectedOperationsMasterObject.Material
                            selectedOperationsMasterObject.MaterialGroupEditable = false
                            selectedOperationsMasterObject.ManufacturingOrderOperationEditable = false
                            selectedOperationsMasterObject.MfgOrderOperationTextEditable = false
                            selectedOperationsMasterObject.SupplierEditable = false
                            selectedOperationsMasterObject.WorkCenterEditable = false
                            selectedOperationsMasterObject.WorkCenterInternalID_1_TextEditable = false
                            selectedOperationsMasterObject.OperationControlProfileEditable = false
                            selectedOperationsMasterArray.push(selectedOperationsMasterObject)
                        }

                        var oTable = oController.byId("OperationsAddPhaseMasterTableId");
                            
                        var oModel = new JSONModel();
                        oModel.setData({ SelectedOperationsAddPhaseMaster: selectedOperationsMasterArray})
                        oTable.setModel(oModel);
                    } else {
                        MessageToast.show(oController.getResourceBundle().getText("selectOnlyOneRecord")) 
                    } 
                } else if(oController.buttonSelected === "movePhase"){ 
                    if(oController.byId("TableOperations").getSelectedContexts().length === 1){
                        if(oController.pOperationsMovePhaseMasterDialog === null || oController.pOperationsMovePhaseMasterDialog === undefined){
                            oController.pOperationsMovePhaseMasterDialog = sap.ui.xmlfragment(this.getView().getId(), "productioncockpitapp.ext.Fragment.OperationsMovePhaseDialog", oController);
                            oController.getView().addDependent(oController.pOperationsMovePhaseMasterDialog);
                        }

                        oController.pOperationsMovePhaseMasterDialog.open();

                        // chiamo action per recupero dettagli del materiale
                        var oBusyDialog = new sap.m.BusyDialog();
                        oBusyDialog.open();

                        var dataToSend = {}
                        dataToSend.MasterProductionOrder = oController.byId("TableOperations").getSelectedContexts()[0].getObject().MasterProductionOrder
                        dataToSend.ManufacturingOrderSequence = oController.byId("TableOperations").getSelectedContexts()[0].getObject().ManufacturingOrderSequence
                        dataToSend.ManufacturingOrderOperation = oController.byId("TableOperations").getSelectedContexts()[0].getObject().ManufacturingOrderOperation
                        dataToSend.sumOpTotalConfirmedYieldQty = oController.byId("TableOperations").getSelectedContexts()[0].getObject().SumOpTotalConfirmedYieldQty
                        dataToSend.sumOpTotalConfirmedReworkQty = oController.byId("TableOperations").getSelectedContexts()[0].getObject().SumOpTotalConfirmedReworkQty
                        dataToSend.sumOpTotalConfirmedScrapQty = oController.byId("TableOperations").getSelectedContexts()[0].getObject().SumOpTotalConfirmedScrapQty

                        const oModelView = oController.getView().getModel();
                        var oBindingContext = oModelView.bindContext("/GetMaterialDetails(...)");
                        oBindingContext.setParameter("oidOrdine", 
                            dataToSend                            
                        );

                        await oBindingContext.execute().then((oResult) => {
                            var oContext = oBindingContext.getBoundContext(); 
                            var selectedOperationsMasterArray = []
                            var selectedOperationsMasterObject = {}                           
                            if(oContext.getObject().value.length > 0){
                                for(var p=0; p<oContext.getObject().value.length; p++){
                                    selectedOperationsMasterObject = oContext.getObject().value[p]
                                    //selectedOperationsMasterObject.CrossPlantConfigurableProduct = oContext.getObject().value[p].matnr
                                    //selectedOperationsMasterObject.zztagliadesc = oContext.getObject().value[p].zztagliadesc
                                    //selectedOperationsMasterObject.zzcolor = oContext.getObject().value[p].zzcolor
                                    selectedOperationsMasterObject.QtyToConfirm = Number(selectedOperationsMasterObject.MfgOrderPlannedTotalQty) - Number(selectedOperationsMasterObject.MfgOrderConfirmedYieldQty) - Number(selectedOperationsMasterObject.MfgOrderConfirmedScrapQty)
                                    selectedOperationsMasterArray.push(selectedOperationsMasterObject)
                                }
                            }
                            var oTable = oController.byId("OperationsMovePhaseTableId");
                            
                            var oModel = new JSONModel();
                            oModel.setData({ SelectedOperationsMovePhase: selectedOperationsMasterArray})
                            oTable.setModel(oModel);

                            oBusyDialog.close();
                            
                        }).catch((oError) => {
                            oBusyDialog.close();
                            if(oError.error !== undefined && oError.error !== null){
                                oController.openDialogMessageText(oError.error.message, "E");
                            } else {
                                oController.openDialogMessageText(oError, "E");
                            }
                        });
                        

                        /*var selectedOperationsMasterArray = []
                        var selectedOperationsMasterObject = {}
                        for(var i=0; i<oController.byId("TableOperations").getSelectedContexts().length; i++){
                            selectedOperationsMasterObject = oController.byId("TableOperations").getSelectedContexts()[i].getObject()
                            selectedOperationsMasterObject.NewMaterial = selectedOperationsMasterObject.Material
                            selectedOperationsMasterObject.QtyToConfirm = Number(selectedOperationsMasterObject.SumOpPlannedTotalQuantity) - Number(selectedOperationsMasterObject.SumOpTotalConfirmedYieldQty) - Number(selectedOperationsMasterObject.SumOpTotalConfirmedScrapQty)
                            selectedOperationsMasterArray.push(selectedOperationsMasterObject)
                        }

                        var oTable = oController.byId("OperationsMovePhaseTableId");
                            
                        var oModel = new JSONModel();
                        oModel.setData({ SelectedOperationsMovePhase: selectedOperationsMasterArray})
                        oTable.setModel(oModel);*/
                    } else {
                        MessageToast.show(oController.getResourceBundle().getText("selectOnlyOneRecord")) 
                    } 
                } else {
                    oController.onDeleteOperationsMaster()
                }
            },

            onConfirmAddPhaseMasterDialog: function(oEvent){
                var dataToSend = []
                var dataObjectToSend = {}

                var table 
                if(this.byId("OperationsAddPhaseMasterTableId") === null || this.byId("OperationsAddPhaseMasterTableId") === undefined){
                    table = this.byId("OperationsChangeWCMasterTableId").getModel().oData.SelectedOperationsChangeWCMaster
                } else {
                    table = this.byId("OperationsAddPhaseMasterTableId").getModel().oData.SelectedOperationsAddPhaseMaster
                }

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
                    dataObjectToSend.unit = ""//table[i].
                    dataObjectToSend.price = Number(table[i].OpExternalProcessingPrice) //table[i].
                    dataObjectToSend.ManufacturingOrderSequence = table[i].ManufacturingOrderSequence
                    if(oController.buttonSelected === "modifyPhase"){
                        dataObjectToSend.action = "UPD"
                    } else if(oController.buttonSelected === "addPhase"){
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
                        if(oContext.getObject().value.to_operations[0].flag_error === "true"){
                            oController.openDialogMessageText(oContext.getObject().value.to_operations[0].msg, "E");
                        } else {
                            oController.openDialogMessageText(oController.getResourceBundle().getText("operationCompletedSuccefully"), "S");
                        }
                        setTimeout(() => {
                            sap.ui.getCore().byId("productioncockpitapp::ZZ1_C_MASTERORDER_OPEROperationsPage--TableOperations-content-innerTable").getBinding("rows").refresh()
                        }, 1000);
                        sap.ui.getCore().byId("productioncockpitapp::ZZ1_C_MASTERORDER_OPEROperationsPage--TableOperations").getMDCTable().clearSelection()
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
                if(oController.buttonSelected === "addPhase"){
                    oController.pOperationsAddPhaseMasterDialog.close()
                } else if(oController.buttonSelected === "modifyPhase"){
                    oController.pOperationsAddPhaseMasterDialog.close()
                }  else {
                    oController.pOperationsChangeWCMasterDialog.close()
                }             
            },

            onDeleteOperationsMaster: function(oEvent){
                console.log("onDeleteOperationsMaster");
                var dataToSend = []
                var dataObjectToSend = {}

                var table = this.byId("TableOperations").getSelectedContexts()

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
                    dataObjectToSend.ManufacturingOrderSequence = table[i].getObject().ManufacturingOrderSequence
                    dataObjectToSend.unit = ""//table[i].getObject().
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
                            oController.openDialogMessageText(oController.getResourceBundle().getText("operationCompletedSuccefully"), "S");
                        }                     
                        setTimeout(() => {
                            sap.ui.getCore().byId("productioncockpitapp::ZZ1_C_MASTERORDER_OPEROperationsPage--TableOperations-content-innerTable").getBinding("rows").refresh()
                        }, 1000);
                        sap.ui.getCore().byId("productioncockpitapp::ZZ1_C_MASTERORDER_OPEROperationsPage--TableOperations").getMDCTable().clearSelection()
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

            openDialogMessageText: function (text, messType) {
                var vTitle = "Message";
                var vState = "Error";
    
                if (messType === "E") {
                    vTitle = this.getResourceBundle().getText("errorTitle");
                    vState = "Error";
                } else
                    if (messType === "S") {
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

                // recupero indice della righe selezionata e poi filtro 
                var index = oEvent.getSource().getId().split("-")[oEvent.getSource().getId().split("-").length-1]
                var currentPlant = oController.byId("productioncockpitapp::ZZ1_C_MASTERORDER_OPEROperationsPage--OperationsChangeWCMasterTableId").getBinding("items").getContexts()[index].getObject().Plant
                var aFilters = [new sap.ui.model.Filter("plant", sap.ui.model.FilterOperator.EQ, currentPlant)];
                oController.byId("selectWorkCentersDialog").getBinding("items").filter(aFilters)

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
