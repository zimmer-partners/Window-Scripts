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
property standardGap : 5
property dockGap : 10
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
	-- Calculate edges
	if not autohide of dock preferences and screen edge of dock preferences is bottom then
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
	set monitorProps to frame of screenRecords(true) of me
	if monitorProps is null then
		error "Couldn't get screen resolution"
	end if
	set {monitorHeight, monitorWidth} to {height, width} of monitorProps
	set topBound to menubarHeight + standardGap
	if (monitorWidth ² 1920) then
		set leftBound to (monitorWidth - maxWindowWidth) / 2 + leftGap
		set boundWidth to maxWindowWidth - leftGap - standardGap
	else
		set leftBound to (monitorWidth - maxWideWindowWidth) / 2 + leftGap
		set boundWidth to maxWideWindowWidth - leftGap - standardGap
	end if
	set boundHeight to monitorHeight - topBound - bottomGap
	
	-- Filter out Adobe apps
	set visibleProcesses to application processes whose visible is true and frontmost is true
	set xWindow to window 1 of first item of visibleProcesses
	snapToEdge(xWindow) of me
	fillHeight(xWindow) of me
end tell

on snapToEdge(thisWindow)
	tell application "System Events"
		set xPos to position of thisWindow
		set xSize to size of thisWindow
		-- constrain window height
		if second item of xSize > boundHeight then
			set size of thisWindow to {first item of xSize, boundHeight}
			set checkHeight to size of thisWindow
			if (second item of checkHeight) is not boundHeight then
				set size of thisWindow to {first item of xSize, boundHeight - bottomGap} -- Lion won't resize sometimes, force it
				set size of thisWindow to {first item of xSize, boundHeight}
			end if
		end if
		-- vertical decluttering
		if second item of xPos < (snappingGap + menubarHeight) then
			set position of thisWindow to {first item of xPos, topBound}
		else if monitorHeight - bottomGap - ((second item of xPos) + (second item of xSize)) < snappingGap then
			set position of thisWindow to {first item of xPos, monitorHeight - bottomGap - (second item of xSize)}
		end if
		set xPos to position of thisWindow
		-- horizontal decluttering
		-- if monitorWidth - finderGap - ((first item of xPos) + (first item of xSize)) < standardGap then
		if monitorWidth - ((first item of xPos) + (first item of xSize)) < standardGap then
			-- set position of thisWindow to {monitorWidth - ((first item of xSize) + finderGap), second item of xPos}
			set position of thisWindow to {monitorWidth - ((first item of xSize) + standardGap), second item of xPos}
		else if first item of xPos < snappingGap then
			set position of thisWindow to {standardGap, second item of xPos}
		end if
	end tell
end snapToEdge

on fillHeight(thisWindow)
	tell application "System Events"
		set xPos to position of thisWindow
		set xSize to size of thisWindow
		set xLeft to first item of xPos as integer
		set xWidth to first item of xSize as integer
		set position of thisWindow to {xLeft, topBound}
		set size of thisWindow to {xWidth, boundHeight}
		set checkHeight to size of thisWindow
		-- display alert ("checkHeight: " & (second item of checkHeight) & " boundHeight: " & boundHeight)
		if (second item of checkHeight) is not boundHeight then
			set size of thisWindow to {xWidth, boundHeight - 30} -- Lion won't resize sometimes, force it
			set size of thisWindow to {xWidth, boundHeight}
		end if
	end tell
end fillHeight

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
		if (item 1 of item 1 of screenBounds is 0 and item 2 of item 1 of screenBounds is 0) then
			set screenRecord to {name:screenName, frame:{|left|:item 1 of item 1 of screenBounds, top:item 2 of item 1 of screenBounds, width:item 1 of item 2 of screenBounds, height:item 2 of item 2 of screenBounds}, visibleFrame:{|left|:item 1 of item 1 of screenVisibleBounds, top:item 2 of item 1 of screenVisibleBounds, width:item 1 of item 2 of screenVisibleBounds, height:item 2 of item 2 of screenVisibleBounds}, scaleFactor:screenBackingScaleFactor, isMainScreen:false}
			if mainScreenOnly is true then
				return screenRecord
			end if
		else
			set screenRecord to {name:screenName, frame:{|left|:item 1 of item 1 of screenBounds, top:item 2 of item 1 of screenBounds, width:item 1 of item 2 of screenBounds, height:item 2 of item 2 of screenBounds}, visibleFrame:{|left|:item 1 of item 1 of screenVisibleBounds, top:item 2 of item 1 of screenVisibleBounds, width:item 1 of item 2 of screenVisibleBounds, height:item 2 of item 2 of screenVisibleBounds}, scaleFactor:screenBackingScaleFactor, isMainScreen:false}
		end if
		set end of screenRecords to screenRecord
	end repeat
	return screenRecords
end screenRecords
