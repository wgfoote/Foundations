Sn←{
⍝ Sn n is the sum operator, a lower triangular
⍝ n x n matrix. Left multiply a sequence and produce the
⍝ +⌿ of the sequence, a cumulative sum. The outer ≥ is more
⍝ pleasant and also more interesting linear algebra.
⍝
⎕IO←0
(⍳⍵)∘.≥⍳⍵
}
