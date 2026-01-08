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
                this.byId("TableKitting").attachSelectionChange(function (oEvent) {
                    if(oEvent.getParameters().selectedContext.length > 0){
                        oController.byId("productioncockpitapp::ZZ1_C_MASTERORDER_COMPKittingPage--TableKitting-content::CustomAction::saveKittingMasterAction").setEnabled(true);
                    } else {
                        oController.byId("productioncockpitapp::ZZ1_C_MASTERORDER_COMPKittingPage--TableKitting-content::CustomAction::saveKittingMasterAction").setEnabled(false);                       
                    }
                });
            },

            onAfterRendering: function() {                
                sap.ui.getCore().byId("productioncockpitapp::ZZ1_C_MASTERORDER_COMPKittingPage--FilterBarMasterKitting-content-btnSearch").firePress()
            },

            modifyDataBeforeRebind: function(oEvent){

                var oMDCTable = this.byId("TableKitting").getMDCTable();

                /*var intervalId = setInterval(function() {
                    var aRows = oMDCTable._oTable.getRows();
                    if (aRows.length > 0 && aRows[0].getCells()[3].getContent() !== undefined) {
                        // Cella pronta, applica editMode
                        aRows.forEach(function(oRow) {
                            oRow.getCells()[3].getContent().setEditMode(true);
                        });
                        clearInterval(intervalId); // ferma il polling
                    }
                }, 100); */   
                
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
                    for(var i=0; i<oController.byId("TableMaster").getSelectedContexts().length; i++){
                        selectedComponentsMasterObject = oController.byId("TableMaster").getSelectedContexts()[i].getObject()
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
                        //oController.byId("TableMaster").getModel().refresh()
                        sap.ui.getCore().byId("productioncockpitapp::ZZ1_C_MASTERORDER_COMPComponentsPage--TableMaster-content-innerTable").getBinding("rows").refresh()
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

                for(var i=0; i<this.byId("TableMaster").getSelectedContexts().length; i++){
                    dataObjectToSend = {}
                    dataObjectToSend.id = "001"                    
                    dataObjectToSend.CprodOrd = oController.byId("TableMaster").getSelectedContexts()[i].getObject().CprodOrd
                    dataObjectToSend.FshMprodOrd = oController.byId("TableMaster").getSelectedContexts()[i].getObject().FshMprodOrd
                    dataObjectToSend.matnr_new = oController.byId("TableMaster").getSelectedContexts()[i].getObject().NewMaterial
                    dataObjectToSend.matnr_old = oController.byId("TableMaster").getSelectedContexts()[i].getObject().Material
                    dataObjectToSend.charg = oController.byId("TableMaster").getSelectedContexts()[i].getObject().Batch
                    dataObjectToSend.meins = oController.byId("TableMaster").getSelectedContexts()[i].getObject().BaseUnit
                    dataObjectToSend.menge = Number(oController.byId("TableMaster").getSelectedContexts()[i].getObject().TotalConfdQtyForATPInBaseUoM)
                    dataObjectToSend.vornr = oController.byId("TableMaster").getSelectedContexts()[i].getObject().ManufacturingOrderOperation
                    dataObjectToSend.plnfl = oController.byId("TableMaster").getSelectedContexts()[i].getObject().ManufacturingOrderSequence
                    dataObjectToSend.note = oController.byId("TableMaster").getSelectedContexts()[i].getObject().Note
                    dataObjectToSend.reason = oController.byId("TableMaster").getSelectedContexts()[i].getObject().Reason
                    dataObjectToSend.lgort = oController.byId("TableMaster").getSelectedContexts()[i].getObject().Lgort1 // o lgort2?
                    dataObjectToSend.werks = oController.byId("TableMaster").getSelectedContexts()[i].getObject().Plant
                    dataObjectToSend.stk_seg = oController.byId("TableMaster").getSelectedContexts()[i].getObject().RequirementSegment
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
                        sap.ui.getCore().byId("productioncockpitapp::ZZ1_C_MASTERORDER_COMPComponentsPage--TableMaster-content-innerTable").getBinding("rows").refresh()
                        oBusyDialog.close();
                        //oController.byId("TableMaster").getModel().refresh()
                        
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

            onActionSaveKittingMaster: async function() {
                if(oController.pKittingMasterDialog === null || oController.pKittingMasterDialog === undefined){
                    oController.pKittingMasterDialog = sap.ui.xmlfragment(this.getView().getId(), "productioncockpitapp.ext.Fragment.KittingMasterDialog", oController);
                    oController.getView().addDependent(oController.pKittingMasterDialog);
                }

                oController.pKittingMasterDialog.open();

                var selectedKittingMasterArray = []
                var selectedKittingMasterObject = {}
                for(var i=0; i<oController.byId("TableKitting").getSelectedContexts().length; i++){
                    selectedKittingMasterObject = oController.byId("TableKitting").getSelectedContexts()[i].getObject()
                    selectedKittingMasterArray.push(selectedKittingMasterObject)
                }

                var oTable = oController.byId("KittingMasterTableId");
                    
                var oModel = new JSONModel();
                oModel.setData({ SelectedMasterKitting: selectedKittingMasterArray})
                oTable.setModel(oModel);
            },

            onCloseKittingMasterDialog: function(){
                oController.pKittingMasterDialog.close();
            },

            onConfirmKittingMasterDialog: async function() {
                var objectToCreateMaterialDocument = {}
                var arrayToKitting = []
                var oBusyDialog = new sap.m.BusyDialog();

                for(var i=0; i<oController.byId("KittingMasterTableId").getItems().length; i++){
                    var path = this.byId("KittingMasterTableId").getItems()[i].getBindingContext().sPath
                    var object = this.byId("KittingMasterTableId").getModel().getObject(path)
                    objectToCreateMaterialDocument = {}
                    //objectToCreateMaterialDocument = oController.byId("TableKitting").getSelectedContexts()[i].getObject()
                    objectToCreateMaterialDocument.id = String(i+1).padStart(3, "0");
                    objectToCreateMaterialDocument.matnr = object.Material
                    objectToCreateMaterialDocument.werks = object.Plant
                    objectToCreateMaterialDocument.charg = object.Batch
                    objectToCreateMaterialDocument.master_order = object.FshMprodOrd
                    objectToCreateMaterialDocument.combined_order = ""
                    objectToCreateMaterialDocument.meins = object.EntryUnit
                    objectToCreateMaterialDocument.menge = parseFloat(object.TotalWithdrawnQuantity)
                    objectToCreateMaterialDocument.lgort = object.StorageLocation
                    arrayToKitting.push(objectToCreateMaterialDocument)
                }

                const oModel = oController.getView().getModel();
                var oBindingContext = oModel.bindContext("/DoKitting(...)");

                oBindingContext.setParameter("Record", 
                    arrayToKitting
                );

                if(arrayToKitting.length > 0){                    
                    oBusyDialog.open();
                    oBindingContext.execute().then((oResult) => {
                        var oContext = oBindingContext.getBoundContext(); 
                        oBusyDialog.close();
                        oController.pKittingMasterDialog.close();
                        // TODO - gestione errore 
                        if(oContext.getObject().value.to_prod_ord[0].flag_error === 'true'){
                            var error = oContext.getObject().value.to_prod_ord[0].msg
                            if(error.indexOf("#") > -1){
                                var errorArray = error.split("#")
                                var message = ""
                                for(var p=0; p<errorArray.length; p++){
                                    if(errorArray[p] !== ""){
                                        if(message === ""){
                                            message = errorArray[p]
                                        } else {
                                            message = message + ", " +errorArray[p]
                                        }                                                    
                                    }
                                }
                                oController.openDialogMessageText(message, "E");
                            } else {
                                oController.openDialogMessageText(error, "E");
                            }
                        } else {
                            oController.openDialogMessageText("Operazione completata con successo", "S"); 
                        }                                                 
                        
                    }).catch((oError) => {
                        oBusyDialog.close();
                        // TODO - gestione errore
                        if(oError.error === undefined || oError.error === null){
                            oController.openDialogMessageText(oError, "E");
                        } else {
                            oController.openDialogMessageText(oError.error.message, "E");
                        }
                        return
                    });
                } else {
                    //MessageToast.show(oController.getResourceBundle().getText("noDataToSendforMaterialDocument"))
                    oController.openDialogMessageText(oController.getResourceBundle().getText("noDataToSendforKitting"), "E");
                    oBusyDialog.close();
                }
            }
        });
    }
);
