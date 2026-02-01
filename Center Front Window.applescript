-- Written by moritz@zimmer.partners, September 4, 2023
-- License: CC BY 4.0 https://creativecommons.org/licenses/by/4.0/

use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions
use framework "Foundation"
use framework "AppKit"

-- GEOMETRY SETTINGS
property maxWindowWidth : 1275
property maxWideWindowWidth : 1475
property stackingGap : 35
property standardGap : 8
property dockGap : 14
property desktopGap : 250
property snappingGap : 20
property menubarHeight : 25 -- 38 for Macs with Lasche, 25 for others

-- Iternal
property monitorHeight : 0
property monitorWidth : 0
property topBound : 0
property leftBound : 0
property boundWidth : 0
property boundHeight : 0
property leftGap : 0
property topGap : 7
property bottomGap : 0

tell application "System Events"
	
	set myFrontMostApp to "" & short name of first item of (processes whose frontmost is true)
	
	-- Calculate edges
	if not autohide of dock preferences and screen edge of dock preferences is bottom then
		set dockProps to property list file "~/Library/Preferences/com.apple.dock.plist"
		set bottomGap to the (value of (property list item "tilesize" of dockProps)) + bottomGap + standardGap + dockGap
	else
		set bottomGap to standardGap
	end if
	
	-- Calculate positioning frame
	set screenProps to screenRecords(true) of me
	if screenProps is {} then
		error "Couldn't get screen resolution"
	end if
	set menubarHeight to menubarHeight of screenProps
	set monitorProps to frame of screenProps
	set {monitorHeight, monitorWidth} to {height, width} of monitorProps
	set topBound to menubarHeight + standardGap
	if (monitorWidth ≤ 1920) then
		set leftBound to (monitorWidth - maxWindowWidth) / 2 + leftGap
		set boundWidth to maxWindowWidth - leftGap - standardGap
	else
		set leftBound to (monitorWidth - maxWideWindowWidth) / 2 + leftGap
		set boundWidth to maxWideWindowWidth - leftGap - standardGap
	end if
	set boundHeight to monitorHeight - topBound - bottomGap

end tell


try
	
	tell application myFrontMostApp
		set windowBounds to bounds of window 1
		set windowLeft to item 1 of windowBounds
		set windowTop to item 2 of windowBounds
		set windowRight to item 3 of windowBounds
		set windowBottom to item 4 of windowBounds
		set windowHeight to windowBottom - windowTop
		set windowWidth to windowRight - windowLeft
		
		set newWindowLeft to (monitorWidth - windowWidth) / 2
		set newWindowTop to (monitorHeight - windowHeight - bottomGap) / 2
		tell window 1
			set bounds to {newWindowLeft, newWindowTop, newWindowLeft + windowWidth, newWindowTop + windowHeight}
		end tell
	end tell
	
end try

on screenRecords(mainScreenOnly)
	-- Get the array of screens using Objective-C
	set screens to current application's NSScreen's screens()
	-- Convert the NSScreen objects to AppleScript records
	set screenRecords to {}
	repeat with screen in screens
		set screenBounds to screen's frame()
		set screenVisibleBounds to screen's visibleFrame()
		set screenName to screen's localizedName() as string
		set screenBackingScaleFactor to screen's backingScaleFactor() as string
		set screenFrame to {|left|:item 1 of item 1 of screenBounds, top:item 2 of item 1 of screenBounds, width:item 1 of item 2 of screenBounds, height:item 2 of item 2 of screenBounds}
		set screenVisibleFrame to {|left|:item 1 of item 1 of screenVisibleBounds, top:item 2 of item 1 of screenVisibleBounds, width:item 1 of item 2 of screenVisibleBounds, height:item 2 of item 2 of screenVisibleBounds}
		set screenMenuBarHeight to ((height of screenFrame) - (height of screenVisibleFrame) - (top of screenVisibleFrame))
		if (item 1 of item 1 of screenBounds is 0 and item 2 of item 1 of screenBounds is 0) then
			set screenRecord to {name:screenName, frame:screenFrame, visibleFrame:screenVisibleFrame, scaleFactor:screenBackingScaleFactor, menubarHeight:screenMenuBarHeight, isMainScreen:false}
			if mainScreenOnly is true then
				return screenRecord
			end if
		else
			set screenRecord to {name:screenName, frame:screenFrame, visibleFrame:screenVisibleBounds, scaleFactor:screenBackingScaleFactor, menubarHeight:screenMenuBarHeight, isMainScreen:false}
		end if
		set end of screenRecords to screenRecord
	end repeat
	return screenRecords
end screenRecords
