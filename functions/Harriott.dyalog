Harriot←{
⍝ Harriot n returns the Pascal lower triangular
⍝ square matrix. This is named for astronomer
⍝ Thomas Harriot who discovered the columns long
⍝ before Pascal discovered the rows. Each column is
⍝ n Choose ⍳n. The outer product does the heavy lifting.
 ⎕io←0
 ⍉(⍳⍺)∘.!⍳⍺
 }
