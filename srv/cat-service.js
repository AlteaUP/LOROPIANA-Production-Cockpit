const { default: cds } = require("@sap/cds");

module.exports = cds.service.impl(async function (srv) {

    const combProdOrd = await cds.connect.to('ZZ1_I_COMBPRODORDAPI_CDS');
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
        var data = await combProdOrd.tx(request).run(request.query);
        console.log("lunghezza array "+data.length)

        return data;
    });

    this.on('READ', "ZZ1_C_MFG_MASTEROPER", async request => {
        console.log("chiamata ZZ1_C_MFG_MASTEROPER")
        var data = await combProdOrd.tx(request).run(request.query);
        console.log("lunghezza array "+data.length)

        return data;
    });

    this.on("ReleaseOrder", async (req) => {

        const { OrderID } = req.data;
        var response = ""

        if(OrderID.length > 1){
            // array di valori
            for(var i=0; i<OrderID.length; i++){
                try {
                    const result = await changeOrderProduction.send({
                        method: 'POST',  
                        path: "ReleaseOrder?ManufacturingOrder='"+OrderID[i]+"'"
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
                    path: "ReleaseOrder?ManufacturingOrder='"+OrderID[0]+"'"
                });
                return result
            } catch (error) {
                //console.log("ERRORE "+error)
                return error
            }
        }

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