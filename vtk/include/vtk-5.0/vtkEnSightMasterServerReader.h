/*=========================================================================

  Program:   Visualization Toolkit
  Module:    $RCSfile: vtkEnSightMasterServerReader.h,v $

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
// .NAME vtkEnSightMasterServerReader - reader for compund EnSight files

#ifndef __vtkEnSightMasterServerReader_h
#define __vtkEnSightMasterServerReader_h

#include "vtkGenericEnSightReader.h"

class vtkCollection;

class VTK_IO_EXPORT vtkEnSightMasterServerReader : public vtkGenericEnSightReader
{
public:
  vtkTypeRevisionMacro(vtkEnSightMasterServerReader, vtkGenericEnSightReader);
  void PrintSelf(ostream& os, vtkIndent indent);

  static vtkEnSightMasterServerReader* New();

  // Description:
  // Determine which file should be read for piece
  int DetermineFileName(int piece);

  // Description:
  // Get the file name that will be read.
  vtkGetStringMacro(PieceCaseFileName);

  // Description:
  // Set or get the current piece.
  vtkSetMacro(CurrentPiece, int);
  vtkGetMacro(CurrentPiece, int);
  
protected:
  vtkEnSightMasterServerReader();
  ~vtkEnSightMasterServerReader();
  
  void Execute();
  void ExecuteInformation();

  vtkSetStringMacro(PieceCaseFileName);
  char* PieceCaseFileName;
  int MaxNumberOfPieces;
  int CurrentPiece;

private:
  vtkEnSightMasterServerReader(const vtkEnSightMasterServerReader&);  // Not implemented.
  void operator=(const vtkEnSightMasterServerReader&);  // Not implemented.
};

#endif
