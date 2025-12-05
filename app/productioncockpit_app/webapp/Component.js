sap.ui.define(
    ["sap/fe/core/AppComponent", "sap/ui/model/json/JSONModel"],
    function (Component, JSONModel) {
        "use strict";

        return Component.extend("productioncockpitapp.Component", {
            metadata: {
                manifest: "json"
            },

            /*init: function () {
                // call the base component's init function
                //UIComponent.prototype.init.apply(this, arguments);

                // enable routing
                //this.getRouter().initialize();

                // set the device model
                //this.setModel(models.createDeviceModel(), "device");

                //this.getModel().setDefaultCountMode("None");

                var reasonDataModel = new JSONModel({
				    ReasonSet: []
                });
                reasonDataModel.setDefaultBindingMode("TwoWay");
                this.setModel(reasonDataModel, "reasonService");
            }*/
        });
    }
);