:Namespace Blabla

∇ R←Flash2 Y;vi;vc
  vi←Codes⍳Y
  vc←2 0⍕((⍴Y),1)⍴Y
  R←vc,' ',Countries[vi;],5 0⍕Results[vi;⍳3]
∇

Info←'No comment'

∇ r←a Magoo b
 r←a+b
 r×←a-b
∇
:EndNamespace