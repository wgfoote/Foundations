:Namespace Rumweiss

∇ Endless;a;b;i;r   
 ⍝ Test of a (nearly) endless loop
 i←0                                                
 :Repeat                                            
     b←15000-a←⍳10000                               
     a←100 100⍴1.07×a                               
     b←100 100⍴1.07×b                               
     r←+/,(a×a∊b)⌈(b×b∊a)                           
     +i←i+1                                         
 :Until i=20
∇

∇ R←X In Y;bin;mat    
 mat←((⍴X),1+⍴Y)⍴Y   
 bin←(-⍴X)↓∧⌿X=[1]mat
 R←bin/⍳⍴bin
∇

∇ R←X CrossCount3 Y;ux;uy;binx;biny  
 ux←∪X ⋄ ux←ux[⍋ux]                 
 uy←∪Y ⋄ uy←uy[⍋uy]                 
 binx←ux∘.=X                        
 biny←Y∘.=uy                        
 R←binx+.∧biny                      
 R,←+/R ⋄ R⍪←+⌿R                    
 R←(' ',uy,⊂'Total')⍪(ux,⊂'Total'),R
∇

:EndNamespace