function(rawDevices) {  
  var res = []; 
  for (var i = 0; i < rawDevices.length; i++) {
    var res1 = karate.call('../additionalInfoTemplates.feature', {device: rawDevices[i]});
    res.push(res1.response);
  }
  return res; 
}