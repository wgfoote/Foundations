Diff←{
⍝ For S; a_0, a_1, a_n, k Diff S returns
⍝ a_1-a_0, ..., a_n-a_n-1 recursively for
⍝ k successions of differences. The result
⍝ is a k difference table of sequence S,
⍝ including the original sequence for reference.
0=⍺:⊂,⍵
(⊂⍵),(⍺-1)Diff (1↓⍵)-(-1)↓⍵
}
