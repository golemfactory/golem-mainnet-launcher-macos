--
--  AppDelegate.applescript
--  Golem
--
--  Created by Marek Franciszkiewicz on 14/03/2018.
--

script AppDelegate
	property parent : class "NSObject"
	
	-- IBOutlets
	property theWindow : missing value
	
	on applicationWillFinishLaunching_(aNotification)
		do shell script "open -a 'golem.app' --args '--mainnet'"
        tell me to quit
	end applicationWillFinishLaunching_
	
	on applicationShouldTerminate_(sender)
		return current application's NSTerminateNow
	end applicationShouldTerminate_
	
end script
