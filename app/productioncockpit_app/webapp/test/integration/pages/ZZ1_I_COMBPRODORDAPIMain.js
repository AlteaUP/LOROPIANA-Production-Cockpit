sap.ui.define(['sap/fe/test/TemplatePage'], function(TemplatePage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new TemplatePage(
        'productioncockpitapp::ZZ1_PRODUCTION_COCKPIT_APIMain',
        CustomPageDefinitions
    );
});