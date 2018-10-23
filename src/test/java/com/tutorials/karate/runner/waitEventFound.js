function(x) {
	var occurences = 0;
  	while (occurences < x) {
    	var events = karate.call('../fetchEvents.feature');
    	var eventExpected = karate.call('../checkExpectedEvent.feature', {events: events, execId: x});
    	karate.log('sleeping');
    	occurences++;
    	java.lang.Thread.sleep(1000);
  	}
  	return false;
}