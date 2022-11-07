
-- Move the focused window to next screen quickly
hs.hotkey.bind({'alt'}, 'm', function()
  -- get the focused window
  local win = hs.window.focusedWindow()
  -- get the screen where the focused window is displayed, a.k.a. current screen
  local screen = win:screen()
  -- compute the unitRect of the focused window relative to the current screen
  -- and move the window to the next screen setting the same unitRect
  win:move(win:frame():toUnitRect(screen:frame()), screen:next(), true, 0)
end)

-- Move mouse to next screen quickly
-- And focus the frontmost window
hs.hotkey.bind({'alt'}, '1', function()
    print'hello --- '
    local screen = hs.mouse.getCurrentScreen()
    local nextScreen = screen:next()
    local rect = nextScreen:fullFrame()
    local center = hs.geometry.rectMidPoint(rect)
    hs.mouse.absolutePosition(center)

    -- for _,ww in ipairs(hs.window.orderedWindows()) do
    --   local app = ww:application()
    --   if ww:screen() == screen then
    --     print('1', ww:frame(), app:title(), ww:title())
    --   else
    --     print('2', ww:frame(), app:title(), ww:title())
    --   end
    -- end

    for _,ww in ipairs(hs.window.orderedWindows()) do
      local app = ww:application()
      local title = ww:title()

      -- The teams notification window is always at the most front
      -- It is not visible by you eyes, but it is there, when there
      -- are new messages, it will show
      local ignoreTitle = "Microsoft Teams Notification"

      if ww:screen() ~= screen and title ~= ignoreTitle then
        print(app:title(), ww:title())
        ww:focus()
        break
      end
    end
end)

-- Launch Finder
hs.hotkey.bind({'alt'}, 'F', function()
    hs.application.launchOrFocus('Finder')
end)

-- hs.hotkey.bind({"alt"}, "t", function()
--   print('Hello Test')
--   hs.alert.show("Hello Test!")
--   -- print(hs.window.focusedWindow())
--   -- print(hs.inspect(hs.window.focusedWindow()))

--   for _,ww in ipairs(hs.application'teams':allWindows()) do
--     print(ww:title(), ww:isVisible())
--   end
--   -- hs.inspect(hs.application'teams':allWindows())

-- end)