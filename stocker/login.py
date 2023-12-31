from PyQt5 import QtCore, QtGui, QtWidgets
from database import Sign #importing database.py
from signup import Ui_Dialog
from admin_view import Ui_Dialog_admin
from user import Ui_Dialog_user
from main import Ui_MainWindow

class Ui_Dialog2(object):
    def setupUi(self, Dialog):
        Dialog.setObjectName("Log In")
        Dialog.setFixedSize(800, 600)

        self.label_bg = QtWidgets.QLabel(Dialog)
        self.label_bg.setGeometry(QtCore.QRect(40, 30, 400, 500))
        self.label_bg.setStyleSheet("border-image: url(:/background1.jpg);\n border-top-left-radius: 50px;")
        


        self.label_bg.setStyleSheet("background-image : url(background1.jpg);border : 2px solid blue")


        self.label_bg2 = QtWidgets.QLabel(Dialog)
        self.label_bg2.setGeometry(QtCore.QRect(40, 30, 400, 530))
        self.label_bg2.setStyleSheet("background-color:rgba(0, 0, 0, 80);\n border-image: url(:/background1.jpg); \n border-top-left-radius: 50px;")
        self.label = QtWidgets.QLabel(Dialog)
        self.label.setGeometry(QtCore.QRect(130, 160, 131, 21))
        self.label.setObjectName("label")
        self.label_2 = QtWidgets.QLabel(Dialog)
        self.label_2.setGeometry(QtCore.QRect(130, 190, 151, 21))
        self.label_2.setObjectName("label_2")
        self.txtCID = QtWidgets.QLineEdit(Dialog)
        self.txtCID.setGeometry(QtCore.QRect(300, 160, 191, 27))
        self.txtCID.setObjectName("txtUsername")
        self.txtPassword = QtWidgets.QLineEdit(Dialog)

        self.txtPassword.setEchoMode(QtWidgets.QLineEdit.Password)

        self.txtPassword.setGeometry(QtCore.QRect(300, 190, 191, 27))
        self.txtPassword.setObjectName("txtPassword")
        self.btnLogin = QtWidgets.QPushButton(Dialog)
        self.btnLogin.setGeometry(QtCore.QRect(210, 250, 71, 41))
        self.btnLogin.setObjectName("btnLogin")

        self.btnLogin.clicked.connect(self.loginCheck)

        self.btnSignup = QtWidgets.QPushButton(Dialog)
        self.btnSignup.setGeometry(QtCore.QRect(290, 250, 81, 41))
        self.btnSignup.setObjectName("btnSignup")

        self.btnSignup.clicked.connect(self.signupButton)

        self.label_Heading = QtWidgets.QLabel(Dialog)
        self.label_Heading.setGeometry(QtCore.QRect(150, 90, 381, 51))
        self.label_Heading.setObjectName("label_Heading")

        self.retranslateUi(Dialog)
        QtCore.QMetaObject.connectSlotsByName(Dialog)
        

    def retranslateUi(self, Dialog): # ok
        _translate = QtCore.QCoreApplication.translate
        Dialog.setWindowTitle(_translate("Dialog", "Log In"))
        self.label.setText(_translate("Dialog", "CID:"))
        self.label_2.setText(_translate("Dialog", "Password:"))
        self.btnLogin.setText(_translate("Dialog", "Login"))
        self.btnSignup.setText(_translate("Dialog", "SignUp"))
        self.label_Heading.setText(_translate("Dialog", "Nutley Computer"))
        
    def user_page(self, cid): # revising
        self.userDialog = QtWidgets.QDialog()
        self.ui = Ui_Dialog_user()
        self.ui.setupUi(self.userDialog, cid)
        self.userDialog.show()
        
    def admin_page(self):
        self.adminDialog = QtWidgets.QDialog()
        self.ui = Ui_Dialog_admin()
        self.ui.setupUi(self.adminDialog)
        self.adminDialog.show()
        
    def loginCheck(self): # ok
        cid = self.txtCID.text()
        password = self.txtPassword.text()
        getDb = Sign()        
        result = getDb.login(cid,password)
        if(result):
            if cid == 'admin':
                self.admin_page()
                exit()
            else:
                self.user_page(cid)

                MainWindow = QtWidgets.QMainWindow()
                ui = Ui_MainWindow()
                ui.setupUi(MainWindow)
                MainWindow.show()
            self.clearField()
            print(result)
        else:
            print("password wrong")
            self.showMessage("Warning","Invalid email and Password")
            
    def showMessage(self,title,msg):
        msgBox = QtWidgets.QMessageBox()
        msgBox.setIcon(QtWidgets.QMessageBox.Warning)
        #msgBox.setTitle(title)
        msgBox.setText(msg)
        msgBox.setStandardButtons(QtWidgets.QMessageBox.Ok)
        msgBox.exec_()

    def signupButton(self):   
        self.signDialog = QtWidgets.QDialog()
        self.ui = Ui_Dialog()
        self.ui.setupUi(self.signDialog)
        self.signDialog.show()
                
    def clearField(self):
        self.txtCID.setText(None)
        self.txtPassword.setText(None)
        

        
if __name__ == "__main__":
    import sys
    app = QtWidgets.QApplication(sys.argv)
    Dialog = QtWidgets.QDialog()
    ui = Ui_Dialog2()
    ui.setupUi(Dialog)
    Dialog.show()




    sys.exit(app.exec_())

