Feature: Test Get Protocols Activated API

	Background:
	* url urlBase
	* call read('../login.feature') { login: #(appLogin), password: #(appPassword), myUrl: #(urlBase) }
	* def fun = read('loop.js')

	Scenario: Login, get devices for gateway, loop over it and logout

		Given path "/gateways/" + gatewayId + "/rawdevices"
		When method GET
		Then status 200
		* def rawDevices = response
		
		* def res = fun(rawDevices)

		* call read('../logout.feature') { myUrl: #(urlBase) }