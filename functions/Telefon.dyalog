:Namespace Gaston

∇ Z←Palindrome vector;torvec
 vector←Upper vector       
 torvec←ReverBug vector    
 Z←∧/torvec=vector
∇

text←'red icy cider'

∇ Z←Upper text;low;up;all         
 low←'abcdefghijklmnopqrstuvwxyz'
 up←'ABCDEFGHIJKLMNOPQRSTUVWXYZ' 
 text←(text∊all←low,up)/text     
 Z←(up,up)[all⍳text] 
∇

∇Z←ReverBug Vec;From;To 
 ⍝ Contains two intentionalbugs
 Z←(⍴Vec)⍴'?'                                 
 From←0                                       
 :Repeat                                      
     From←Frm+1                               
     To←(⍴Vec)-From                           
     Z[To]←Vec[From]                          
 :Until From=⍴Vec     
∇
:EndNamespace