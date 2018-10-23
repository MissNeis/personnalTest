@TXJV-123
Feature:

Background:
#@TXJV-122
* url endUserUrlBase
* call read('../login.feature') { login: #(endUserLogin), password: #(endUserPassword), myUrl: #(endUserUrlBase) }
* def hasStackLeaveNwk = read('hasZigbeeStackLeaveNetwork.js')
* def hasStack = read('hasZigbeeStack.js')
* def waitUntilStackFound = read('waitStackFound.js')
* def waitUntilEventFound = read('waitEventFound.js')
* def openNetworkCommand = {actions:[{deviceURL:"zigbee://VIRT001/1/1",commands:[{name:"openNetworkManagement"}]}]}




@TXJV-121
Scenario: test karate zigbee open network

Scenario: Zigbee open network
* call read('../registerEvents.feature')

* eval if (hasStack()) karate.call('../zigbeeLeaveNetwork.feature')
* call read('../zigbeeCreateNetwork.feature')
* def stackFound = waitUntilStackFound(1)
* match stackFound == true
* def events = call read('../fetchEvents.feature')
* def createNetworkEvent = get[0] events $[?(@.name == 'ZigbeeCreateNetworkCompletedEvent')]
* call read('../zigbeeOpenNetwork.feature') { action: openNetworkCommand }
* eval waitUntilEventFound(execId)
* match eventFound.newState == "COMPLETED"

* call read('../logout.feature') { myUrl: #(endUserUrlBase) } 