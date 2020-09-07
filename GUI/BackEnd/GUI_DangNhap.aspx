<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GUI_DangNhap.aspx.cs" Inherits="GUI.GUI_DangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<!--views/users/login.php-->
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge; text/html; charset=utf-8" />
    <title>Đăng nhập ~ GreenTour</title>
    <link href="../favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <link href="csse2bf.css" rel="stylesheet" />
    
</head>
    <body>
        <style>
            #username{height:35px;}
             #password{height:35px;}
              
        </style>
<div class="login">
    <div class="logincontainer ">
            <div class="text-center mb20">
                <h1 class="dialog-heading">Green Tour</h1>
                <h2 class="dialog-subheading">Đăng nhập vào quản trị</h2>
            </div>
        <div id="login" class="login-container">
<form runat="server" action="" class="form-signin form-signin_admin" id="loginform" maxlength="50" method="post">                <div id="form-login-facebook" class="mb5" style="display: none;">
                </div>
                <ul class="list-group">
                    
                    <li class="form-group list-group-item">
                        
                        <asp:TextBox  class="form-control username" id="username" runat="server" Height="30px" ></asp:TextBox>
                        
                    </li>
                    <li class="form-group list-group-item">
                       <asp:TextBox class="form-control" id="password" runat="server"  TextMode ="Password"></asp:TextBox>
                    </li>
                    <li class="list-group-item">
                        <asp:Button class="btn-login" ID="Button1" runat="server" Text="Đăng Nhập" OnClick="btnDangNhap_Click" />
                        <asp:Button class="btn-login" ID="Button2" runat="server" Text="Quay Lại" />
                    </li>
                    
                </ul>
                
</form>        </div>
</div></div>
</body>
</html>
