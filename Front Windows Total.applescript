-- Written by Moritz Zimmer -- Concept & Code -- omo@oio.ch -- www.oio.ch --
-- ZŸrich, November 14, 2009

property excludeApps : {"Finder", "Terminal", "Transmit", "Tweetie", "Pukka", "Address Book", "iChat", "Skype", "Messages", "Signal Private Messenger"}

-- GEOMETRY SETTINGS
property maxWindowWidth : 1275
property maxWideWindowWidth : 1675
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
		if not autohide of dock preferences and screen edge of dock preferences is bottom then
			set dockProps to property list file "~/Library/Preferences/com.apple.dock.plist"
			set bottomGap to the (value of (property list item "tilesize" of dockProps)) + dockGap + topGap + dockGap
		else
			set bottomGap to topGap
		end if
		set monitorProps to monitorProperties() of me
		if monitorProps is null then
			error "Couldn't get screen resolution"
		end if
		set {monitorHeight, monitorWidth} to {Height, Width} of monitorProps
		set topBound to menubarHeight + topGap
		set leftBound to (monitorWidth - maxWindowWidth) / 2
		set boundWidth to maxWindowWidth
		set boundHeight to monitorHeight - topBound - bottomGap
		set visibleProcesses to application processes whose visible is true and frontmost is true
		repeat with xProcess in visibleProcesses
			if name of xProcess is not in excludeApps then
				set standardWindows to (windows of xProcess whose subrole is "AXStandardWindow" and value of attribute "AXFullScreen" is false and name is not "Downloads" and name is not "Open")
				set windowCount to count of standardWindows
				if windowCount ³ 1 then
					set maxWidth to boundWidth
					set maxHeight to boundHeight
					set x to 0
					repeat with xWindow in standardWindows
						fillScreen(xWindow) of me
					end repeat
				end if
			end if
		end repeat
	end tell
end run

on fillScreen(thisWindow)
	tell application "System Events"
		set position of thisWindow to {standardGap, topBound}
		set size of thisWindow to {monitorWidth - (standardGap * 2), boundHeight}
		set checkHeight to size of thisWindow
		if (second item of checkHeight) is not boundHeight then
			set size of thisWindow to {monitorWidth - (standardGap * 2), boundHeight - 30} -- Lion won't resize sometimes, force it
			set size of thisWindow to {monitorWidth - (standardGap * 2), boundHeight}
		end if
	end tell
end fillScreen

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
