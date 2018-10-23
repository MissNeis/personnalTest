@login
Feature: Test Login API

	Scenario: Login as superadmin, get protocols activated for gateway and logout
		Given form field userId = login
		Given form field userPassword = password
		Given url myUrl
		Given path "/login"
		And request ''
		When method POST
		Then status 200
