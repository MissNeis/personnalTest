Feature: check if requested event is found

	Scenario: check if requested event is found
		* def eventFound = get events $[?(@.execId == execId)]
