import cds from '@sap/cds'

export class catalogService extends cds.ApplicationService { init() {

  const { IntegrationPackages } = cds.entities('catalogService')

  
  this.on ('READ', IntegrationPackages, async (req) => {
    const con = await cds.connect.to('sapci');
    //delete req.query.cds.cql.SELECT;
    //if(req.query.SELECT) req.error(501,"$select not implemented");
    return await con.run(SELECT.from('IntegrationPackages'));
    //console.log('After READ IntegrationPackages', integrationPackages)
  })


  return super.init()
}}
