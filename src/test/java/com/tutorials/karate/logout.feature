Feature: Test Logout API

	Scenario: Login as superadmin, get protocols activated for gateway and logout
		Given path "/logout"
		Given url myUrl
		And request ''
		When method POST
		Then status 200