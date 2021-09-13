# Create a raster graph showing time series differences:
# - this file is template and will be expanded by TSTool before using
# - the 'Diff_' string is added before original IDs to match the difference time series
# - the graph does not need to be very wide since only 12 months
#@template

[Product]

ProductType = "Graph"
TotalWidth = "650"
TotalHeight = "800"
MainTitleString = "${TSAlias} - ${Description}"
MainTitleFontSize = "18"
MainTitleFontStyle = "Bold"
SubTitleString = "${Variant2} minus ${Variant1}"
SubTitleFontSize = "14"

[SubProduct 1]

GraphType = "Raster"

[Data 1.1]

TSAlias = "${TSAlias}"
SymbolTablePath = "${WorkingDir}/ts-diff.csv"
RasterGraphLegendPosition = "Right"
