"""
/***************************************************************************
Name			 	 : EasyCustomLabeling
Description          : Easily duplicates a layer into centroid layer with advanced labeling fields created. Also generate arrows linking labels to objects
Date                 : 29/12/11 
copyright            : (C) 2011 by Regis Haubourg
email                : regis dot haubourg at eau-adour-garonne.fr
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/
 This script initializes the plugin, making it known to QGIS.
"""
from __future__ import absolute_import
def classFactory(iface): 
  from .EasyCustomLabeling import EasyCustomLabeling 
  return EasyCustomLabeling(iface)
