TextFindChar←{
⍝ For
⍝ text: T←'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
⍝ char(acters): C←'MISSISSIPPI
⍝ text TextFindChar char returns
⍝ IMPS with frequency X~0
⍝ Source: Mappo at
⍝ https://stackoverflow.com/questions/7008098/how-to-count-the-frequency-of-a-element-in-apl-or-j-without-loops
X←+/¨⍺⍷¨⊂⍵
((×X)/⍺)(X~0)
}
