Harriot←{
⍝ Harriot n returns the Pascal lower triangular
⍝ square matrix. This is named for astronomer
⍝ Thomas Harriot who discovered the columns long
⍝ before Pascal discovered the rows. Each column is
⍝ n Choose k. The outer product does the heavy lifting.
     ⎕IO←0
     ⍉(⍳⍵)∘.!⍳⍵
 }
