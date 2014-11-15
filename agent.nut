/*
  InsightsAgent.nut - A simple New Relic Insights event poster
  Created by Jason Snell, November 14, 2014
  MIT License.
*/

// You'll need to edit these values to include your account and key
const INSIGHTS_ACCOUNT = "<your NR account number>";
const INSIGHTS_API_KEY = "<your Insights API key>";


// Simply drop this into your agent and use agent.send("insights", event) 
// in your device code.  An example event might look like:
//   local event = {
//     eventType = "ExampleEvent",
//     platform  = "ElectricImp",
//     cats      = 100,
//   };
device.on("insights", function(event) {
    const INSIGHTS_URI = "https://insights-collector.newrelic.com";
    
    local body = http.jsonencode(event);
    local headers = {
        "Content-Type" : "application/json",
        "Accept"       : "application/json",
        "X-Insert-Key" : INSIGHTS_API_KEY,
    }

    local url = INSIGHTS_URI + "/v1/accounts/" + INSIGHTS_ACCOUNT + "/events";
    local res = http.post(url, headers, body).sendsync();
    
    if (res.statuscode != 200) {
        server.log("[Insights] Error sending Insights event: " + res.body);
    } else {
        server.log("[Insights] Sent Insights event");
    }
});

