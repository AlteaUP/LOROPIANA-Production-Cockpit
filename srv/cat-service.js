const { default: cds } = require("@sap/cds");

module.exports = cds.service.impl(async function (srv) {

    const combProdOrd = await cds.connect.to('ZZ1_I_COMBPRODORDAPI_CDS');
    const masterProdOrd = await cds.connect.to('ZZ1_C_MASTERPRODORDERAPI_CDS');
    const changeOrderProduction = await cds.connect.to('API_PRODUCTION_ORDER_2_SRV');

    this.on('READ', "ZZ1_I_COMBPRODORDAPI", async request => {
        console.log("chiamata ZZ1_I_COMBPRODORDAPI_CDS")
        var data = await combProdOrd.tx(request).run(request.query);
        console.log("lunghezza array "+data.length)

        return data;
    });

    this.on('READ', "ZZ1_C_MASTERPRODORDER", async request => {
        console.log("chiamata ZZ1_C_MASTERPRODORDER")        
        var data = await combProdOrd.tx(request).run(request.query);
        console.log("lunghezza array "+data.length)

        return data;
    });

    this.on('READ', "ZZ1_C_COMBINEDPRODORDER", async request => {
        console.log("chiamata ZZ1_C_COMBINEDPRODORDER")        
        var data = await combProdOrd.tx(request).run(request.query);
        console.log("lunghezza array "+data.length)

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

        const srv = await cds.connect.to('ZZ1_C_MASTERPRODORDERAPI_CDS')

        const data = await srv.send({
            method: 'GET',
            path: `/ZZ1_C_MASTERPRODORDERAPI('${id}')/to_ZZ1_C_MASTERORDER_COMP`
        })

        console.log("risultati MASTER COMP: ", data.length)

        return data;
    });

    this.on('READ', "ZZ1_C_MFG_MASTEROPER", async request => {
        console.log("chiamata ZZ1_C_MFG_MASTEROPER")
        
        let id = null
        try {
            id = request.query.SELECT.from.ref[0].where[2].val
        } catch (err) {
            console.error("impossibile estrarre l'ID ", err)
        return []
        }
        console.log("ID estratto: ", id)

        const srv = await cds.connect.to('ZZ1_C_MASTERPRODORDERAPI_CDS')

        const data = await srv.send({
            method: 'GET',
            path: `/ZZ1_C_MASTERPRODORDERAPI('${id}')/to_ZZ1_C_MFG_MASTEROPE`
        })

        console.log("risultati MASTER OPER: ", data.length)

        return data;
    });

    this.on('READ', "ZZ1_C_COMBORDER_COMP", async request => {
        console.log("chiamata ZZ1_C_COMBORDER_COMP")

        let id = null
        try {
            id = request.query.SELECT.from.ref[0].where[2].val
        } catch (err) {
            console.error("impossibile estrarre l'ID ", err)
        return []
        }
        console.log("ID estratto: ", id)

        const srv = await cds.connect.to('ZZ1_C_COMBINEDPRODORDERAPI_CDS')

        const data = await srv.send({
            method: 'GET',
            path: `/ZZ1_C_COMBINEDPRODORDERAPI('${id}')/to_ZZ1_C_COMBORDER_COMP`
        })

        console.log("risultati COMBINED COMP: ", data.length)

        return data;
    });

    this.on('READ', "ZZ1_C_MFG_COMBINEDOPER", async request => {
        console.log("chiamata ZZ1_C_MFG_COMBINEDOPER")
        
        let id = null
        try {
            id = request.query.SELECT.from.ref[0].where[2].val
        } catch (err) {
            console.error("impossibile estrarre l'ID ", err)
        return []
        }
        console.log("ID estratto: ", id)

        const srv = await cds.connect.to('ZZ1_C_COMBINEDPRODORDERAPI_CDS')

        const data = await srv.send({
            method: 'GET',
            path: `/ZZ1_C_COMBINEDPRODORDERAPI('${id}')/to_ZZ1_C_MFG_COMBINEDOPE`
        })

        console.log("risultati COMBINED OPER: ", data.length)

        return data;
    });

    this.on('READ', "ZZ1_C_MFG_OrderComp", async request => {
        console.log("chiamata ZZ1_C_MFG_OrderComp")
        console.log("AAAAAA "+request.query)
        var data = await combProdOrd.tx(request).run(request.query);
        console.log("lunghezza array "+data.length)

        return data;
    });

    
    this.on('READ', "ZZ1_C_MFG_ORDEROPE", async request => {
        console.log("chiamata ZZ1_C_MFG_ORDEROPE")
        console.log("BBBBBB "+request.query)
        var data = await combProdOrd.tx(request).run(request.query);
        console.log("lunghezza array "+data.length)

        return data;
    });

    this.on('READ', "ZZ1_C_MASTERPRODORDERAPI", async request => {
        console.log("chiamata ZZ1_C_MASTERPRODORDERAPI")
        var data = await masterProdOrd.tx(request).run(request.query);
        console.log("lunghezza array "+data.length)

        return data;
    });

    this.on("READ", "ZZ1_C_MASTERORDER_COMP", async (req) => {
        try {
        // collego al servizio remoto
        const masterSrv = await cds.connect.to("ZZ1_C_MASTERPRODORDERAPI_CDS");

        // inoltro la query originale al servizio esterno
        const result = await masterSrv.run(req.query);

        return result;
        } catch (err) {
        req.error(500, `Errore durante la fetch da ZZ1_C_MASTERPRODORDERAPI_CDS: ${err.message}`);
        }
    });

    this.on("ReleaseOrder", async (req) => {

        const { OrderID } = req.data;
        var response = ""

        if(OrderID.length > 1){
            // array di valori
            for(var i=0; i<OrderID.length; i++){
                // chiamo l'API in get per recuperare etag
                const orderDetail = await changeOrderProduction.send({
                    method: 'GET',  
                    path: "A_ProductionOrder_2('"+OrderID[i]+"')"
                });
                let eTag = orderDetail.d.__metadata.etag;
                if(eTag !== null && eTag !== undefined && eTag !== ""){                    
                    try {
                        const result = await changeOrderProduction.send({
                            method: 'POST',  
                            path: "ReleaseOrder?ManufacturingOrder='"+OrderID[i]+"'",
                            headers: {
                                'If-Match': eTag,
                                'Content-Type': 'application/json'
                            }
                        });
                        response = response + "|" + result.d.ReleaseOrder.SystemMessageLongText
                    } catch (error) {
                        console.log("ERRORE "+error)
                        if(response !== "" ){
                            response = response + "|"+ error
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
                    path: "ReleaseOrder?ManufacturingOrder='"+OrderID[0]+"'"
                });
                return result
            } catch (error) {
                //console.log("ERRORE "+error)
                return error
            }
        }

        console.log("RISPOSTA "+response)
        return response
       
    });

    this.on("TechnicalCompleteOrder", async (req) => {

        const { OrderID } = req.data;
        var response = ""

        if(OrderID.length > 1){
            // array di valori
            for(var i=0; i<OrderID.length; i++){
                try {
                    const result = await changeOrderProduction.send({
                        method: 'POST',  
                        path: "TechlyCmpltOrder?ManufacturingOrder='"+OrderID[i]+"'"
                    });
                    response = response + ";" + result
                } catch (error) {
                    console.log("ERRORE "+error)
                    if(response !== "" ){
                        response = response + "|"+ error
                    } else {
                        response = error
                    }
                }
            }

        } else {
            try {
                const result = await changeOrderProduction.send({
                    method: 'POST',  
                    path: "TechlyCmpltOrder?ManufacturingOrder='"+OrderID[0]+"'"
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

        if(OrderID.length > 1){
            // array di valori
            for(var i=0; i<OrderID.length; i++){
                try {
                    const result = await changeOrderProduction.send({
                        method: 'POST',  
                        path: "CloseOrder?ManufacturingOrder='"+OrderID[i]+"'"
                    });
                    response = response + ";" + result
                } catch (error) {
                    console.log("ERRORE "+error)
                    if(response !== "" ){
                        response = response + "|"+ error
                    } else {
                        response = error
                    }
                }
            }

        } else {
            try {
                const result = await changeOrderProduction.send({
                    method: 'POST',  
                    path: "CloseOrder?ManufacturingOrder='"+OrderID[0]+"'"
                });
                return result
            } catch (error) {
                //console.log("ERRORE "+error)
                return error
            }
        }

        return response
       
    })

});