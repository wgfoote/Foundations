 sp←PolarFib;Volvo;Saab;criteria;Causeway;System;⎕USING
⍝ Cars compared with Radarchart

 ##.InitCauseway ⍬  ⍝ Initialise the Causeway and System namespace in this scope (notice we have localised them, along with ⎕USING)

 sp←⎕NEW Causeway.SharpPlot
 sp.SetNewline'⋄'

 sp.Heading←'Decision Alternatives: Two platforms⋄⋄(Fibonacci Scale)'
 sp.HeadingStyle←Causeway.HeadingStyles.Left

 Bricolage←20 36 29 42 31 36 34
 Skyscraper←30 24 28 34 23 34 28
 criteria←'Difficult to operate' 'Complicated to maintain' 'Hard to scale' 'Weak bench' 'Porous security' 'Time to failover' 'Frequent service intervals'

 sp.PolarChartStyle←Causeway.PolarChartStyles.(GridLines+SurfaceShading)
 sp.YAxisStyle←Causeway.YAxisStyles.ForceZero
 sp.MarginLeft←12
 sp.MarginRight←0
 sp.SetXLabels⊂criteria
 sp.XLabelFormat←'XXXXXXXXX;'
 sp.LabelLineSpacing←120

 sp.SetColors⊂System.Drawing.Color.(Red Blue)
 sp.SetFillStyles Causeway.FillStyle.Opacity30

 sp.SetKeyText⊂'Bricolage' 'Skyscraper'
 sp.DrawPolarChart⊂Volvo Saab  ⍝ If not enclosed, Saab would be taken as X coordinates

