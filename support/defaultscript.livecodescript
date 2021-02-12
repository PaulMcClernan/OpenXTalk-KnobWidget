script "community.livecode.paulmcclernan.knob.__DefaultScript"

local lRotate, lPrevH, lPrevV

on mouseDown
   put the mouseH into lPrevH
   put the mouseV into lPrevV
   if lRotate is empty then put 0 into lRotate
end mouseDown

on mouseMove -- pH & pV
   if the mouse is "down" then
      if (the mouseH > lPrevH) or (the mouseV < lPrevV) then
         put lPrevH - the mouseH into tDiff1
         put lPrevV - the mouseV into tDiff2
         add (tDiff1 + tDiff2) to lRotate
      end if
      if (the mouseH < lPrevH) or (the mouseV > lPrevV) then
         put the mouseH - lPrevH into tDiff1
         put the mouseV - lPrevV into tDiff2
         subtract (tDiff1 + tDiff2) from lRotate
      end if
      if lRotate > 290 then put 290 into lRotate
      if lRotate < 0 then put 0 into lRotate
      set the currentRotation of me to lRotate
      put trunc( 1.27 * ( lRotate / 2.9) ) into fld "KnobValue"
      put the mouseH into lPrevH
      put the mouseV into lPrevV
   end if
end mouseMove
