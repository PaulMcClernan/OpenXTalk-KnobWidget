script "community.livecode.paulmcclernan.knob.__DefaultScript"

-- local lRotate, lPrevH, lPrevV
on mouseDown
   -- local lRotate, lPrevH, lPrevV
   put the mouseH into lPrevH
   put the mouseV into lPrevV
   if lRotate is empty then put 0 into lRotate
end mouseDown

on mouseMove -- pH,pV
   -- local lRotate, lPrevH, lPrevV
   if the mouse is "down" then
      if (the mouseH > lPrevH) or (the mouseV > lPrevV) then
         put lPrevH - the mouseH into tDiffH
         put lPrevV - the mouseV into tDiffV
         add (tDiffV - tDiffH) to lRotate
         -- put tDiffH && tDiffV into fld 1
      end if
      if (the mouseH < lPrevH) or (the mouseV < lPrevV) then
         put the mouseH - lPrevH into tDiffH
         put the mouseV - lPrevV into tDiffV
         subtract (tDiffV - tDiffH) from lRotate
         -- put tDiffH && tDiffV into fld 1
      end if
      if lRotate > 290 then put 290 into lRotate
      if lRotate < 0 then put 0 into lRotate
      set the currentRotation of me to lRotate
      -- put trunc( 1.27 * ( lRotate / 2.9) ) into fld 1
      put the mouseH into lPrevH
      put the mouseV into lPrevV
   end if
end mouseMove
