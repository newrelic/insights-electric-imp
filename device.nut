/*
  InsightsDevice.nut - A simple New Relic Insights event poster
  Created by Jason Snell, November 14, 2014
  MIT License.
*/

imp.setpowersave(true);

function loop() {
    local event = {
        eventType = "ExampleEvent", // Required
        platform  = "ElectricImp",
        cats      = 100,
    };
    
    agent.send("insights", event);
    
    // See you soon!
    imp.wakeup(5, loop);
}; loop();
