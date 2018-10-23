Feature: Zigbee - Leave network

	Background:
		* url endUserUrlBase

	Scenario: Leave network
		Given path "/config/", gatewayId, "/zigbee/leaveNetwork" 
		And request ''
		When method post
		Then status 200