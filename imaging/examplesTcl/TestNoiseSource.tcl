catch {load vtktcl}
# A script to test the NoiseSource

source vtkImageInclude.tcl

# Image pipeline

vtkImageNoiseSource noise
noise SetWholeExtent 0 225 0 225 0 20
noise SetMinimum 0.0
noise SetMaximum 255.0

vtkImageViewer viewer
viewer SetInput [noise GetOutput]
viewer SetZSlice 10
viewer SetColorWindow 255
viewer SetColorLevel 127.5
#viewer DebugOn

# make interface
source WindowLevelInterface.tcl







