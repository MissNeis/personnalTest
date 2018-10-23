Feature: Get controllables

	Background:
		* url endUserUrlBase

	Scenario: get controllables
		Given path "/setup/devices/controllables" 
		When method get
		Then status 200