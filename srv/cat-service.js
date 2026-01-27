const { default: cds } = require("@sap/cds");
const SapCfAxios = require('sap-cf-axios').default;

module.exports = cds.service.impl(async function (srv) {

    const combProdOrd = await cds.connect.to('ZZ1_PRODUCTION_COCKPIT_API_CDS');
    const changeOrderProduction = await cds.connect.to('API_PRODUCTION_ORDER_2_SRV');
    const componentsCall = await cds.connect.to('ZMFG_SD_INT_COMP_H');
    //const confODP = await cds.connect.to('ZMFG_SD_CONF_ODP_H');
    const apiMaterialDocumentCreate = await cds.connect.to('API_MATERIAL_DOCUMENT_SRV');
    const reasonSost = await cds.connect.to('ZZ1_MFG_REASON_SOST_CDS');
    const createKitting = await cds.connect.to('ZMFG_SB_PRODUCTION_ORDERS_DEEP');
    const confODP = await cds.connect.to('ZMFG_SB_CONF_ODP_DEEP');
    const manageODPPhase = await cds.connect.to('ZMFG_SB_PRODOR_OPERATIONS');
    const rol = await cds.connect.to("ZZ1_MFG_ROL_ORDERS_CDS");
    const urlRolExternal = await cds.connect.to("ROL");
    const zmfp_mrp_plant_f4 = await cds.connect.to("ZMFP_MRP_PLANT_F4");
    const cdsMRPController = await cds.connect.to('ZZ1_MRPCONTROLLER_F4_CDS');
    const chartMaster = await cds.connect.to('UI_RFM_MNG_MSTRPRODNORD');
    const workCenters = await cds.connect.to('ZZ1_RFM_WRKCHARVAL_F4_CDS');
    const reasonsNotes = await cds.connect.to('ZZ1_MFP_REASON_NOTE_CDS');
    const materialCharacteristics = await cds.connect.to('ZMF_IMD_MATERIAL_CDS');

    this.on('READ', "ZZ1_PRODUCTION_COCKPIT_API", async request => {
        console.log("chiamata ZZ1_PRODUCTION_COCKPIT_API_CDS")
        var data = await combProdOrd.tx(request).run(request.query);
        console.log("lunghezza array " + data.length)

        // modifica DL - 16/01/2026 - chiamo servizio per recupero valori grafico
        const chartDataService = await cds.connect.to('UI_RFM_MNG_MSTRPRODNORD');

        for (var i = 0; i < data.length; i++) {
            const chartData = await chartDataService.tx(request).run(
                SELECT.from('C_RFM_ManageMfgOrder')
                    .where({ ManufacturingOrder: data[i].ManufacturingOrder })
                    .limit(1000)
            );
            data[i].OrderHasProductionHold = chartData[0].OrderHasProductionHold
            data[i].OrderHasExecutionDelay = chartData[0].OrderHasExecutionDelay
            data[i].OrderHasMissingComponents = chartData[0].OrderHasMissingComponents
            data[i].OrderHasDeviation = chartData[0].OrderHasDeviation
            data[i].OrderHasQualityIssue = chartData[0].OrderHasQualityIssue
        }
        // modifica DL - 16/01/2026 - chiamo servizio per recupero valori grafico - FINE

        return data;
    });

    this.on('READ', "ZZ1_MFG_REASON_SOST", async request => {
        console.log("chiamata ZZ1_MFG_REASON_SOST_CDS")
        var data = await reasonSost.tx(request).run(request.query);
        console.log("lunghezza array " + data.length)

        return data;
    });

    this.on('READ', "ZZ1_RFM_WRKCHARVAL_F4", async request => {
        console.log("chiamata ZZ1_RFM_WRKCHARVAL_F4_CDS")
        var data = await workCenters.tx(request).run(request.query);
        console.log("lunghezza array " + data.length)

        return data;
    });

    this.on('READ', "ZZ1_MFP_REASON_NOTE", async request => {
        console.log("chiamata ZZ1_MFP_REASON_NOTE")
        var data = await reasonsNotes.tx(request).run(request.query);
        console.log("lunghezza array " + data.length)

        return data;
    });

    this.on('READ', "ZMF_IMD_MATERIAL", async request => {
        console.log("chiamata ZMF_IMD_MATERIAL")
        var data = await materialCharacteristics.tx(request).run(request.query);
        console.log("lunghezza array ZMF_IMD_MATERIAL " + data.length)

        return data;
    });

    this.on('READ', "ZZ1_C_MASTERPRODORDER", async request => {
        console.log("chiamata ZZ1_C_MASTERPRODORDER")
        var data = await combProdOrd.tx(request).run(request.query);
        console.log("lunghezza array " + data.length)

        // modifica DL - 16/01/2026 - chiamo servizio per recupero valori grafico
        const chartDataService = await cds.connect.to('UI_RFM_MNG_MSTRPRODNORD');

        for (var i = 0; i < data.length; i++) {
            const chartData = await chartDataService.tx(request).run(
                SELECT.from('C_RFM_ManageMasterMfgOrder')
                    .where({ MasterProductionOrder: data[i].MasterProductionOrder })
                    .limit(1000)
            );
            data[i].CreatedStatusQtyInPercent = chartData[0].CreatedStatusQtyInPercent
            data[i].OrderIsCreated = chartData[0].OrderIsCreated
            data[i].ReleasedStatusQtyInPercent = chartData[0].ReleasedStatusQtyInPercent
            data[i].OrderIsReleased = chartData[0].OrderIsReleased
            data[i].OrderIsPartiallyReleased = chartData[0].OrderIsPartiallyReleased
            data[i].ConfirmedStatusQtyInPercent = chartData[0].ConfirmedStatusQtyInPercent
            data[i].OrderIsConfirmed = chartData[0].OrderIsConfirmed
            data[i].OrderIsPartiallyConfirmed = chartData[0].OrderIsPartiallyConfirmed
            data[i].DeliveredStatusQtyInPercent = chartData[0].DeliveredStatusQtyInPercent
            data[i].OrderIsDelivered = chartData[0].OrderIsDelivered
            data[i].OrderIsPartiallyDelivered = chartData[0].OrderIsPartiallyDelivered
            data[i].TechlyCmpltdStatusQtyInPercent = chartData[0].TechlyCmpltdStatusQtyInPercent
            data[i].OrderIsTechnicallyCompleted = chartData[0].OrderIsTechnicallyCompleted
            data[i].OrderHasProductionHold = chartData[0].OrderHasProductionHold
            data[i].OrderHasExecutionDelay = chartData[0].OrderHasExecutionDelay
            data[i].OrderHasMissingComponents = chartData[0].OrderHasMissingComponents
            data[i].OrderHasDeviation = chartData[0].OrderHasDeviation
            data[i].OrderHasQualityIssue = chartData[0].OrderHasQualityIssue
        }
        // modifica DL - 16/01/2026 - chiamo servizio per recupero valori grafico - FINE

        return data;
    });

    this.on('READ', "ZZ1_C_COMBINEDPRODORDER", async request => {
        console.log("chiamata ZZ1_C_COMBINEDPRODORDER")
        var data = await combProdOrd.tx(request).run(request.query);
        console.log("lunghezza array " + data.length)

        // modifica DL - 16/01/2026 - chiamo servizio per recupero valori grafico
        const chartDataService = await cds.connect.to('UI_RFM_MNG_MSTRPRODNORD');

        const chartData = await chartDataService.tx(request).run(
            SELECT.from('C_RFM_ManageCombinedMfgOrder').limit(1000)
        );

        if (data.length > 0) {
            for (var i = 0; i < data.length; i++) {
                const chartData = await chartDataService.tx(request).run(
                    SELECT.from('C_RFM_ManageCombinedMfgOrder')
                        .where({ CombinedProductionOrder: data[i].CombinedOrder })
                        .limit(1000)
                );
                data[i].CreatedStatusQtyInPercent = chartData[0].CreatedStatusQtyInPercent
                data[i].OrderIsCreated = chartData[0].OrderIsCreated
                data[i].ReleasedStatusQtyInPercent = chartData[0].ReleasedStatusQtyInPercent
                data[i].OrderIsReleased = chartData[0].OrderIsReleased
                data[i].OrderIsPartiallyReleased = chartData[0].OrderIsPartiallyReleased
                data[i].ConfirmedStatusQtyInPercent = chartData[0].ConfirmedStatusQtyInPercent
                data[i].OrderIsConfirmed = chartData[0].OrderIsConfirmed
                data[i].OrderIsPartiallyConfirmed = chartData[0].OrderIsPartiallyConfirmed
                data[i].DeliveredStatusQtyInPercent = chartData[0].DeliveredStatusQtyInPercent
                data[i].OrderIsDelivered = chartData[0].OrderIsDelivered
                data[i].OrderIsPartiallyDelivered = chartData[0].OrderIsPartiallyDelivered
                data[i].TechlyCmpltdStatusQtyInPercent = chartData[0].TechlyCmpltdStatusQtyInPercent
                data[i].OrderIsTechnicallyCompleted = chartData[0].OrderIsTechnicallyCompleted
                data[i].OrderHasProductionHold = chartData[0].OrderHasProductionHold
                data[i].OrderHasExecutionDelay = chartData[0].OrderHasExecutionDelay
                data[i].OrderHasMissingComponents = chartData[0].OrderHasMissingComponents
                data[i].OrderHasDeviation = chartData[0].OrderHasDeviation
                data[i].OrderHasQualityIssue = chartData[0].OrderHasQualityIssue
            }
        }
        // modifica DL - 16/01/2026 - chiamo servizio per recupero valori grafico - FINE

        return data;
    });

    this.on('READ', "ZZ1_C_MASTERORDER_COMP", async request => {
        console.log("chiamata ZZ1_C_MASTERORDER_COMP")

        let id = null
        try {
            id = request.query.SELECT.from.ref[0].where[2].val
        } catch (err) {
            console.error("impossibile estrarre l'ID ", err)
            return []
        }
        console.log("ID estratto: ", id)

        // modifica DL - 22/12/2025 - gestione multi ordine
        var idArray = []
        if (id.indexOf(";") > -1) {
            idArray = id.split(";")
        }
        // modifica DL - 22/12/2025 - gestione multi ordine - FINE

        const where = request.query.SELECT?.where  // array già parsato

        const srv = await cds.connect.to('ZZ1_PRODUCTION_COCKPIT_API_CDS')

        let data
        var finalData = []
        if (idArray.length === 0) {
            id = id.split('~')[1]
            if (where && where.length > 0) {
                // aggiungo anche FshMprodOrd come AND
                const combinedWhere = [
                    { ref: ['FshMprodOrd'] }, '=', { val: id }, 'and', ...where
                ]
                data = await srv.read('ZZ1_C_MASTERORDER_COMP').where(combinedWhere)
            } else {
                data = await srv.read('ZZ1_C_MASTERORDER_COMP').where({ FshMprodOrd: id })
            }
        } else {
            for (var i = 0; i < idArray.length; i++) {
                console.log("ID ARRAY: ", idArray[i])
                idArray[i] = idArray[i].split('~')[1]
                console.log("ID ARRAY POST SPLIT: ", idArray[i])
                if (where && where.length > 0) {
                    // aggiungo anche FshMprodOrd come AND
                    const combinedWhere = [
                        { ref: ['FshMprodOrd'] }, '=', { val: idArray[i] }, 'and', ...where
                    ]
                    data = await srv.read('ZZ1_C_MASTERORDER_COMP').where(combinedWhere)
                    console.log("DATAAAA " + JSON.stringify(data))
                } else {
                    data = await srv.read('ZZ1_C_MASTERORDER_COMP').where({ FshMprodOrd: idArray[i] })
                    console.log("DATAAAA " + JSON.stringify(data))
                }
                finalData.push(...data)
            }
            console.log("multi ordine chiamato")
        }

        if (finalData.length > 0) {
            console.log("risultati MASTER COMP final Data: ", finalData.length)
            //MDB - gestione grafico percentuale - 19/01/2026 - INIZIO
            for (const item of finalData) {
                let chart_percent = 0;

                if (
                    item.TotalConfdQtyForATPInBaseUoM != null &&
                    item.TotalRequiredQuantity != null &&
                    parseFloat(item.TotalRequiredQuantity) !== 0
                ) {
                    chart_percent = Math.round(
                        parseFloat(item.TotalConfdQtyForATPInBaseUoM) /
                        parseFloat(item.TotalRequiredQuantity) * 100
                    );
                }

                let chart_criticality;

                if (chart_percent >= 100) {
                    chart_criticality = 3;
                } else if (chart_percent > 0) {
                    chart_criticality = 2;
                } else {
                    chart_criticality = 1;
                    chart_percent = 100;
                }

                // output
                item.chart_percent = chart_percent;
                item.chart_criticality = chart_criticality;
                // modifica DL - 22/01/2026 - recupero note e reason
                /*const reasonsDataService = await cds.connect.to('ZZ1_MFP_REASON_NOTE_CDS');
                const reasonsData = await reasonsDataService.tx(request).run(
                    SELECT.from('ZZ1_MFP_REASON_NOTE')
                        .where({ RSNUM: item.Reservation, RSPOS: item.ReservationItem })
                        .limit(1000)
                );
                if(reasonsData.length > 0){
                    item.Note = reasonsData[0].NOTE;
                    item.Reason = reasonsData[0].REASON;
                }*/
                // modifica DL - 22/01/2026 - recupero note e reason - FINE
            };
            //MDB - gestione grafico percentuale - 19/01/2026 - FINE
            return finalData;
        } else {
            console.log("risultati MASTER COMP: ", data.length)
            // MDB - gestione grafico percentuale - INIZIO
            for (const item of data) {
                let chart_percent = 0;

                if (
                    item.TotalConfdQtyForATPInBaseUoM != null &&
                    item.TotalRequiredQuantity != null &&
                    parseFloat(item.TotalRequiredQuantity) !== 0
                ) {
                    chart_percent = Math.round(
                        parseFloat(item.TotalConfdQtyForATPInBaseUoM) /
                        parseFloat(item.TotalRequiredQuantity) * 100
                    );
                }
                let chart_criticality;

                if (chart_percent >= 100) {
                    chart_criticality = 3;
                } else if (chart_percent > 0) {
                    chart_criticality = 2;
                } else {
                    chart_criticality = 1;
                    chart_percent = 100;
                }

                // output
                item.chart_percent = chart_percent;
                item.chart_criticality = chart_criticality;
                // modifica DL - 22/01/2026 - recupero note e reason
                /*const reasonsDataService = await cds.connect.to('ZZ1_MFP_REASON_NOTE_CDS');
                const reasonsData = await reasonsDataService.tx(request).run(
                    SELECT.from('ZZ1_MFP_REASON_NOTE')
                        .where({ RSNUM: item.Reservation, RSPOS: item.ReservationItem })
                        .limit(1000)
                );
                if(reasonsData.length > 0){
                    item.Note = reasonsData[0].NOTE;
                    item.Reason = reasonsData[0].REASON;
                }*/
                // modifica DL - 22/01/2026 - recupero note e reason - FINE
            };
            // MDB - gestione grafico percentuale - FINE
            return data;
        }

    });

    this.on('READ', "ZZ1_C_MFG_MASTEROPER_SUM", async request => {
        console.log("chiamata ZZ1_C_MFG_MASTEROPER_SUM")

        let id = null
        try {
            id = request.query.SELECT.from.ref[0].where[2].val
        } catch (err) {
            console.error("impossibile estrarre l'ID ", err)
            return []
        }
        console.log("ID estratto: ", id)

        // modifica DL - 13/01/2026 - gestione multi ordine
        var idArray = []
        if (id.indexOf(";") > -1) {
            idArray = id.split(";")
        }
        // modifica DL - 13/01/2026 - gestione multi ordine - FINE

        const where = request.query.SELECT?.where  // array già parsato

        const srv = await cds.connect.to('ZZ1_PRODUCTION_COCKPIT_API_CDS')

        let data
        var finalData = []
        if (idArray.length === 0) {
            id = id.split('~')[1]
            if (where && where.length > 0) {
                // aggiungo anche MasterProductionOrder come AND
                const combinedWhere = [
                    { ref: ['MasterProductionOrder'] }, '=', { val: id }, 'and', ...where
                ]
                data = await srv.read('ZZ1_C_MFG_MASTEROPER_SUM').where(combinedWhere).limit(1000)
            } else {
                data = await srv.read('ZZ1_C_MFG_MASTEROPER_SUM').where({ MasterProductionOrder: id }).limit(1000)
            }
        } else {
            for (var i = 0; i < idArray.length; i++) {
                console.log("ID ARRAY: ", idArray[i])
                idArray[i] = idArray[i].split('~')[1]
                console.log("ID ARRAY POST SPLIT: ", idArray[i])
                if (where && where.length > 0) {
                    // aggiungo anche MasterProductionOrder come AND
                    const combinedWhere = [
                        { ref: ['MasterProductionOrder'] }, '=', { val: idArray[i] }, 'and', ...where
                    ]
                    data = await srv.read('ZZ1_C_MFG_MASTEROPER_SUM').where(combinedWhere).limit(1000)
                    console.log("DATAAAA " + JSON.stringify(data))
                } else {
                    data = await srv.read('ZZ1_C_MFG_MASTEROPER_SUM').where({ MasterProductionOrder: idArray[i] }).limit(1000)
                    console.log("DATAAAA " + JSON.stringify(data))
                }
                finalData.push(...data)
            }
            console.log("multi ordine chiamato")
        }

        if (finalData.length > 0) {
            console.log("risultati MASTER OPER final Data: ", finalData.length)
            return finalData;
        } else {
            console.log("risultati MASTER OPER: ", data.length)
            return data;
        }
    });

    this.on('READ', "ZZ1_C_COMBORDER_COMP", async request => {
        console.log("chiamata ZZ1_C_COMBORDER_COMP")

        console.log("SELECT COMPONENTI" + JSON.stringify(request.query.SELECT))

        let id = null
        try {
            id = request.query.SELECT.from.ref[0].where[2].val
        } catch (err) {
            console.error("impossibile estrarre l'ID ", err)
            return []
        }
        console.log("ID estratto: ", id)

        // modifica DL - 22/12/2025 - gestione multi ordine
        var idArray = []
        if (id.indexOf(";") > -1) {
            idArray = id.split(";")
        }
        // modifica DL - 22/12/2025 - gestione multi ordine - FINE        

        const where = request.query.SELECT?.where  // array già parsato

        const srv = await cds.connect.to('ZZ1_PRODUCTION_COCKPIT_API_CDS')

        let data
        var finalData = []
        if (idArray.length === 0) {
            id = id.split('~')[1]
            if (where && where.length > 0) {
                // aggiungo anche CprodOrder come AND
                const combinedWhere = [
                    { ref: ['CprodOrd'] }, '=', { val: id }, 'and', ...where
                ]
                data = await srv.read('ZZ1_C_COMBORDER_COMP').where(combinedWhere)
            } else {
                data = await srv.read('ZZ1_C_COMBORDER_COMP').where({ CprodOrd: id })
            }
        } else {
            for (var i = 0; i < idArray.length; i++) {
                console.log("ID ARRAY: ", idArray[i])
                idArray[i] = idArray[i].split('~')[1]
                console.log("ID ARRAY POST SPLIT: ", idArray[i])
                if (where && where.length > 0) {
                    // aggiungo anche CprodOrd come AND
                    const combinedWhere = [
                        { ref: ['CprodOrd'] }, '=', { val: idArray[i] }, 'and', ...where
                    ]
                    data = await srv.read('ZZ1_C_COMBORDER_COMP').where(combinedWhere)
                    console.log("DATAAAA " + JSON.stringify(data))
                } else {
                    data = await srv.read('ZZ1_C_COMBORDER_COMP').where({ CprodOrd: idArray[i] })
                    console.log("DATAAAA " + JSON.stringify(data))
                }
                finalData.push(...data)
            }
            console.log("multi ordine chiamato")
        }

        if (finalData.length > 0) {
            console.log("risultati COMBINED COMP final Data: ", finalData.length)
            //MDB - gestione grafico percentuale - 19/01/2026 - INIZIO
            for (const item of finalData) {
                let chart_percent = 0;

                if (
                    item.TotalConfdQtyForATPInBaseUoM != null &&
                    item.TotalRequiredQuantity != null &&
                    parseFloat(item.TotalRequiredQuantity) !== 0
                ) {
                    chart_percent = Math.round(
                        parseFloat(item.TotalConfdQtyForATPInBaseUoM) /
                        parseFloat(item.TotalRequiredQuantity) * 100
                    );
                }

                let chart_criticality;

                if (chart_percent >= 100) {
                    chart_criticality = 3;
                } else if (chart_percent > 0) {
                    chart_criticality = 2;
                } else {
                    chart_criticality = 1;
                    chart_percent = 100;
                }

                // output
                item.chart_percent = chart_percent;
                item.chart_criticality = chart_criticality;
                // modifica DL - 22/01/2026 - recupero note e reason
                /*const reasonsDataService = await cds.connect.to('ZZ1_MFP_REASON_NOTE_CDS');
                const reasonsData = await reasonsDataService.tx(request).run(
                    SELECT.from('ZZ1_MFP_REASON_NOTE')
                        .where({ RSNUM: item.Reservation, RSPOS: item.ReservationItem })
                        .limit(1000)
                );
                if(reasonsData.length > 0){
                    item.Note = reasonsData[0].NOTE;
                    item.Reason = reasonsData[0].REASON;
                }*/
                // modifica DL - 22/01/2026 - recupero note e reason - FINE
            };
            //MDB - gestione grafico percentuale - FINE
            return finalData;
        } else {
            console.log("risultati COMBINED COMP: ", data.length)
            // MDB - gestione grafico percentuale - 19/01/2026 - INIZIO
            for (const item of data) {
                let chart_percent = 0;

                if (
                    item.TotalConfdQtyForATPInBaseUoM != null &&
                    item.TotalRequiredQuantity != null &&
                    parseFloat(item.TotalRequiredQuantity) !== 0
                ) {
                    chart_percent = Math.round(
                        parseFloat(item.TotalConfdQtyForATPInBaseUoM) /
                        parseFloat(item.TotalRequiredQuantity) * 100
                    );
                }
                let chart_criticality;

                if (chart_percent >= 100) {
                    chart_criticality = 3;
                } else if (chart_percent > 0) {
                    chart_criticality = 2;
                } else {
                    chart_criticality = 1;
                    chart_percent = 100;
                }

                // output
                item.chart_percent = chart_percent;
                item.chart_criticality = chart_criticality;
                // modifica DL - 22/01/2026 - recupero note e reason
                /*const reasonsDataService = await cds.connect.to('ZZ1_MFP_REASON_NOTE_CDS');
                const reasonsData = await reasonsDataService.tx(request).run(
                    SELECT.from('ZZ1_MFP_REASON_NOTE')
                        .where({ RSNUM: item.Reservation, RSPOS: item.ReservationItem })
                        .limit(1000)
                );
                if(reasonsData.length > 0){
                    item.Note = reasonsData[0].NOTE;
                    item.Reason = reasonsData[0].REASON;
                }*/
                // modifica DL - 22/01/2026 - recupero note e reason - FINE
            };
            // MDB - gestione grafico percentuale - FINE
            return data;
        }
    });

    this.on('READ', "ZZ1_C_MFG_COMBINEDOPER_SUM", async request => {
        console.log("chiamata ZZ1_C_MFG_COMBINEDOPER_SUM")

        let id = null
        try {
            id = request.query.SELECT.from.ref[0].where[2].val
        } catch (err) {
            console.error("impossibile estrarre l'ID ", err)
            return []
        }
        console.log("ID estratto: ", id)

        id = id.split('~')[1]

        const srv = await cds.connect.to('ZZ1_PRODUCTION_COCKPIT_API_CDS')

        const data = await srv.send({
            method: 'GET',
            path: "/ZZ1_C_MFG_COMBINEDOPER_SUM?$filter=CprodOrd eq '" + id + "'"
        })

        console.log("risultati COMBINED OPER: ", data.length)

        return data;
    });

    this.on('READ', "ZZ1_C_MFG_OrderComp", async request => {
        console.log("chiamata ZZ1_C_MFG_OrderComp")
        console.log("AAAAAA " + request.query)
        var data = await combProdOrd.tx(request).run(request.query);
        console.log("lunghezza array " + data.length)

        return data;
    });


    this.on('READ', "ZZ1_C_MFG_ORDEROPE", async request => {
        console.log("chiamata ZZ1_C_MFG_ORDEROPE")
        console.log("BBBBBB " + request.query)
        var data = await combProdOrd.tx(request).run(request.query);
        console.log("lunghezza array " + data.length)

        return data;
    });

    this.on("READ", "ZZ1_C_MASTERORDER_COMP", async (req) => {
        try {
            // collego al servizio remoto
            const masterSrv = await cds.connect.to("ZZ1_C_MASTERPRODORDERAPI_CDS");

            // inoltro la query originale al servizio esterno
            const result = await masterSrv.run(req.query);

            console.log("ENTRATOOOOOOOOOOO")

            return result;
        } catch (err) {
            req.error(500, `Errore durante la fetch da ZZ1_C_MASTERPRODORDERAPI_CDS: ${err.message}`);
        }
    });

    this.on("ReleaseOrder", async (req) => {

        const { OrderID } = req.data;
        var response = ""

        if (OrderID.length > 1) {
            // array di valori
            for (var i = 0; i < OrderID.length; i++) {
                // chiamo l'API in get per recuperare etag
                const orderDetail = await changeOrderProduction.send({
                    method: 'GET',
                    path: "A_ProductionOrder_2('" + OrderID[i] + "')"
                });
                let eTag = orderDetail.d.__metadata.etag;
                if (eTag !== null && eTag !== undefined && eTag !== "") {
                    try {
                        const result = await changeOrderProduction.send({
                            method: 'POST',
                            path: "ReleaseOrder?ManufacturingOrder='" + OrderID[i] + "'",
                            headers: {
                                'If-Match': eTag,
                                'Content-Type': 'application/json'
                            }
                        });
                        response = response + "|" + result.d.ReleaseOrder.SystemMessageLongText
                    } catch (error) {
                        console.log("ERRORE " + error)
                        if (response !== "") {
                            response = response + "|" + error
                        } else {
                            response = error
                        }
                    }
                }
            }

        } else {
            try {
                const result = await changeOrderProduction.send({
                    method: 'POST',
                    path: "ReleaseOrder?ManufacturingOrder='" + OrderID[0] + "'"
                });
                return result
            } catch (error) {
                //console.log("ERRORE "+error)
                return error
            }
        }

        console.log("RISPOSTA " + response)
        return response

    });

    this.on("TechnicalCompleteOrder", async (req) => {

        const { OrderID } = req.data;
        var response = ""

        if (OrderID.length > 1) {
            // array di valori
            for (var i = 0; i < OrderID.length; i++) {
                try {
                    const result = await changeOrderProduction.send({
                        method: 'POST',
                        path: "TechlyCmpltOrder?ManufacturingOrder='" + OrderID[i] + "'"
                    });
                    response = response + ";" + result
                } catch (error) {
                    console.log("ERRORE " + error)
                    if (response !== "") {
                        response = response + "|" + error
                    } else {
                        response = error
                    }
                }
            }

        } else {
            try {
                const result = await changeOrderProduction.send({
                    method: 'POST',
                    path: "TechlyCmpltOrder?ManufacturingOrder='" + OrderID[0] + "'"
                });
                return result
            } catch (error) {
                //console.log("ERRORE "+error)
                return error
            }
        }

        return response

    });

    this.on("CloseOrder", async (req) => {

        const { OrderID } = req.data;
        var response = ""

        if (OrderID.length > 1) {
            // array di valori
            for (var i = 0; i < OrderID.length; i++) {
                try {
                    const result = await changeOrderProduction.send({
                        method: 'POST',
                        path: "CloseOrder?ManufacturingOrder='" + OrderID[i] + "'"
                    });
                    response = response + ";" + result
                } catch (error) {
                    console.log("ERRORE " + error)
                    if (response !== "") {
                        response = response + "|" + error
                    } else {
                        response = error
                    }
                }
            }

        } else {
            try {
                const result = await changeOrderProduction.send({
                    method: 'POST',
                    path: "CloseOrder?ManufacturingOrder='" + OrderID[0] + "'"
                });
                return result
            } catch (error) {
                //console.log("ERRORE "+error)
                return error
            }
        }

        return response

    });

    this.on("Replacement", async (req) => {
        console.log("Replacement Action")

        const Records = req.data.Record;

        var payload = {
            "id": "001", "to_intcomp": Records
        }

        console.log("PAYLOAD " + JSON.stringify(payload))

        // Controllo che l'oggetto della request sia pieno
        if (req.data.Record.length === 0) return;

        try {

            let callCreate = await componentsCall.tx(req).post("/intcomph", payload)
            console.log("Risultato chiamata " + JSON.stringify(callCreate))
            /*if(multipleDelivery){
                var error = JSON.parse(JSON.stringify(callCreate)).DeliveryItems[0].FlErr
                if(error){
                    response = response + "; " + "Errore: " + JSON.parse(JSON.stringify(callCreate)).DeliveryItems[0].LogMess
                } else {
                    response = response + "; " + JSON.parse(JSON.stringify(callCreate)).DeliveryItems[0].vbeln
                }
            } else {
                return callCreate
            }*/

        } catch (error) {

            console.log("ERRORE " + error.message)

            return error.message

            /*if(multipleDelivery){
                response = response + "|| " + error.message
            } else {
                return error.message
            }    */
        }
    });

    this.on("CreateMaterialDocument", async (req) => {
        console.log("Chiamata ACTION CreateMaterialDocument")

        const Documents = req.data.Record;

        // Controllo che l'oggetto della request sia pieno
        if (req.data.Record.length === 0) return;

        var documentItemArray = []
        var documentItemObject = {}
        for (var i = 0; i < Documents.length; i++) {
            documentItemObject = {}
            documentItemObject.Material = Documents[i].Material
            documentItemObject.Plant = Documents[i].Plant
            documentItemObject.Batch = Documents[i].Batch
            documentItemObject.GoodsMovementType = '261'
            documentItemObject.QuantityInEntryUnit = (Documents[i].Quantity).toString()
            documentItemObject.EntryUnit = Documents[i].UnitMeasure
            documentItemObject.InventorySpecialStockType = 'O'
            documentItemObject.PurchaseOrder = Documents[i].PurchaseOrder
            documentItemObject.PurchaseOrderItem = Documents[i].PurchaseOrderItem
            documentItemObject.Supplier = Documents[i].Supplier
            documentItemObject.ManufacturingOrder = Documents[i].ManufacturingOrder
            //documentItemObject.ManufacturingOrderItem = Documents[i].ManufacturingOrderOperation
            documentItemArray.push(documentItemObject)
        }

        var postingCurrentDate = new Date()
        var year = postingCurrentDate.getFullYear()
        var month = postingCurrentDate.getMonth() + 1
        if (month < 10) {
            month = '0' + month.toString()
        }
        var day = postingCurrentDate.getDate()
        var postingDate = year.toString() + '-' + month.toString() + '-' + day.toString()

        var payload = {
            "PostingDate": postingDate + "T00:00:00",
            //"DocumentDate": "2025-04-22T00:00:00",
            "GoodsMovementCode": "03",
            //"ReferenceDocument": Documents[0].CprodOrd,
            "to_MaterialDocumentItem": documentItemArray
        }

        try {

            console.log("SUCCESSO!")

            let callCreate = await apiMaterialDocumentCreate.tx(req).post("/A_MaterialDocumentHeader", payload)
            console.log("RITORNO chiamata " + callCreate)
            console.log("Risultato chiamata " + JSON.stringify(callCreate))

            return callCreate

            //return apiMaterialDocumentCreate.tx(req).post("/A_MaterialDocumentHeader", payload)                 

        } catch (error) {

            console.log("MESSAGGIO ERRORE " + error.message)
            return error.message
        }
    });

    /*this.on("MovePhase", async (req) => {
        console.log("MovePhase Action")

        const Records = req.data.Record;
        
        var payload = {
            "id": "001", 
            "to_confodp": Records
        }

        console.log("PAYLOAD "+JSON.stringify(payload))

        // Controllo che l'oggetto della request sia pieno
        if (req.data.Record.length === 0) return;

        try {

            let callCreate = await confODP.tx(req).post("/confodph", payload)
            console.log("Risultato chiamata " + JSON.stringify(callCreate))

            return callCreate

        } catch (error) {

            console.log("ERRORE "+error.message)

            return error.message
            
            if(multipleDelivery){
                response = response + "|| " + error.message
            } else {
                return error.message
            }               
        }
    });*/

    this.on("DoKitting", async (req) => {
        console.log("Chiamata ACTION DoKitting")

        const Records = req.data.Record;

        // Controllo che l'oggetto della request sia pieno
        if (req.data.Record.length === 0) return;

        var payload = {
            "id": "001",
            "to_prod_ord": Records
        }

        try {

            let callCreate = await createKitting.tx(req).post("/prodordh", payload)
            console.log("Risultato chiamata prodordh " + JSON.stringify(callCreate))

            return callCreate;

        } catch (error) {

            console.log("ERRORE " + error.message)

            return error.message
        }

    });

    this.on("ConfODP", async (req) => {
        console.log("Chiamata ACTION ConfODP")

        const Records = req.data.Record;

        // Controllo che l'oggetto della request sia pieno
        if (req.data.Record.length === 0) return;

        var payload = {
            "id": "001",
            "to_confodp": Records
        }

        try {

            let callCreate = await confODP.tx(req).post("/confodph", payload)
            console.log("Risultato chiamata prodordh " + JSON.stringify(callCreate))

            return callCreate

        } catch (error) {

            console.log("ERRORE " + error.message)

            return error.message
        }

    });

    this.on("ManageODPPhase", async (req) => {
        console.log("ManageODPPhase Action")

        const Records = req.data.Record;

        var payload = {
            "id": "001",
            "to_operations": Records
        }

        console.log("PAYLOAD " + JSON.stringify(payload))

        // Controllo che l'oggetto della request sia pieno
        if (req.data.Record.length === 0) return;

        try {

            let callCreate = await manageODPPhase.tx(req).post("/operationh", payload)
            console.log("Risultato chiamata " + JSON.stringify(callCreate))

            return callCreate

        } catch (error) {

            console.log("ERRORE " + error.message)

            return error.message
        }
    });

    this.on("GetOrderDetails", async (req) => {
        console.log("GetOrderDetails Action")

        const { oidOrdine } = req.data;
        var result

        const endpoint =
            `/SuMisura/Service/getOrderDetails/getOrderDetails?oidOrdine=${oidOrdine}`;

        try {
            result = await urlRolExternal.send({
                method: "GET",
                path: endpoint,
                headers: {
                    Accept: "application/json"
                }
            });

            console.log("LOG ROL " + JSON.stringify(result))

        } catch (err) {
            console.error(err);
            req.error(500, "Errore chiamando LP ROL");
        }

        /*const axios = SapCfAxios("ROL");
        try {
            const response = await axios({
            method: 'GET',
            url: '/SuMisura/Service/getOrderDetails/getOrderDetails?oidOrdine=S000026497'
        });
        console.log("LOG "+response)
        } catch (error) {
            console.log("ERROR "+error)
        }*/

        // scrivo nel CBO
        if (result !== undefined && result !== null) {
            const newRecord = {
                SAP_UUID: cds.utils.uuid(), // genera un UUID
                numeroOrdineROL: result.numeroOrdineROL,
                articoloCod: result.articoloCod,
                coloreCod: result.coloreCod,
                taglia: result.taglia,
                numeroPezzi: result.numeroPezzi,
                tessuto: result.tessuto,
                //dataConsegnaBorgosesia: "",
            };

            // controllo se esiste già record con quell'ordine
            var selectROL = await rol.run(
                SELECT("ZZ1_MFG_ROL_ORDERS").where({ numeroOrdineROL: result.numeroOrdineROL })
            );

            if (Object.keys(selectROL).length === 0) {
                await rol.run(
                    INSERT.into("ZZ1_MFG_ROL_ORDERS").entries(newRecord)
                );
            }

            console.log("SALVO su CBO ")

            return result;
        }

    });

    this.on("GetMaterialDetails", async (req) => {
        console.log("GetMaterialDetails Action")

        const { oidOrdine } = req.data;
        var result = []
        
        var srvOrderLinked = await cds.connect.to('ZZ1_PRODUCTION_COCKPIT_API_CDS')
        var dataOrderLinked = await srvOrderLinked.read('ZZ1_PRODUCTION_COCKPIT_API').where({ CprodOrd: oidOrdine })

        if(dataOrderLinked.length > 0){
            console.log("QUIII")
            // creo filtri per chiamata a ZMF_IMD_MATERIAL
            var arrayDataMaterial = []
            for(var i=0; i<dataOrderLinked.length; i++){
                arrayDataMaterial.push(dataOrderLinked[i].Material)     
            }
            console.log("QUIII 2222" +JSON.stringify(arrayDataMaterial))
            var srvMaterialDet = await cds.connect.to('ZMF_IMD_MATERIAL_CDS')
            result = await srvMaterialDet.read('ZMF_IMD_MATERIAL').where({ matnr: { in: arrayDataMaterial } })
        }

        console.log("arrayDataMaterial "+ JSON.stringify(result))
        
        return result;

    });



    this.on('READ', "ZZ1_MFG_ROL_ORDERS", async request => {
        console.log("chiamata ZZ1_MFG_ROL_ORDERS")
        var data = await rol.tx(request).run(request.query);
        console.log("lunghezza array " + data.length)

        return data;
    });

    this.on("READ", "ZC_RFM_PRODUCTION_PLANT_F4", async (req) => {
        const result = await zmfp_mrp_plant_f4.run(req.query);
        return result;
    });

    this.on('READ', "ZC_RFM_MRPCONTROLLER_F4", async request => {
        request.query.SELECT.count = false
        var data = await cdsMRPController.tx(request).run(request.query);

        return data;
    });

    this.on('READ', "C_RFM_ManageMasterMfgOrder", async request => {
        request.query.SELECT.count = false
        var data = await chartMaster.tx(request).run(request.query);

        return data;
    });

    this.on('READ', "C_RFM_ManageCombinedMfgOrder", async request => {
        request.query.SELECT.count = false
        var data = await chartMaster.tx(request).run(request.query);

        return data;
    });

})