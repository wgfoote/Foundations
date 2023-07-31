Primes←{
⍝ Primes n returns the first n prime
⍝ numbers from 1 to n. Source: K Iverson
⎕IO←1
(2=+⌿0=(⍳⍵)∘.|⍳⍵)/⍳⍵
}
