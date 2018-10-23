function() {   
	  var env = karate.env; // get java system property 'karate.env'
	  karate.log('karate.env system property was:', env);
	  if (!env) {
	    env = 'dev'; // a custom 'intelligent' default
	  }
	  var config = { // base config JSON
	    appLogin: 'superadmin',
	    appPassword: 'secure2',
	    urlBase: 'http://localhost:8080/admin-web/adminAPI',
	    endUserLogin: 'Virt1',
	    smartkizLogin: 'smartkiz',
	    endUserPassword: 'Lapin74!',
	    endUserUrlBase: 'http://localhost:8080/enduser-mobile-web/enduserAPI',
	    gatewayId: 'VIRT001'
	  };
	  // don't waste time waiting for a connection or if servers don't respond within 5 seconds
	  karate.configure('connectTimeout', 5000);
	  karate.configure('readTimeout', 5000);
	  return config;
	}
