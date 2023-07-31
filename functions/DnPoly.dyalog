 DnPoly←{
⍝ CN DnPoly x gives the function vector
⍝ of coefficients C of a polynomial with
⍝ order n at x. This function calls DPoly
⍝ and Poly.
     ¯2≠≡⍺:'Quit DnPoly: CN←(C)(n)?'
     n←⍺[1]
     C←0⊃⍺
     1=≡⍺:n←⍴⍺
     ,¨(n DPoly C)Poly¨⊂⍵
 }
