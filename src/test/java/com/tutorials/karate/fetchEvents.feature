Feature: fetch events

	Background:
		* url endUserUrlBase

	Scenario: Register events on enduserAPI
		Given path "/events/", listenerId, "/fetch"
		And request ''
		When method post
		Then status 200
