 DPoly←{
⍝ n DPoly C returns the coefficients of
⍝ derivatives of polynomial C to the
⍝ (n-1)th order by calling itself
⍝ recursively
0=⍺:⊂,⍵
(⊂⍵),(⍺-1)DPoly 1↓(⍳⍴⍵)×⍵
 }
