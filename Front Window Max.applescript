-- Written by Moritz Zimmer -- Concept & Code -- omo@oio.ch -- www.oio.ch --
-- ZŸrich, November 14, 2009

property excludeApps : {"Finder", "Terminal", "Transmit", "Tweetie", "Pukka", "Address Book", "iChat", "Skype", "Messages", "Franz", "Signal Private Messenger"}

-- GEOMETRY SETTINGS
property maxWindowWidth : 1275
property maxWideWindowWidth : 1475
property stackingGap : 35
property standardGap : 5
property dockGap : 10
property finderGap : 165
property snappingGap : 20
property menubarHeight : 23

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
		set monitorProps to monitorProperties() of me
		if monitorProps is null then
			error "Couldn't get screen resolution"
		end if
		set {monitorHeight, monitorWidth} to {Height, Width} of monitorProps
		set topBound to menubarHeight + standardGap
		if (monitorWidth ² 1920) then
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
				if windowCount ³ 1 then
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

on monitorProperties()
	tell application "Finder"
		set screenResolution to bounds of window of desktop
	end tell
	return {Width:item 3 of screenResolution, Height:item 4 of screenResolution, OriginX:missing value, OriginY:missing value}
end monitorProperties
