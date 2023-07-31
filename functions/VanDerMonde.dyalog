VanDerMonde←{
⍝ VanDerMonde n returns an a_k square matrix 0 to n with
⍝ cell a_ij = i^j. For n-series S and VanderMonde matrix V,
⍝ (⌹V)+.×S returns polynumbers to interpolate S.
⎕io←0
(⍳⍵)∘.*⍳⍵
}
