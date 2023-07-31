Solve←{
⍝ maxiter Solve model returns the Karmerkar (1984)
⍝ interior point solution to the linear program
⍝ max z←c+.×x subject to A+.×x=b, x≥0, A is technology
⍝ matrix A augmented by identity matrix I with ⍴I = rows and
⍝ rows of the technology matrix A0, so that if n are the A0 rows, then
⍝ I is the n x n identity matrix.
⍝ We set model←(c)(A0)(b)(alpha)(tolerance) and unpack before the two
⍝ recursion limits: maxiter and tolerance. alpha is best set at
⍝ 0.25 according to Karmarkar.
⍝
⍝ 1. Unpack rest of model (⍵)
c←1↑⍵ ⋄ A0←2↑⍵ ⋄ b←3↑⍵ ⋄ x←4↑⍵ ⋄ alpha←5↑⍵ ⋄ tolerance←6↑⍵
⍝ 2. Form diagonal D from initial feasible solution and transform.
I←((⍴x),⍴x)⍴1,(⍴x)⍴0
D←x×[1]I
A0←+.×D
c0←D+.×c
⍝ 3. Compute and apply projection transform.
M×I-A0+.×(⌹(⍉A0)+.×A0)+.×⍉A0
c0p←M+.×c0
nu←⌈/|c0p
x1p←x0+(alpha÷nu)×c0p
⍝ 4. Transform to non-projected coordinates and test
x1←D+.×x1p
(⌈|x1-x)|<tolerance:'Tolerable solution: ',x1
(⍺=max):'Reached maximum number of recursions
⍝ 5. Recurse (until morale improves!)'
(⍺-1) Solve (c)(A0)(b)(x1)(alpha)(tolerance)
}
