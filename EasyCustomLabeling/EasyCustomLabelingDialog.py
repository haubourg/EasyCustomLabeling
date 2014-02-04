# -*- coding: utf-8 -*-
"""
/***************************************************************************
Layer to labeled layer
                                 A QGIS plugin
Make it possible to use data-defined labeling on existing layer.
The plug-in creates new attributes in the existing shapefile.
                             -------------------
        begin                : 2012-11-01
        copyright            : (C) 2012 by Victor Axbom
        email                : -
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         * 
 *   This program is distributed in the hope that it will be useful,       *
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of        *
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *
 *   GNU General Public License for more details.                          *
 *                                                                         *
 *   You should have received a copy of the GNU General Public License     *
 *   along with this program.  If not, see <http://www.gnu.org/licenses/>. *
 *                                                                         *
 ***************************************************************************/
"""

from PyQt4.QtCore import *
from PyQt4.QtGui import *
from qgis.core import *
from ui_EasyCustomLabeling import Ui_EasyCustomLabeling

class EasyCustomLabelingDialog(QDialog, Ui_EasyCustomLabeling):
	
	def __init__(self, ldp):
		QDialog.__init__(self)
		# Set up the user interface from Designer.
		self.setupUi(self)
		
		self.loadFields(ldp)
		
	def loadFields(self, ldp):
		fields = ldp.fieldNameMap()
		for fieldname, index in fields.iteritems():
			self.labelfield.addItem(fieldname)
		