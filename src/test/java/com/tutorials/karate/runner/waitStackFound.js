function(x) {
	var occurences = 0;
	var stack = "zigbee:StackComponent";
	var stackV3 = "zigbee:StackV3Component";
  	while (occurences < x) {
    	var controllables = karate.call('../getControllables.feature');
    	for (var currentControllable in controllables)
		{
			if (currentControllable == stack || currentControllable == stackV3)
			{
				return true;
			}
		}
    	karate.log('sleeping');
    	occurences++;
    	java.lang.Thread.sleep(1000);
  	}
  	return false;
  	
}