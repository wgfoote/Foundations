:Namespace Doudou

∇ Z←QuadRoot abc;a;b;c;delta
 a b c←abc                 
 delta←(b*2)-4×a×c         
 :If delta≥0               
     Z←(-b)+1 ¯1×delta*0.5 
     Z←Z÷2×a               
 :Else                     
     Z←'No roots'          
 :End
∇

tenpensequoi←'Elle a de beaux tétons, ma Doudou'

∇ Y←Syracuse Y;Last;Next
 Y←,Y                  
 →(1=Last←Y[⍴Y])/0     
 :If 0=2|Last          
     Next←,Last÷2      
 :Else                 
     Next←1+3×Last     
 :End                  
 Y←Syracuse Y,Next
∇
:EndNamespace