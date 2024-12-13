-- Written by moritz@zimmer.partners, September 4, 2023
-- License: CC BY 4.0 https://creativecommons.org/licenses/by/4.0/

use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions
use framework "Foundation"
use framework "AppKit"

property excludeApps : {"Finder", "Terminal", "Transmit", "Tweetie", "Pukka", "Address Book", "iChat", "Skype", "Messages", "Franz", "Signal Private Messenger"}

-- GEOMETRY SETTINGS
property maxWindowWidth : 1275
property maxWideWindowWidth : 1475
property stackingGap : 35
property standardGap : 7
property dockGap : 9
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

on run
	GUIScripting_status()
	tell application "System Events"
		
		-- Calculate edges
		if not autohide of dock preferences then
			set dockProps to property list file "~/Library/Preferences/com.apple.dock.plist"
			set dockTileSize to the (value of (property list item "tilesize" of dockProps))
			if screen edge of dock preferences is bottom then
				set leftGap to standardGap
				set bottomGap to dockTileSize + dockGap + standardGap + dockGap
			else if screen edge of dock preferences is left then
				set leftGap to dockTileSize + dockGap + standardGap
				set bottomGap to standardGap
			end if
		else
			set leftGap to standardGap
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
		
		set visibleProcesses to application processes whose visible is true and frontmost is true
		repeat with xProcess in visibleProcesses
			if name of xProcess is not in excludeApps then
				-- Cascade windows
				set standardWindows to (windows of xProcess whose subrole is "AXStandardWindow" and value of attribute "AXFullScreen" is false and name is not "Downloads" and name is not "Open")
				set windowCount to count of standardWindows
				if windowCount ≥ 1 then
					-- set standardWindows to reverse of standardWindows
					set standardWindows to standardWindows
					set maxWidth to boundWidth
					set maxHeight to boundHeight
					set stackOrder to 0
					set windowObject to first item of standardWindows
					-- repeat with windowObject in standardWindows
					set stackOrder to stackOrder + 1
					cascadeWindow(1, maxWidth, maxHeight, windowObject) of me
					-- end repeat
				end if
			end if
		end repeat
	end tell
end run

on cascadeWindow(stackOrder, maxWidth, maxHeight, windowObject)
	tell application "System Events"
		set position of windowObject to {leftBound + (stackOrder - 1) * stackingGap, topBound + (stackOrder - 1) * stackingGap}
		set size of windowObject to {maxWidth, maxHeight}
		set checkHeight to size of windowObject
		if (second item of checkHeight) is not maxHeight then
			set size of windowObject to {maxWidth, maxHeight - 30} -- Lion won't resize sometimes, force it
			set size of windowObject to {maxWidth, maxHeight}
		end if
	end tell
end cascadeWindow

on GUIScripting_status()
	-- check to see if assistive devices is enabled
	tell application "System Events"
		set UI_enabled to UI elements enabled
	end tell
	if UI_enabled is false then
		tell application "System Settings"
			activate
			set current pane to pane id "com.apple.preference.universalaccess"
			display dialog "This script utilizes the built-in Graphic User Interface Scripting architecture of Mac OS x which is currently disabled." & return & return & "You can activate GUI Scripting by selecting the checkbox \"Enable access for assistive devices\" in the Universal Access preference pane." with icon 1 buttons {"Cancel"} default button 1
		end tell
	end if
end GUIScripting_status

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
