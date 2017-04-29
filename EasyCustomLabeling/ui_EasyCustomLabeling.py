# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'ui_EasyCustomLabeling.ui'
#
# Created by: PyQt5 UI code generator 5.5.1
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_EasyCustomLabeling(object):
    def setupUi(self, EasyCustomLabeling):
        EasyCustomLabeling.setObjectName("EasyCustomLabeling")
        EasyCustomLabeling.resize(308, 135)
        EasyCustomLabeling.setMinimumSize(QtCore.QSize(250, 135))
        EasyCustomLabeling.setMaximumSize(QtCore.QSize(350, 135))
        EasyCustomLabeling.setWindowOpacity(1.0)
        EasyCustomLabeling.setLocale(QtCore.QLocale(QtCore.QLocale.English, QtCore.QLocale.UnitedStates))
        EasyCustomLabeling.setSizeGripEnabled(True)
        EasyCustomLabeling.setModal(True)
        self.buttonBox = QtWidgets.QDialogButtonBox(EasyCustomLabeling)
        self.buttonBox.setGeometry(QtCore.QRect(100, 100, 191, 23))
        self.buttonBox.setStandardButtons(QtWidgets.QDialogButtonBox.Cancel|QtWidgets.QDialogButtonBox.Ok)
        self.buttonBox.setObjectName("buttonBox")
        self.splitter = QtWidgets.QSplitter(EasyCustomLabeling)
        self.splitter.setGeometry(QtCore.QRect(20, 20, 261, 20))
        self.splitter.setOrientation(QtCore.Qt.Horizontal)
        self.splitter.setObjectName("splitter")
        self.label = QtWidgets.QLabel(self.splitter)
        self.label.setLocale(QtCore.QLocale(QtCore.QLocale.English, QtCore.QLocale.UnitedStates))
        self.label.setObjectName("label")
        self.labelfield = QtWidgets.QComboBox(self.splitter)
        self.labelfield.setObjectName("labelfield")
        self.label_2 = QtWidgets.QLabel(EasyCustomLabeling)
        self.label_2.setGeometry(QtCore.QRect(10, 60, 301, 21))
        font = QtGui.QFont()
        font.setFamily("Arial")
        font.setPointSize(10)
        font.setItalic(True)
        self.label_2.setFont(font)
        self.label_2.setAlignment(QtCore.Qt.AlignLeading|QtCore.Qt.AlignLeft|QtCore.Qt.AlignTop)
        self.label_2.setWordWrap(True)
        self.label_2.setObjectName("label_2")

        self.retranslateUi(EasyCustomLabeling)
        self.buttonBox.accepted.connect(EasyCustomLabeling.accept)
        self.buttonBox.rejected.connect(EasyCustomLabeling.reject)
        QtCore.QMetaObject.connectSlotsByName(EasyCustomLabeling)

    def retranslateUi(self, EasyCustomLabeling):
        _translate = QtCore.QCoreApplication.translate
        EasyCustomLabeling.setWindowTitle(_translate("EasyCustomLabeling", "EasyCustomLabeling"))
        EasyCustomLabeling.setToolTip(_translate("EasyCustomLabeling", "Choose labeling field"))
        self.label.setText(_translate("EasyCustomLabeling", "Label field"))
        self.label_2.setText(_translate("EasyCustomLabeling", "Note: Chosen labeling field is copied in LblField. "))

