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
                this.byId("TableMaster").attachSelectionChange(function (oEvent) {
                    if(oEvent.getParameters().selectedContext.length > 0){
                        oController.byId("productioncockpitapp::ZZ1_PRODUCTION_COCKPIT_APIMain--TableMaster-content::CustomAction::componentsAction").setEnabled(true);
                        oController.byId("productioncockpitapp::ZZ1_PRODUCTION_COCKPIT_APIMain--TableMaster-content::CustomAction::operationsAction").setEnabled(true);
                        oController.byId("productioncockpitapp::ZZ1_PRODUCTION_COCKPIT_APIMain--TableMaster-content::CustomAction::kittingAction").setEnabled(true);
                        oController.byId("productioncockpitapp::ZZ1_PRODUCTION_COCKPIT_APIMain--TableMaster-content::CustomAction::rolAction").setEnabled(true);
                    } else {
                        oController.byId("productioncockpitapp::ZZ1_PRODUCTION_COCKPIT_APIMain--TableMaster-content::CustomAction::componentsAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_PRODUCTION_COCKPIT_APIMain--TableMaster-content::CustomAction::operationsAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_PRODUCTION_COCKPIT_APIMain--TableMaster-content::CustomAction::kittingAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_PRODUCTION_COCKPIT_APIMain--TableMaster-content::CustomAction::rolAction").setEnabled(false);
                    }
                });
                this.byId("TableCombined").attachSelectionChange(function (oEvent) {
                    if(oEvent.getParameters().selectedContext.length > 0){
                        oController.byId("productioncockpitapp::ZZ1_PRODUCTION_COCKPIT_APIMain--TableCombined-content::CustomAction::releaseOrderAction").setEnabled(true);
                        oController.byId("productioncockpitapp::ZZ1_PRODUCTION_COCKPIT_APIMain--TableCombined-content::CustomAction::technicalCompleteOrderAction").setEnabled(true);
                        oController.byId("productioncockpitapp::ZZ1_PRODUCTION_COCKPIT_APIMain--TableCombined-content::CustomAction::closeOrderAction").setEnabled(true);
                        oController.byId("productioncockpitapp::ZZ1_PRODUCTION_COCKPIT_APIMain--TableCombined-content::CustomAction::componentsCombinedAction").setEnabled(true);
                        oController.byId("productioncockpitapp::ZZ1_PRODUCTION_COCKPIT_APIMain--TableCombined-content::CustomAction::operationsCombinedAction").setEnabled(true);
                        oController.byId("productioncockpitapp::ZZ1_PRODUCTION_COCKPIT_APIMain--TableCombined-content::CustomAction::kittingCombinedAction").setEnabled(true);
                    } else {
                        oController.byId("productioncockpitapp::ZZ1_PRODUCTION_COCKPIT_APIMain--TableCombined-content::CustomAction::releaseOrderAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_PRODUCTION_COCKPIT_APIMain--TableCombined-content::CustomAction::technicalCompleteOrderAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_PRODUCTION_COCKPIT_APIMain--TableCombined-content::CustomAction::closeOrderAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_PRODUCTION_COCKPIT_APIMain--TableCombined-content::CustomAction::componentsCombinedAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_PRODUCTION_COCKPIT_APIMain--TableCombined-content::CustomAction::operationsCombinedAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_PRODUCTION_COCKPIT_APIMain--TableCombined-content::CustomAction::kittingCombinedAction").setEnabled(false);
                    }
                });
                this.byId("Table").attachSelectionChange(function (oEvent) {
                    if(oEvent.getParameters().selectedContext.length > 0){
                        oController.byId("productioncockpitapp::ZZ1_PRODUCTION_COCKPIT_APIMain--Table-content::CustomAction::componentsOrderAction").setEnabled(true);
                        oController.byId("productioncockpitapp::ZZ1_PRODUCTION_COCKPIT_APIMain--Table-content::CustomAction::operationsOrderAction").setEnabled(true);
                    } else {
                        oController.byId("productioncockpitapp::ZZ1_PRODUCTION_COCKPIT_APIMain--Table-content::CustomAction::componentsOrderAction").setEnabled(false);
                        oController.byId("productioncockpitapp::ZZ1_PRODUCTION_COCKPIT_APIMain--Table-content::CustomAction::operationsOrderAction").setEnabled(false);
                    }
                });
                //this.byId("productioncockpitapp::ZZ1_PRODUCTION_COCKPIT_APIMain--Table-content").setSelectionMode("Multi")
                //this.byId("productioncockpitapp::ZZ1_PRODUCTION_COCKPIT_APIMain--TableCombined-content").setSelectionMode("Multi")
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
                sap.ui.getCore().byId("productioncockpitapp::ZZ1_PRODUCTION_COCKPIT_APIMain--FilterBarMaster-content-btnSearch").firePress()
                // recupero dati tabella ordini
                var oTable = this.byId("Table");
                var oBinding = oTable.getRowBinding()
                oBinding.requestContexts(0, 10000).then(function(aContexts) {
                    dataOrderTable = aContexts.map(ctx => ctx.getObject());
                    console.log("Order Table length "+dataOrderTable.length)
                });
                // recupero dati tabella master ordini
                var oTableMaster = this.byId("TableMaster");
                var oBinding1 = oTableMaster.getRowBinding()
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
                            if(oFilter.sPath === 'CombinedOrder'){
                                oFilter.sPath = 'CprodOrd'
                            }
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
                    var oTable = this.byId("TableCombined"); // ID della tabella
                    var oBinding = oTable.getRowBinding(); // oTable.getBinding("rows") per Grid/Table classiche
                    var filterArray = []
            
                    // Costruisci i filtri (in base al tuo scenario)
                    if(this.byId("FilterBarMaster").getFilters().filters.length > 0){
                        for(var i = 0; i < this.byId("FilterBarMaster").getFilters().filters.length; i++){
                            if(this.byId("FilterBarMaster").getFilters().filters[i].sPath === 'MasterProductionOrder' || this.byId("FilterBarMaster").getFilters().filters[0].aFilters !== undefined){
                                if(this.byId("TableMaster").getMDCTable().getRowBinding() !== undefined){
                                    // modifica DL - 22/12/2025 - gestione ordini multipli
                                    if(this.byId("FilterBarMaster").getFilters().filters[0].aFilters === undefined){
                                        var value = this.byId("TableMaster").getMDCTable().getRowBinding().aContexts[0].getValue().CombinedOrder
                                        var oFilter = new sap.ui.model.Filter("CombinedOrder", sap.ui.model.FilterOperator.EQ, value);
                                        filterArray.push(oFilter)
                                    } else {
                                        for(var y=0; y<this.byId("TableMaster").getMDCTable().getRowBinding().aContexts.length; y++){                                       
                                            filterArray.push(new sap.ui.model.Filter("CombinedOrder", sap.ui.model.FilterOperator.EQ, this.byId("TableMaster").getMDCTable().getRowBinding().aContexts[y].getValue().CombinedOrder ))
                                        }
                                    }
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
                    // modifica DL - 21/01/2025 - valorizzo anche la tabella degli ordini
                    var oTable = this.byId("Table"); // ID della tabella
                    var oBinding = oTable.getRowBinding(); // oTable.getBinding("rows") per Grid/Table classiche
                    var filterArray = []
            
                    // Costruisci i filtri (in base al tuo scenario)
                    if(this.byId("FilterBarMaster").getFilters().filters.length > 0){
                        for(var i = 0; i < this.byId("FilterBarMaster").getFilters().filters.length; i++){
                            var oFilter = new sap.ui.model.Filter(this.byId("FilterBarMaster").getFilters().filters[i].sPath, sap.ui.model.FilterOperator.EQ, this.byId("FilterBarMaster").getFilters().filters[i].oValue1);
                            if(oFilter.sPath === 'CombinedOrder'){
                                oFilter.sPath = 'CprodOrd'
                            }
                            filterArray.push(oFilter)
                            // Applica il filtro
                            if (oBinding) {
                                oBinding.filter(filterArray);
                            }
                        }
                    } else {
                        oBinding.filter([]);
                    }
                    // modifica DL - 21/01/2025 - valorizzo anche la tabella degli ordini - FINE
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
                for(var i=0; i<this.byId("TableMaster").getSelectedContexts().length; i++){       
                    if(i ===  0){
                        key = this.byId("TableMaster").getSelectedContexts()[i].getObject().ID
                    } else {            
                        key = key + ";" + this.byId("TableMaster").getSelectedContexts()[i].getObject().ID
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
                for(var i=0; i<this.byId("TableCombined").getSelectedContexts().length; i++){       
                    if(i ===  0){
                        key = this.byId("TableCombined").getSelectedContexts()[i].getObject().ID
                    } else {            
                        key = key + ";" + this.byId("TableCombined").getSelectedContexts()[i].getObject().ID
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
                for(var i=0; i<this.byId("TableCombined").getSelectedContexts().length; i++){       
                    if(i ===  0){
                        key = this.byId("TableCombined").getSelectedContexts()[i].getObject().ID
                    } else {            
                        key = key + ";" + this.byId("TableCombined").getSelectedContexts()[i].getObject().ID
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
                for(var i=0; i<this.byId("TableMaster").getSelectedContexts().length; i++){       
                    if(i ===  0){
                        key = this.byId("TableMaster").getSelectedContexts()[i].getObject().ID
                    } else {            
                        key = key + ";" + this.byId("TableMaster").getSelectedContexts()[i].getObject().ID
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

            onNavigateToKittingMasterOrder: function(oEvent){

                const oComponent = this.getOwnerComponent().getExtensionComponent();

                this.oRouter = oComponent.getRouter();
                
                var key = ""
                for(var i=0; i<this.byId("TableMaster").getSelectedContexts().length; i++){       
                    if(i ===  0){
                        key = this.byId("TableMaster").getSelectedContexts()[i].getObject().ID
                    } else {            
                        key = key + ";" + this.byId("TableMaster").getSelectedContexts()[i].getObject().ID
                    }
                }

                this.oRouter.navTo("ZZ1_C_MASTERORDER_COMPKittingPage", {
                    ZZ1_C_MASTERORDER_KITTINGKey: "'"+key+"'", "?query": {
                        //layout: "ThreeColumnsMidExpanded"
                    }
                });
                  
                
            },

            onNavigateToKittingCombinedOrder: function(oEvent){

                const oComponent = this.getOwnerComponent().getExtensionComponent();

                this.oRouter = oComponent.getRouter();
                
                var key = ""
                for(var i=0; i<this.byId("TableCombined").getSelectedContexts().length; i++){       
                    if(i ===  0){
                        key = this.byId("TableCombined").getSelectedContexts()[i].getObject().ID
                    } else {            
                        key = key + ";" + this.byId("TableCombined").getSelectedContexts()[i].getObject().ID
                    }
                }

                this.oRouter.navTo("ZZ1_C_COMBINEDORDER_COMPKittingPage", {
                    ZZ1_C_COMBINEDORDER_KITTINGKey: "'"+key+"'", "?query": {
                        //layout: "ThreeColumnsMidExpanded"
                    }
                });
                  
                
            },

            onCallServiceROL: function(oEvent){
                const oidOrdine = "S000026497";

                const oModel = oController.getView().getModel();
                var oBindingContext = oModel.bindContext("/GetOrderDetails(...)");

                oBindingContext.setParameter("oidOrdine", 
                    oidOrdine
                );

                var oBusyDialog = new sap.m.BusyDialog();
                oBusyDialog.open();
                oBindingContext.execute().then((oResult) => {
                    var oContext = oBindingContext.getBoundContext(); 
                    oBusyDialog.close();
                    // apro popup in cui mostro risultati della chiamata del servizio
                    if(oController.pROLDialog === null || oController.pROLDialog === undefined){
                        oController.pROLDialog = sap.ui.xmlfragment(this.getView().getId(), "productioncockpitapp.ext.Fragment.ROL", oController);
                        oController.getView().addDependent(oController.pROLDialog);
                    }

                    const oModel = new sap.ui.model.json.JSONModel({
                        numeroOrdineROL: "S000026497",
                        articoloCod: "FAF3792",
                        coloreCod: "WG77",
                        taglia: "46",
                        numeroPezzi: 1,
                        tessuto: "Filato Baby Cash 2/26 (SDM)"
                    });

                    oController.getView().setModel(oModel, "order");

                    oController.pROLDialog.open()
                    
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
            },

            onShowDialog: function () {
                
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
                var dataMasterTable = this.byId("TableMaster").getRowBinding().aContexts
                var dataOrderTable = this.byId("Table").getRowBinding().aContexts
                for(var i = 0; i < sap.ui.getCore().byId("productioncockpitapp::ZZ1_PRODUCTION_COCKPIT_APIMain--TableCombined").getSelectedContexts().length; i++){
                    var combinedOrder = sap.ui.getCore().byId("productioncockpitapp::ZZ1_PRODUCTION_COCKPIT_APIMain--TableCombined").getSelectedContexts()[i].getObject().CombinedOrder
                    for(var y = 0; y < dataMasterTable.length; y++){
                        if(dataMasterTable[y].getObject().CombinedOrder === combinedOrder){
                            var masterOrder = dataMasterTable[y].getObject().MasterProductionOrder
                            for(var z = 0; z < dataOrderTable.length; z++){
                                //if(dataOrderTable[z].getObject().MasterProductionOrder === masterOrder){
                                    arrayProductionOrder.push(dataOrderTable[z].getObject().ManufacturingOrder)
                                //}
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
            },

            onCloseROLDialog: function(){
                oController.pROLDialog.close();
            },

            determineLifeCycleStatus: function(O, a) {
                if (O === "" && a === "X") {
                    O = "Y";
                }
                switch (O) {
                    case "X":
                        return "Success";
                    case "Y":
                        return "Warning";
                }
                return "None";
            },
            determineLifeCycleStatusText: function(S, a) {
                switch (a) {
                    case "X1":
                        if (S === 0) {
                            return this.getView().getModel("i18n").getResourceBundle().getText("Created");
                        } else {
                            return S + "% " + this.getView().getModel("i18n").getResourceBundle().getText("Created");
                        }
                    case "X2":
                        if (S === 0) {
                            return this.getView().getModel("i18n").getResourceBundle().getText("Released");
                        } else {
                            return S + "% " + this.getView().getModel("i18n").getResourceBundle().getText("Released");
                        }
                    case "X3":
                        if (S === 0) {
                            return this.getView().getModel("i18n").getResourceBundle().getText("Confirmed");
                        } else {
                            return S + "% " + this.getView().getModel("i18n").getResourceBundle().getText("Confirmed");
                        }
                    case "X4":
                        if (S === 0) {
                            return this.getView().getModel("i18n").getResourceBundle().getText("Delivered");
                        } else {
                            return S + "% " + this.getView().getModel("i18n").getResourceBundle().getText("Delivered");
                        }
                    case "X5":
                        if (S === 0) {
                            return this.getView().getModel("i18n").getResourceBundle().getText("TechnicallyCompleted");
                        } else {
                            return S + "% " + this.getView().getModel("i18n").getResourceBundle().getText("TechnicallyCompleted");
                        }
                    case "X6":
                        if (S === 0) {
                            return this.getView().getModel("i18n").getResourceBundle().getText("Closed");
                        } else {
                            return S + "% " + this.getView().getModel("i18n").getResourceBundle().getText("Closed");
                        }
                    case "X7":
                        if (S === 0) {
                            return this.getView().getModel("i18n").getResourceBundle().getText("Deleted");
                        } else {
                            return S + "% " + this.getView().getModel("i18n").getResourceBundle().getText("Deleted");
                        }
                }
                return "";
            },
            determineIssueTypeText: function(I, a) {
                switch (a) {
                    case "X1":
                        if (I === "X") {
                            return this.getView().getModel("i18n").getResourceBundle().getText("OnHold");
                        } else {
                            return this.getView().getModel("i18n").getResourceBundle().getText("NotOnHold");
                        }
                    case "X2":
                        if (I === "X") {
                            return this.getView().getModel("i18n").getResourceBundle().getText("Delay");
                        } else {
                            return this.getView().getModel("i18n").getResourceBundle().getText("NoDelay");
                        }
                    case "X3":
                        if (I === "X") {
                            return this.getView().getModel("i18n").getResourceBundle().getText("MissingComponents ");
                        } else{
                            return this.getView().getModel("i18n").getResourceBundle().getText("NoMissingComponents");
                        }
                    case"X4 ":
                        if (I === "X"){
                            return this.getView().getModel("i18n ").getResourceBundle().getText("QuantityIssue");
                        }else{
                            return this.getView().getModel("i18n").getResourceBundle().getText("NoQuantityIssue");
                        }
                    case "X5": 
                        if (I === "X") {
                            return this.getView().getModel("i18n").getResourceBundle().getText("QualityIssue");
                        } else {
                            return this.getView().getModel("i18n").getResourceBundle().getText("NoQualityIssue"); 
                        }
                    }
                    return "";
            },
            determineColor: function(I) {
                if (I === "X") {
                    return "Negative";
                }
                return "NonInteractive";
            }

        });
    }
);
