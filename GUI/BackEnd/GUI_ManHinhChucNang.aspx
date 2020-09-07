<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GUI_ManHinhChucNang.aspx.cs" Inherits="GUI.GUI_ManHinhChucNang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-style: italic;
            font-weight: bold;
            font-size: 18px;
            height: 68px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:999px; margin:auto ">

            <table cellpadding="0" cellspacing="0" class="auto-style1">
                <tr>
                    <td colspan="3">
                        <div class="auto-style2" style="text-align: center; font-size: large; font-weight: bold; font-style: italic;">CHỨC NĂNG ADMIN</div>
                    </td>
                </tr>
                <tr>
                    <td style="width:33%"><div style="text-align: center;"><asp:Button ID="btnTour" runat="server" Text="Tour" Height="50px" Width="150px" OnClick="btnTour_Click" /></div></td>
                    <td style="width:33%"><div style="text-align: center;"><asp:Button ID="btnDanhMucChinh" runat="server" Text="Danh Mục Chính" Height="50px" Width="150px" OnClick="btnDanhMucChinh_Click" /></div></td>
                    <td style="width:33%"><div style="text-align: center;">
                        <asp:Button ID="btnDanhMucPhu" runat="server" Height="50px" OnClick="btnDanhMucPhu_Click" Text="Danh Mục Phụ" Width="150px" /></div>
                    </td>
                </tr>
                <tr>
                   <td style="width:33%"><div style="text-align: center;"><asp:Button ID="btnSuKien" runat="server" Text="Sự Kiện" Height="50px" Width="150px" OnClick="btnSuKien_Click" /></div></td>
                    <td style="width:33%"><div style="text-align: center;"><asp:Button ID="btnLichTrinh" runat="server" Text="Lịch Trình" Height="50px" Width="150px" OnClick="btnLichTrinh_Click" /></div></td>
                    <td style="width:33%"><div style="text-align: center;"></di><asp:Button ID="btnXeThue" runat="server" Text="Xe Thuê" Height="50px" Width="150px" OnClick="btnXeThue_Click" /></td>
                </tr>
                <tr>
                    <td style="width:33%"><div style="text-align: center;"><asp:Button ID="btnTaiKhoan" runat="server" Text="Tài Khoản" Height="50px" Width="150px" OnClick="btnTaiKhoan_Click" /></div></td>
                    <td style="width:33%"><div style="text-align: center;">
                        <asp:Button ID="btnBooke" runat="server" Height="50px" OnClick="btnBooke_Click" Text="Booked" Width="150px" />
                        </div></td>
                    <td style="width:33%"><div style="text-align: center;"></di><asp:Button ID="btnThoat" runat="server" Text="Thoát" Height="50px" Width="150px" OnClick="btnThoat_Click" /></td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
