Dn←{
⍝ Dn n returns the n x n first difference
⍝ matrix transform
⎕IO←0
I←diag ⍵⍴1
+I-1↓[1]I,(⍵ 1)⍴0
}
