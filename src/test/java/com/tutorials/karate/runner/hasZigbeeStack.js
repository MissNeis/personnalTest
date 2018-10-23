function() {
	var stack = "zigbee:StackComponent";
	var stackV3 = "zigbee:StackV3Component";
	var controllables = karate.call('../getControllables.feature');

	for (var currentControllable in controllables)
	{
		if (currentControllable == stack || currentControllable == stackV3)
		{
				return true;
		}
	}
	return false;
}