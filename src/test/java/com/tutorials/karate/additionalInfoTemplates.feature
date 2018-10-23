Feature: Test Get AdditionalInfoTemplates API

	Background:
	* url urlBase

	Scenario: Login as superadmin, get devices for gateway and logout

		Given path "/protocols/" + device.protocolType + "/deviceType/" + device.typeId + "/additionalInfoTemplates"
		When method GET
		Then status 200