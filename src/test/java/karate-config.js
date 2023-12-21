function fn() {
    var env = karate.env; // get system property 'karate.env'
    karate.log('karate.env system property was:', env);
    if (!env) {
        env = '';
    }
    var config = {
        env: env,
        username: 'belajarKuy',
        password: 'cobajadulu',
        baseURL: 'https://petstore.swagger.io/v2/'
    }
    if (env == 'dev') {
        config.baseURL = 'https://petstore.swagger.io/v2/dev'
    } else if (env == 'stg') {
        config.baseURL = 'https://petstore.swagger.io/v2/stg'
    }

    karate.configure('connectTimeout',30000)
    karate.configure('readTimeout',30000)

    return config;
}