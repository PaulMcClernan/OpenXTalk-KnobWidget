script "community.livecode.paulmcclernan.knob.__DefaultScript"

on mouseUp pMouseButton
   -- put pMouseButton
   set the outerShadowColor of me to "127,127,127"
end mouseUp

on mouseRelease pMouseButton
   -- put pMouseButton
   set the outerShadowColor of me to "127,127,127"
end mouseRelease

on mouseDown pMouseButton
   -- put pMouseButton
   set the outerShadowColor of me to "0,255,0"
end mouseDown

on mouseMove pMouseX, pMouseY
   -- put pMouseX && pMouseY
end mouseMove

on knobTurned pPercentage
   put trunc( 1.27 * pPercentage)
end knobTurned
