# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'ui_EasyCustomLabeling.ui'
#
# Created: Fri Jan 31 15:16:28 2014
#      by: PyQt4 UI code generator 4.8.3
#
# WARNING! All changes made in this file will be lost!

from PyQt4 import QtCore, QtGui

try:
    _fromUtf8 = QtCore.QString.fromUtf8
except AttributeError:
    _fromUtf8 = lambda s: s

class Ui_EasyCustomLabeling(object):
    def setupUi(self, EasyCustomLabeling):
        EasyCustomLabeling.setObjectName(_fromUtf8("EasyCustomLabeling"))
        EasyCustomLabeling.resize(308, 135)
        EasyCustomLabeling.setMinimumSize(QtCore.QSize(250, 135))
        EasyCustomLabeling.setMaximumSize(QtCore.QSize(350, 135))
        EasyCustomLabeling.setWindowOpacity(1.0)
        EasyCustomLabeling.setLocale(QtCore.QLocale(QtCore.QLocale.English, QtCore.QLocale.UnitedStates))
        EasyCustomLabeling.setSizeGripEnabled(True)
        EasyCustomLabeling.setModal(True)
        self.buttonBox = QtGui.QDialogButtonBox(EasyCustomLabeling)
        self.buttonBox.setGeometry(QtCore.QRect(100, 100, 191, 23))
        self.buttonBox.setStandardButtons(QtGui.QDialogButtonBox.Cancel|QtGui.QDialogButtonBox.Ok)
        self.buttonBox.setObjectName(_fromUtf8("buttonBox"))
        self.splitter = QtGui.QSplitter(EasyCustomLabeling)
        self.splitter.setGeometry(QtCore.QRect(20, 20, 261, 20))
        self.splitter.setOrientation(QtCore.Qt.Horizontal)
        self.splitter.setObjectName(_fromUtf8("splitter"))
        self.label = QtGui.QLabel(self.splitter)
        self.label.setLocale(QtCore.QLocale(QtCore.QLocale.English, QtCore.QLocale.UnitedStates))
        self.label.setObjectName(_fromUtf8("label"))
        self.labelfield = QtGui.QComboBox(self.splitter)
        self.labelfield.setObjectName(_fromUtf8("labelfield"))
        self.label_2 = QtGui.QLabel(EasyCustomLabeling)
        self.label_2.setGeometry(QtCore.QRect(10, 60, 301, 21))
        font = QtGui.QFont()
        font.setFamily(_fromUtf8("Arial"))
        font.setPointSize(10)
        font.setItalic(True)
        self.label_2.setFont(font)
        self.label_2.setAlignment(QtCore.Qt.AlignLeading|QtCore.Qt.AlignLeft|QtCore.Qt.AlignTop)
        self.label_2.setWordWrap(True)
        self.label_2.setObjectName(_fromUtf8("label_2"))

        self.retranslateUi(EasyCustomLabeling)
        QtCore.QObject.connect(self.buttonBox, QtCore.SIGNAL(_fromUtf8("accepted()")), EasyCustomLabeling.accept)
        QtCore.QObject.connect(self.buttonBox, QtCore.SIGNAL(_fromUtf8("rejected()")), EasyCustomLabeling.reject)
        QtCore.QMetaObject.connectSlotsByName(EasyCustomLabeling)

    def retranslateUi(self, EasyCustomLabeling):
        EasyCustomLabeling.setWindowTitle(QtGui.QApplication.translate("EasyCustomLabeling", "EasyCustomLabeling", None, QtGui.QApplication.UnicodeUTF8))
        EasyCustomLabeling.setToolTip(QtGui.QApplication.translate("EasyCustomLabeling", "Choose labeling field", None, QtGui.QApplication.UnicodeUTF8))
        self.label.setText(QtGui.QApplication.translate("EasyCustomLabeling", "Label field", None, QtGui.QApplication.UnicodeUTF8))
        self.label_2.setText(QtGui.QApplication.translate("EasyCustomLabeling", "Note: Chosen labeling field is copied in LblField. ", None, QtGui.QApplication.UnicodeUTF8))

