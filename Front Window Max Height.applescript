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
	set monitorProps to monitorProperties() of me
	if monitorProps is null then
		error "Couldn't get screen resolution"
	end if
	set {monitorHeight, monitorWidth} to {Height, Width} of monitorProps
	set topBound to menubarHeight + standardGap
	set leftBound to (monitorWidth - maxWindowWidth) / 2
	set boundWidth to (maxWindowWidth as integer)
	set boundHeight to ((monitorHeight - topBound - bottomGap) as integer)
	
	-- Filter out Adobe apps
	set visibleProcesses to application processes whose visible is true and frontmost is true
	set xWindow to window 1 of first item of visibleProcesses
	snapToEdge(xWindow) of me
	fillHeight(xWindow) of me
end tell

on monitorProperties()
	tell application "Finder"
		set screenResolution to bounds of window of desktop
	end tell
	return {Width:item 3 of screenResolution, Height:item 4 of screenResolution, OriginX:missing value, OriginY:missing value}
end monitorProperties

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
