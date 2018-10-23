Feature: Zigbee - Open network

	Background:
		* url endUserUrlBase

	Scenario: Leave network
		Given path "/exec/apply" 
		And request action
		When method post
		Then status 200
		* def execId = response.execId