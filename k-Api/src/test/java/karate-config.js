function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    myVarName: 'someValue',
    urlBase: 'https://gorest.co.in/public/v2',
    AuthBearer: 'Bearer 700d0c7a86eb84028bf5cd204b11587f812f9d7cd880dc4edbdbd1d407ae9954',
    appId: karate.properties['userId']

  }
  if (env == 'dev') {
    // customize
    // config.urlBase = 'https://gorest.co.in/public/v2';
  } else if (env == 'e2e') {
    // customize
    // config.urlBase = 'https://gorest.co.in/public/v2';
  }
  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);
  return config;
}