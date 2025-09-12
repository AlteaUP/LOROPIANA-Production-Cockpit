sap.ui.define(
    [
        'sap/fe/core/PageController',
        "sap/m/Dialog",
        'sap/m/MessageToast'
    ],
    function(PageController, Dialog, MessageToast) {
        'use strict';

        var oController;
        var dataOrderTable;
        var dataMasterTable;

        return PageController.extend('productioncockpitapp.ext.main.Main', {
            /**
             * Called when a controller is instantiated and its View controls (if available) are already created.
             * Can be used to modify the View before it is displayed, to bind event handlers and do other one-time initialization.
             * @memberOf productioncockpitapp.ext.main.Main
             */
            onInit: function () {
            //      PageController.prototype.onInit.apply(this, arguments); // needs to be called to properly initialize the page controller
                this.byId("IconTabFilterId").setSelectedKey("master");
                oController = this;
            //      PageController.prototype.onInit.apply(this, arguments); // needs to be called to properly initialize the page controller
                this.byId("IconTabFilterId").setSelectedKey("master");
                this.byId("Table1").attachSelectionChange(function (oEvent) {
                    if(oEvent.getParameters().selectedContext.length > 0){
                        oController.byId("productioncockpitapp::ZZ1_I_COMBPRODORDAPIMain--Table1-content::CustomAction::componentsAction").setEnabled(true);
                        oController.byId("productioncockpitapp::ZZ1_I_COMBPRODORDAPIMain--Table1-content::CustomAction::operationsAction").setEnabled(true);
                    } else {
                        oController.byId("productioncockpitapp::ZZ1_I_COMBPRODORDAPIMain--Table1-content::CustomAction::componentsAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_I_COMBPRODORDAPIMain--Table1-content::CustomAction::operationsAction").setEnabled(false);
                    }
                });
                this.byId("Table2").attachSelectionChange(function (oEvent) {
                    if(oEvent.getParameters().selectedContext.length > 0){
                        oController.byId("productioncockpitapp::ZZ1_I_COMBPRODORDAPIMain--Table2-content::CustomAction::releaseOrderAction").setEnabled(true);
                        oController.byId("productioncockpitapp::ZZ1_I_COMBPRODORDAPIMain--Table2-content::CustomAction::technicalCompleteOrderAction").setEnabled(true);
                        oController.byId("productioncockpitapp::ZZ1_I_COMBPRODORDAPIMain--Table2-content::CustomAction::closeOrderAction").setEnabled(true);
                        oController.byId("productioncockpitapp::ZZ1_I_COMBPRODORDAPIMain--Table2-content::CustomAction::componentsCombinedAction").setEnabled(true);
                        oController.byId("productioncockpitapp::ZZ1_I_COMBPRODORDAPIMain--Table2-content::CustomAction::operationsCombinedAction").setEnabled(true);
                    } else {
                        oController.byId("productioncockpitapp::ZZ1_I_COMBPRODORDAPIMain--Table2-content::CustomAction::releaseOrderAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_I_COMBPRODORDAPIMain--Table2-content::CustomAction::technicalCompleteOrderAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_I_COMBPRODORDAPIMain--Table2-content::CustomAction::closeOrderAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_I_COMBPRODORDAPIMain--Table2-content::CustomAction::componentsCombinedAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_I_COMBPRODORDAPIMain--Table2-content::CustomAction::operationsCombinedAction").setEnabled(false);
                    }
                });
                this.byId("Table").attachSelectionChange(function (oEvent) {
                    if(oEvent.getParameters().selectedContext.length > 0){
                        oController.byId("productioncockpitapp::ZZ1_I_COMBPRODORDAPIMain--Table-content::CustomAction::componentsOrderAction").setEnabled(true);
                        oController.byId("productioncockpitapp::ZZ1_I_COMBPRODORDAPIMain--Table-content::CustomAction::operationsOrderAction").setEnabled(true);
                    } else {
                        oController.byId("productioncockpitapp::ZZ1_I_COMBPRODORDAPIMain--Table-content::CustomAction::componentsOrderAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_I_COMBPRODORDAPIMain--Table-content::CustomAction::operationsOrderAction").setEnabled(false);
                    }
                });
                //this.byId("productioncockpitapp::ZZ1_I_COMBPRODORDAPIMain--Table-content").setSelectionMode("Multi")
                //this.byId("productioncockpitapp::ZZ1_I_COMBPRODORDAPIMain--Table2-content").setSelectionMode("Multi")
            },

            /**
             * Similar to onAfterRendering, but this hook is invoked before the controller's View is re-rendered
             * (NOT before the first rendering! onInit() is used for that one!).
             * @memberOf productioncockpitapp.ext.main.Main
             */
            //  onBeforeRendering: function() {
            //
            //  },

            /**
             * Called when the View has been rendered (so its HTML is part of the document). Post-rendering manipulations of the HTML could be done here.
             * This hook is the same one that SAPUI5 controls get after being rendered.
             * @memberOf productioncockpitapp.ext.main.Main
             */
            onAfterRendering: function() {                
                sap.ui.getCore().byId("productioncockpitapp::ZZ1_I_COMBPRODORDAPIMain--FilterBarMaster-content-btnSearch").firePress()
                // recupero dati tabella ordini
                var oTable = this.byId("Table");
                var oBinding = oTable.getRowBinding()
                oBinding.requestContexts(0, 10000).then(function(aContexts) {
                    dataOrderTable = aContexts.map(ctx => ctx.getObject());
                    console.log("Order Table length "+dataOrderTable.length)
                });
                // recupero dati tabella master ordini
                var oTable1 = this.byId("Table1");
                var oBinding1 = oTable1.getRowBinding()
                oBinding1.requestContexts(0, 10000).then(function(aContexts) {
                    dataMasterTable = aContexts.map(ctx => ctx.getObject());
                    console.log("Master Table length "+dataMasterTable.length)
                });
            },

            /**
             * Called when the Controller is destroyed. Use this one to free resources and finalize activities.
             * @memberOf productioncockpitapp.ext.main.Main
             */
            //  onExit: function() {
            //
            //  }

            selectIconTabFilter: function(oEvent){
                if (oEvent.getSource().getSelectedKey() === "order") {
                    // Ottieni la tabella
                    var oTable = this.byId("Table"); // ID della tabella
                    var oBinding = oTable.getRowBinding(); // oTable.getBinding("rows") per Grid/Table classiche
                    var filterArray = []
            
                    // Costruisci i filtri (in base al tuo scenario)
                    if(this.byId("FilterBarMaster").getFilters().filters.length > 0){
                        for(var i = 0; i < this.byId("FilterBarMaster").getFilters().filters.length; i++){
                            var oFilter = new sap.ui.model.Filter(this.byId("FilterBarMaster").getFilters().filters[i].sPath, sap.ui.model.FilterOperator.EQ, this.byId("FilterBarMaster").getFilters().filters[i].oValue1);
                            filterArray.push(oFilter)
                            // Applica il filtro
                            if (oBinding) {
                                oBinding.filter(filterArray);
                            }
                        }
                    } else {
                        oBinding.filter([]);
                    }
                                
                } else if(oEvent.getSource().getSelectedKey() === "combined"){
                    var oTable = this.byId("Table2"); // ID della tabella
                    var oBinding = oTable.getRowBinding(); // oTable.getBinding("rows") per Grid/Table classiche
                    var filterArray = []
            
                    // Costruisci i filtri (in base al tuo scenario)
                    if(this.byId("FilterBarMaster").getFilters().filters.length > 0){
                        for(var i = 0; i < this.byId("FilterBarMaster").getFilters().filters.length; i++){
                            if(this.byId("FilterBarMaster").getFilters().filters[i].sPath === 'MasterProductionOrder'){
                                if(this.byId("Table1").getMDCTable().getRowBinding() !== undefined){
                                    var value = this.byId("Table1").getMDCTable().getRowBinding().aContexts[0].getValue().CombinedOrder
                                    var oFilter = new sap.ui.model.Filter("CombinedOrder", sap.ui.model.FilterOperator.EQ, value);
                                    filterArray.push(oFilter)
                                }
                            } else {
                                var oFilter = new sap.ui.model.Filter(this.byId("FilterBarMaster").getFilters().filters[i].sPath, sap.ui.model.FilterOperator.EQ, this.byId("FilterBarMaster").getFilters().filters[i].oValue1);
                                filterArray.push(oFilter)
                            }
                            if (oBinding) {
                                oBinding.filter(filterArray);
                            }
                        }
                    } else {
                        oBinding.filter([]);
                    }
                }
                /*if(oEvent.getSource().getSelectedKey() === 'master'){
                    this.byId("FilterBarMaster").setVisible(true);
                    this.byId("FilterBarCombined").setVisible(false);
                } else if(oEvent.getSource().getSelectedKey() === 'combined') {
                    this.byId("FilterBarMaster").setVisible(false);
                    this.byId("FilterBarCombined").setVisible(true);
                }*/
            },

            onNavigateToComponentsMasterOrder: function(oEvent){

                const oComponent = this.getOwnerComponent().getExtensionComponent();

                this.oRouter = oComponent.getRouter();
                
                var key = ""
                for(var i=0; i<this.byId("Table1").getSelectedContexts().length; i++){       
                    if(i ===  0){
                        key = this.byId("Table1").getSelectedContexts()[i].getObject().ID
                    } else {            
                        key = key + ";" + this.byId("Table1").getSelectedContexts()[i].getObject().ID
                    }
                }

                this.oRouter.navTo("ZZ1_C_MASTERORDER_COMPComponentsPage", {
                    ZZ1_C_MASTERORDER_COMPKey: "'"+key+"'", "?query": {
                        //layout: "ThreeColumnsMidExpanded"
                    }
                });
                  
                
            },

            onNavigateToOperationsCombinedOrder: function(oEvent){
                const oComponent = this.getOwnerComponent().getExtensionComponent();

                this.oRouter = oComponent.getRouter();

                var key = ""
                for(var i=0; i<this.byId("Table2").getSelectedContexts().length; i++){       
                    if(i ===  0){
                        key = this.byId("Table2").getSelectedContexts()[i].getObject().ID
                    } else {            
                        key = key + ";" + this.byId("Table2").getSelectedContexts()[i].getObject().ID
                    }
                }

                this.oRouter.navTo("ZZ1_C_COMBINEDORDER_OPEROperationsPage", {
                    ZZ1_C_COMBINEDORDER_OPERKey: "'"+key+"'", "?query": {
                        //layout: "ThreeColumnsMidExpanded"
                    }
                });
            },

            onNavigateToComponentsCombinedOrder: function(oEvent){

                const oComponent = this.getOwnerComponent().getExtensionComponent();

                this.oRouter = oComponent.getRouter();
                
                var key = ""
                for(var i=0; i<this.byId("Table2").getSelectedContexts().length; i++){       
                    if(i ===  0){
                        key = this.byId("Table2").getSelectedContexts()[i].getObject().ID
                    } else {            
                        key = key + ";" + this.byId("Table2").getSelectedContexts()[i].getObject().ID
                    }
                }

                this.oRouter.navTo("ZZ1_C_COMBINEDORDER_COMPComponentsPage", {
                    ZZ1_C_COMBINEDORDER_COMPKey: "'"+key+"'", "?query": {
                        //layout: "ThreeColumnsMidExpanded"
                    }
                });
                  
                
            },

            onNavigateToOperationsMasterOrder: function(oEvent){
                const oComponent = this.getOwnerComponent().getExtensionComponent();

                this.oRouter = oComponent.getRouter();

                var key = ""
                for(var i=0; i<this.byId("Table1").getSelectedContexts().length; i++){       
                    if(i ===  0){
                        key = this.byId("Table1").getSelectedContexts()[i].getObject().ID
                    } else {            
                        key = key + ";" + this.byId("Table1").getSelectedContexts()[i].getObject().ID
                    }
                }

                this.oRouter.navTo("ZZ1_C_MASTERORDER_OPEROperationsPage", {
                    ZZ1_C_MASTERORDER_OPERKey: "'"+key+"'", "?query": {
                        //layout: "ThreeColumnsMidExpanded"
                    }
                });
            },

            onNavigateToComponentsOrder: function(oEvent){

                const oComponent = this.getOwnerComponent().getExtensionComponent();

                this.oRouter = oComponent.getRouter();
                
                var key = ""
                for(var i=0; i<this.byId("Table").getSelectedContexts().length; i++){       
                    if(i ===  0){
                        key = this.byId("Table").getSelectedContexts()[i].getObject().ID
                    } else {            
                        key = key + ";" + this.byId("Table").getSelectedContexts()[i].getObject().ID
                    }
                }

                this.oRouter.navTo("ZZ1_C_MFG_OrderComponentsPage", {
                    ZZ1_C_MFG_OrderCompKey: "'"+key+"'", "?query": {
                        //layout: "ThreeColumnsMidExpanded"
                    }
                });
                  
                
            },

            onNavigateToOperationsOrder: function(oEvent){
                const oComponent = this.getOwnerComponent().getExtensionComponent();

                this.oRouter = oComponent.getRouter();
                
                var key = ""
                for(var i=0; i<this.byId("Table").getSelectedContexts().length; i++){       
                    if(i ===  0){
                        key = this.byId("Table").getSelectedContexts()[i].getObject().ID
                    } else {            
                        key = key + ";" + this.byId("Table").getSelectedContexts()[i].getObject().ID
                    }
                }

                this.oRouter.navTo("ZZ1_C_MFG_OrderOperationsPage", {
                    ZZ1_C_MFG_OrderOperKey: "'" + key + "'", "?query": {

                    }
                });
            },

            onCloseOrder: function(oEvent){
                var dataProductionOrder = oController.getProductionOrder()
                //alert(JSON.stringify(dataProductionOrder))

                var oBusyDialog = new sap.m.BusyDialog();
                oBusyDialog.open();
                const oModel = oController.getView().getModel();
                var oBindingContext = oModel.bindContext("/CloseOrder(...)");

                oBindingContext.setParameter("OrderID", 
                    dataProductionOrder //'1234567'
                );
                
                oBindingContext.execute().then((oResult) => {
                    var oContext = oBindingContext.getBoundContext();
                    
                    var message = ""
                    var messageArray = oContext.getObject().value.split("|")
                    if(messageArray.length === 0){
                        message = oContext.getObject().value
                        oController.openDialogMessageText(message, "E");
                    } else {
                        if(oContext.getObject().value.indexOf("Error") > -1){
                            sap.m.MessageBox.error(
                                oController.getResourceBundle().getText("followingErrorsFound")+"\n\n" + 
                                messageArray.join("\n"),
                                {
                                    title: oController.getResourceBundle().getText("errors")
                                }
                            );
                        } else {
                            sap.m.MessageBox.success(
                                messageArray.join("\n"),
                                {
                                    title: oController.getResourceBundle().getText("success")
                                }
                            );
                        }
                    }
                    oBusyDialog.close();
                }).catch((oError) => {
                    oBusyDialog.close();
                    if(oError.error !== undefined && oError.error !== null){
                        oController.openDialogMessageText(oError.error.message, "E");
                    } else {
                        oController.openDialogMessageText(oError, "E");
                    }
                });
            },

            onTechnicalCompleteOrder: function(oEvent){
                var dataProductionOrder = oController.getProductionOrder()
                //alert(JSON.stringify(dataProductionOrder))

                var oBusyDialog = new sap.m.BusyDialog();
                oBusyDialog.open();
                const oModel = oController.getView().getModel();
                var oBindingContext = oModel.bindContext("/TechnicalCompleteOrder(...)");

                oBindingContext.setParameter("OrderID", 
                    dataProductionOrder //'1234567'
                );
                
                oBindingContext.execute().then((oResult) => {
                    var oContext = oBindingContext.getBoundContext();
                    
                    var message = ""
                    var messageArray = oContext.getObject().value.split("|")
                    if(messageArray.length === 0){
                        message = oContext.getObject().value
                        oController.openDialogMessageText(message, "E");
                    } else {
                        if(oContext.getObject().value.indexOf("Error") > -1){
                            sap.m.MessageBox.error(
                                oController.getResourceBundle().getText("followingErrorsFound")+"\n\n" + 
                                messageArray.join("\n"),
                                {
                                    title: oController.getResourceBundle().getText("errors")
                                }
                            );
                        } else {
                            sap.m.MessageBox.success(
                                messageArray.join("\n"),
                                {
                                    title: oController.getResourceBundle().getText("success")
                                }
                            );
                        }
                    }
                    oBusyDialog.close();
                }).catch((oError) => {
                    oBusyDialog.close();
                    if(oError.error !== undefined && oError.error !== null){
                        oController.openDialogMessageText(oError.error.message, "E");
                    } else {
                        oController.openDialogMessageText(oError, "E");
                    }
                });
            },

            onRelaseOrder: function(oEvent){
                var dataProductionOrder = oController.getProductionOrder()
                //alert(JSON.stringify(dataProductionOrder))

                var oBusyDialog = new sap.m.BusyDialog();
                oBusyDialog.open();
                const oModel = oController.getView().getModel();
                var oBindingContext = oModel.bindContext("/ReleaseOrder(...)");

                oBindingContext.setParameter("OrderID", 
                    dataProductionOrder//'1234567'
                );
                
                oBindingContext.execute().then((oResult) => {
                    var oContext = oBindingContext.getBoundContext();
                    
                    var message = ""
                    var messageArray = oContext.getObject().value.split("|")
                    if(messageArray.length === 0){
                        message = oContext.getObject().value
                        oController.openDialogMessageText(message, "E");
                    } else {
                        if(oContext.getObject().value.indexOf("Error") > -1){
                            sap.m.MessageBox.error(
                                oController.getResourceBundle().getText("followingErrorsFound")+"\n\n" + 
                                messageArray.join("\n"),
                                {
                                    title: oController.getResourceBundle().getText("errors")
                                }
                            );
                        } else {
                            sap.m.MessageBox.success(
                                messageArray.join("\n"),
                                {
                                    title: oController.getResourceBundle().getText("success")
                                }
                            );
                        }
                    }
                    oBusyDialog.close();
                }).catch((oError) => {
                    oBusyDialog.close();
                    if(oError.error !== undefined && oError.error !== null){
                        oController.openDialogMessageText(oError.error.message, "E");
                    } else {
                        oController.openDialogMessageText(oError, "E");
                    }
                });
            },

            getProductionOrder: function(){
                // recupero ordini di produzione
                var arrayProductionOrder = []
                for(var i = 0; i < sap.ui.getCore().byId("productioncockpitapp::ZZ1_I_COMBPRODORDAPIMain--Table2").getSelectedContexts().length; i++){
                    var combinedOrder = sap.ui.getCore().byId("productioncockpitapp::ZZ1_I_COMBPRODORDAPIMain--Table2").getSelectedContexts()[i].getObject().CombinedOrder
                    for(var y = 0; y < dataMasterTable.length; y++){
                        if(dataMasterTable[y].CombinedOrder === combinedOrder){
                            var masterOrder = dataMasterTable[y].MasterProductionOrder
                            for(var z = 0; z < dataOrderTable.length; z++){
                                if(dataOrderTable[z].MasterProductionOrder === masterOrder){
                                    arrayProductionOrder.push(dataOrderTable[z].ManufacturingOrder)
                                }
                            }
                        }
                    }   
                }
                
                return arrayProductionOrder
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
            }

        });
    }
);
