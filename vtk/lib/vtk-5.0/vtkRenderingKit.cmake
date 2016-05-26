# Directory containing class headers.
SET(VTK_RENDERING_HEADER_DIR "${VTK_INSTALL_PREFIX}/include/vtk-5.0")

# Classes in vtkRendering.
SET(VTK_RENDERING_CLASSES
  "vtkAbstractMapper3D"
  "vtkAbstractVolumeMapper"
  "vtkAbstractPicker"
  "vtkAbstractPropPicker"
  "vtkActor"
  "vtkActorCollection"
  "vtkAssembly"
  "vtkAxisActor2D"
  "vtkCamera"
  "vtkCameraInterpolator"
  "vtkCellPicker"
  "vtkCuller"
  "vtkCullerCollection"
  "vtkDataSetMapper"
  "vtkExporter"
  "vtkFollower"
  "vtkFrustumCoverageCuller"
  "vtkGenericRenderWindowInteractor"
  "vtkGraphicsFactory"
  "vtkHierarchicalPolyDataMapper"
  "vtkIVExporter"
  "vtkImageActor"
  "vtkImageMapper"
  "vtkImageViewer"
  "vtkImageViewer2"
  "vtkImagingFactory"
  "vtkImporter"
  "vtkInteractorEventRecorder"
  "vtkInteractorObserver"
  "vtkInteractorStyle"
  "vtkInteractorStyleFlight"
  "vtkInteractorStyleImage"
  "vtkInteractorStyleJoystickActor"
  "vtkInteractorStyleJoystickCamera"
  "vtkInteractorStyleRubberBandZoom"
  "vtkInteractorStyleSwitch"
  "vtkInteractorStyleTerrain"
  "vtkInteractorStyleTrackball"
  "vtkInteractorStyleTrackballActor"
  "vtkInteractorStyleTrackballCamera"
  "vtkInteractorStyleUnicam"
  "vtkInteractorStyleUser"
  "vtkLODActor"
  "vtkLODProp3D"
  "vtkLabeledDataMapper"
  "vtkLight"
  "vtkLightCollection"
  "vtkLightKit"
  "vtkMapper"
  "vtkMapperCollection"
  "vtkOBJExporter"
  "vtkOOGLExporter"
  "vtkParallelCoordinatesActor"
  "vtkPicker"
  "vtkPointPicker"
  "vtkPolyDataMapper"
  "vtkPolyDataMapper2D"
  "vtkProp3D"
  "vtkProp3DCollection"
  "vtkPropPicker"
  "vtkProperty"
  "vtkQuaternionInterpolator"
  "vtkRenderWindow"
  "vtkRenderWindowCollection"
  "vtkRenderWindowInteractor"
  "vtkRenderer"
  "vtkRendererCollection"
  "vtkRendererSource"
  "vtkScalarBarActor"
  "vtkScaledTextActor"
  "vtkSelectVisiblePoints"
  "vtkTesting"
  "vtkTextActor"
  "vtkTextActor3D"
  "vtkTextMapper"
  "vtkTextProperty"
  "vtkTexture"
  "vtkTransformInterpolator"
  "vtkTupleInterpolator"
  "vtkVRMLExporter"
  "vtkVolume"
  "vtkVolumeCollection"
  "vtkVolumeProperty"
  "vtkWindowToImageFilter"
  "vtkWorldPointPicker"
  "vtkFreeTypeUtilities"
  "vtkOpenGLActor"
  "vtkOpenGLCamera"
  "vtkOpenGLExtensionManager"
  "vtkOpenGLImageActor"
  "vtkOpenGLImageMapper"
  "vtkOpenGLLight"
  "vtkOpenGLPolyDataMapper"
  "vtkOpenGLPolyDataMapper2D"
  "vtkOpenGLProperty"
  "vtkOpenGLRenderWindow"
  "vtkOpenGLRenderer"
  "vtkOpenGLTexture"
  "vtkOpenGLFreeTypeTextMapper"
  "C:/dev/out/t2/build/Rendering/vtkgl"
  "vtkWin32OpenGLRenderWindow"
  "vtkWin32RenderWindowInteractor")

# Abstract classes in vtkRendering.
SET(VTK_RENDERING_CLASSES_ABSTRACT
  "vtkAbstractMapper3D"
  "vtkAbstractVolumeMapper"
  "vtkAbstractPicker"
  "vtkAbstractPropPicker"
  "vtkCuller"
  "vtkExporter"
  "vtkImporter"
  "vtkInteractorObserver"
  "vtkMapper"
  "vtkProp3D"
  "vtkOpenGLRenderWindow"
  "C:/dev/out/t2/build/Rendering/vtkgl")

# Wrap-exclude classes in vtkRendering.
SET(VTK_RENDERING_CLASSES_WRAP_EXCLUDE
  "vtkFreeTypeUtilities"
  "C:/dev/out/t2/build/Rendering/vtkgl")

# Set convenient variables to test each class.
FOREACH(class ${VTK_RENDERING_CLASSES})
  SET(VTK_CLASS_EXISTS_${class} 1)
ENDFOREACH(class)
FOREACH(class ${VTK_RENDERING_CLASSES_ABSTRACT})
  SET(VTK_CLASS_ABSTRACT_${class} 1)
ENDFOREACH(class)
FOREACH(class ${VTK_RENDERING_CLASSES_WRAP_EXCLUDE})
  SET(VTK_CLASS_WRAP_EXCLUDE_${class} 1)
ENDFOREACH(class)