# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'TelefonDefteriGUI.ui'
#
# Created by: PyQt5 UI code generator 5.13.2
#
# WARNING! All changes made in this file will be lost!


from PyQt5 import QtCore, QtGui, QtWidgets


class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(910, 721)
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.btnKaydet = QtWidgets.QPushButton(self.centralwidget)
        self.btnKaydet.setGeometry(QtCore.QRect(560, 120, 211, 41))
        self.btnKaydet.setObjectName("btnKaydet")
        self.btnSil = QtWidgets.QPushButton(self.centralwidget)
        self.btnSil.setGeometry(QtCore.QRect(560, 170, 211, 41))
        self.btnSil.setObjectName("btnSil")
        self.btnGuncelle = QtWidgets.QPushButton(self.centralwidget)
        self.btnGuncelle.setGeometry(QtCore.QRect(560, 220, 211, 41))
        self.btnGuncelle.setObjectName("btnGuncelle")
        self.btnListele = QtWidgets.QPushButton(self.centralwidget)
        self.btnListele.setGeometry(QtCore.QRect(560, 280, 211, 41))
        self.btnListele.setObjectName("btnListele")
        self.txtID = QtWidgets.QLineEdit(self.centralwidget)
        self.txtID.setGeometry(QtCore.QRect(220, 30, 311, 41))
        self.txtID.setObjectName("txtID")
        self.txtIsim = QtWidgets.QLineEdit(self.centralwidget)
        self.txtIsim.setGeometry(QtCore.QRect(220, 80, 311, 31))
        self.txtIsim.setObjectName("txtIsim")
        self.txtSoyisim = QtWidgets.QLineEdit(self.centralwidget)
        self.txtSoyisim.setGeometry(QtCore.QRect(220, 120, 311, 41))
        self.txtSoyisim.setObjectName("txtSoyisim")
        self.txtSehir = QtWidgets.QLineEdit(self.centralwidget)
        self.txtSehir.setGeometry(QtCore.QRect(220, 170, 311, 41))
        self.txtSehir.setObjectName("txtSehir")
        self.txtTelefon = QtWidgets.QLineEdit(self.centralwidget)
        self.txtTelefon.setGeometry(QtCore.QRect(220, 220, 311, 41))
        self.txtTelefon.setObjectName("txtTelefon")
        self.txtEmail = QtWidgets.QLineEdit(self.centralwidget)
        self.txtEmail.setGeometry(QtCore.QRect(220, 270, 311, 41))
        self.txtEmail.setObjectName("txtEmail")
        self.lblID = QtWidgets.QLabel(self.centralwidget)
        self.lblID.setGeometry(QtCore.QRect(10, 20, 201, 41))
        self.lblID.setObjectName("lblID")
        self.lblISIM = QtWidgets.QLabel(self.centralwidget)
        self.lblISIM.setGeometry(QtCore.QRect(10, 70, 201, 41))
        self.lblISIM.setObjectName("lblISIM")
        self.lblSoyisim = QtWidgets.QLabel(self.centralwidget)
        self.lblSoyisim.setGeometry(QtCore.QRect(10, 120, 201, 41))
        self.lblSoyisim.setObjectName("lblSoyisim")
        self.lblSehir = QtWidgets.QLabel(self.centralwidget)
        self.lblSehir.setGeometry(QtCore.QRect(10, 170, 201, 41))
        self.lblSehir.setObjectName("lblSehir")
        self.lblTelefon = QtWidgets.QLabel(self.centralwidget)
        self.lblTelefon.setGeometry(QtCore.QRect(10, 220, 201, 41))
        self.lblTelefon.setObjectName("lblTelefon")
        self.lblEmail = QtWidgets.QLabel(self.centralwidget)
        self.lblEmail.setGeometry(QtCore.QRect(10, 270, 201, 41))
        self.lblEmail.setObjectName("lblEmail")
        self.tblListele = QtWidgets.QTableWidget(self.centralwidget)
        self.tblListele.setGeometry(QtCore.QRect(10, 330, 891, 341))
        self.tblListele.setObjectName("tblListele")
        self.tblListele.setColumnCount(0)
        self.tblListele.setRowCount(0)
        self.label = QtWidgets.QLabel(self.centralwidget)
        self.label.setGeometry(QtCore.QRect(590, 40, 261, 31))
        font = QtGui.QFont()
        font.setPointSize(10)
        font.setBold(True)
        font.setWeight(75)
        self.label.setFont(font)
        self.label.setObjectName("label")
        MainWindow.setCentralWidget(self.centralwidget)
        self.menubar = QtWidgets.QMenuBar(MainWindow)
        self.menubar.setGeometry(QtCore.QRect(0, 0, 910, 26))
        self.menubar.setObjectName("menubar")
        MainWindow.setMenuBar(self.menubar)
        self.statusbar = QtWidgets.QStatusBar(MainWindow)
        self.statusbar.setObjectName("statusbar")
        MainWindow.setStatusBar(self.statusbar)

        self.retranslateUi(MainWindow)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "MainWindow"))
        self.btnKaydet.setText(_translate("MainWindow", "SAUVEGARDER"))
        self.btnSil.setText(_translate("MainWindow", "suprime"))
        self.btnGuncelle.setText(_translate("MainWindow", "update"))
        self.btnListele.setText(_translate("MainWindow", "LISTE"))
        self.lblID.setText(_translate("MainWindow", "ID"))
        self.lblISIM.setText(_translate("MainWindow", "NOM1"))
        self.lblSoyisim.setText(_translate("MainWindow", "lastname"))
        self.lblSehir.setText(_translate("MainWindow", "VILLE"))
        self.lblTelefon.setText(_translate("MainWindow", "telephone"))
        self.lblEmail.setText(_translate("MainWindow", "EMAIL"))
        self.label.setText(_translate("MainWindow", "Adherent"))
