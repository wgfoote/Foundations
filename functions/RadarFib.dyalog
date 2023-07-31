 RadarFib←{
⍝ Cars compared with Radarchart

 ##.InitCauseway ⍬  ⍝ Initialise the Causeway and System namespace in this scope (notice we have localised them, along with ⎕USING)

 sp←⎕NEW Causeway.SharpPlot
 sp.SetNewline'⋄'

 sp.Heading←'Decision Alternatives: Two platforms⋄⋄(Fibonacci Scale)'
 sp.HeadingStyle←Causeway.HeadingStyles.Left
 ⍝ 1 2 3 5 8 13 21 34 55 89 Fibonacci scale
 Bricolage←21 34 3 13 21 8 55
 Skyscraper←8 5 55 34 55 21 89
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
 sp.DrawPolarChart⊂Bricolage Skyscraper  ⍝ If not enclosed, Skyscraper would be taken as X coordinates
 }
