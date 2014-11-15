## New Relic Insights Electric Imp Library

Use this library to easily post custom events to New Relic Insights.  It should work on all Electric Imp OS versions and hardware.

## Usage
Simply merge the code from agent.nut into your Agent and ensure your account number and API key is set.  Then from your device code, it's possible to do the following:

    // Construct an event...
    local event = {
        eventType = "ExampleEvent",
        platform  = "ElectricImp",
        cats      = 100,
    };
    
    // And send it!
    agent.send("insights", event);

See device.nut for a more complete example on how to use this library.

## Contributions
Contributions are more than welcome. Bug reports with specific reproduction
steps are great. If you have a code contribution you'd like to make, open a
pull request with suggested code.

Pull requests should:

 * Clearly state their intent in the title
 * Have a description that explains the need for the changes

By contributing to this project you agree that you are granting New Relic a
non-exclusive, non-revokable, no-cost license to use the code, algorithms,
patents, and ideas in that code in our products if we so choose. You also agree
the code is provided as-is and you provide no warranties as to its fitness or
correctness for any purpose.

## License
Copyright (c) 2014 New Relic, Inc. See the LICENSE file for license rights and limitations (MIT).

