Feature: Zigbee - Create network

	Background:
		* url endUserUrlBase

	Scenario: Leave network
		Given path "/config/", gatewayId, "/zigbee/createNetwork" 
		And request ''
		When method post
		Then status 200