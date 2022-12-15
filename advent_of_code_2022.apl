]box on
⍝ Day 1
a←⊃⎕NGET'C:\Users\tokuo\Desktop\input1.txt' 1
⌈/(+/⍎¨)¨a⊆⍨''∘≢¨a ⍝ first part
{+/3↑⍵[⍒⍵]}(+/⍎¨)¨a⊆⍨''∘≢¨a ⍝ second part

⍝ Day 3
a←⊃⎕NGET'C:\Users\tokuo\Desktop\input3.txt' 1
letters ← ((⎕UCS 96+⍳26),⎕A)
+/{letters⍳∪(2÷⍨≢⍵)(↓∩↑)⍵}¨a ⍝ first part
+/{letters⍳∪⊃∩/⍵}¨((≢a)⍴1 2/1 0)⊂a ⍝ second part

a←⊃⎕NGET'C:\Users\tokuo\Desktop\input4.txt' 1
subset←{∨/(∧/⍵∊⍺)(∧/⍺∊⍵)}
series←{(⍵[1]-1)↓⍳⍵[2]}¨↑{⍎¨¨'-'∘(≠⊆⊢)¨','(≠⊆⊢)⍵}¨a
+/subset/series ⍝ first part
+/{∨/⍺∊⍵}/series ⍝ second part