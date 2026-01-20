sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'productioncockpitapp/test/integration/FirstJourney',
		'productioncockpitapp/test/integration/pages/ZZ1_PRODUCTION_COCKPIT_APIMain'
    ],
    function(JourneyRunner, opaJourney, ZZ1_PRODUCTION_COCKPIT_APIMain) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('productioncockpitapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheZZ1_PRODUCTION_COCKPIT_APIMain: ZZ1_PRODUCTION_COCKPIT_APIMain
                }
            },
            opaJourney.run
        );
    }
);