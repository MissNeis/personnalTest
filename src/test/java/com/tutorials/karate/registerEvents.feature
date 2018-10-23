Feature: register events

	Background:
		* url endUserUrlBase

	Scenario: Register events on enduserAPI
		Given path "/events/register"
		And request ''
		When method post
		Then status 200
		* def listenerId = response.id
		