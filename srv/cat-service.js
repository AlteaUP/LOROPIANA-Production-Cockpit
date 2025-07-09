const { default: cds } = require("@sap/cds");

module.exports = cds.service.impl(async function (srv) {

    const combProdOrd = await cds.connect.to('ZZ1_I_COMBPRODORDAPI_CDS');

    this.on('READ', "ZZ1_I_COMBPRODORDAPI", async request => {
        console.log("chiamata ZZ1_I_COMBPRODORDAPI_CDS")
        var data = await combProdOrd.tx(request).run(request.query);
        console.log("lunghezza array "+data.length)

        return data;
    });

});