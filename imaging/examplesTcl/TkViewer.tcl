catch {load vtktcl}

source vtkImageInclude.tcl
source TkImageViewerInteractor.tcl


# This script uses a vtkTkRenderWidget to create a
# Tk widget that is associated with a vtkRenderWindow.
#source TkInteractor.tcl

vtkPNMReader reader
reader ReleaseDataFlagOff
reader SetFileName "../../../vtkdata/earth.ppm"

vtkImageViewer viewer
viewer SetInput [reader GetOutput]
viewer SetColorWindow 256
viewer SetColorLevel 127.5

# Create the GUI: two renderer widgets and a quit button
#
wm withdraw .
toplevel .top 

frame .top.f1 

vtkTkImageViewerWidget .top.f1.r1 -width 512 -height 256 -iv viewer
#    BindTkRenderWidget .top.f1.r1

button .top.btn  -text Quit -command exit

pack .top.f1.r1 -side left -padx 3 -pady 3 -fill both -expand t
pack .top.f1  -fill both -expand t
pack .top.btn -fill x


BindTkImageViewer .top.f1.r1 

