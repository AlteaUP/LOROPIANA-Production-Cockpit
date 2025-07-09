sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'productioncockpitapp/test/integration/FirstJourney',
		'productioncockpitapp/test/integration/pages/ZZ1_I_COMBPRODORDAPIMain'
    ],
    function(JourneyRunner, opaJourney, ZZ1_I_COMBPRODORDAPIMain) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('productioncockpitapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheZZ1_I_COMBPRODORDAPIMain: ZZ1_I_COMBPRODORDAPIMain
                }
            },
            opaJourney.run
        );
    }
);