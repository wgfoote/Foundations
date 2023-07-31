Fib←{
⍝ Building the 200 BCE sequence of
⍝ the those very special numbers
⎕IO←0 ⋄ ⍵↑+⌿(-⍳⍵)⌽(⍉(⍳⍵)∘.!⍳⍵),(⍵ ⍵)⍴0}
}
