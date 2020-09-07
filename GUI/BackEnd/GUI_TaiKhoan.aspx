<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GUI_TaiKhoan.aspx.cs" Inherits="GUI.GUI_TaiKhoan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
      
        .auto-style5 {
            margin-left: 66px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style=" width:800px; margin:auto" border="1"><tr><td>
        <div style="width:800px; margin:auto">

            <table cellpadding="0" cellspacing="0" class="auto-style1">
                <tr>
                    <td colspan="6">
                        <div class="auto-style2" style="text-align: center;">
                          <h2>QUẢN LÝ TÀI KHOẢN ADMIN</h2>  </div>
                    </td>
                </tr>
                <tr>
                    <td style="width:25%" colspan="3">Tên Tài Khoản</td>
                    <td colspan="3">
                        <asp:TextBox ID="txtTenTaiKhoan" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">Mật Khẩu</td>
                    <td colspan="3">
                        <asp:TextBox ID="txtMatKhau" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">Loại Tài Khoản</td>
                    <td colspan="3">
                        <asp:DropDownList ID="ddlLoai" runat="server" Width="305px">
                            <asp:ListItem>Master</asp:ListItem>
                            <asp:ListItem>Staff</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width:16%">
                        <asp:Button ID="btnTim" runat="server" Text="Tìm" OnClick="btnTim_Click" />                      
                        
                    </td>
                    <td style="width:16%">
                        <asp:Button ID="btnThem" runat="server" Text="Thêm" OnClick="btnThem_Click" /></td>
                    <td style="width:16%">
                        <asp:Button ID="btnSua" runat="server" Text="Sửa" OnClick="btnSua_Click" /></td>
                    <td style="width:16%">
                        <asp:Button ID="btnXoa" runat="server" Text="Xoá" OnClick="btnXoa_Click" />
                    </td>
                    <td style="width:16%">
                        <asp:Button ID="btnNhapLai" runat="server" Text="Nhập Lại" OnClick="btnNhapLai_Click" />
                    </td>
                    <td style="width:16%">
                        <asp:Button ID="btnTroVe" runat="server" Text="Trở Về" CssClass="auto-style5" OnClick="btnTroVe_Click" />
                    </td>
                </tr>
            </table>
            <asp:GridView ID="grvTaiKhoan" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="grvTaiKhoan_SelectedIndexChanged" Width="802px" AllowCustomPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="tentaikhoan" HeaderText="Tên Tài Khoản" />
                    <asp:BoundField DataField="matkhau" HeaderText="Mật Khẩu" />
                    <asp:BoundField DataField="loaiTaiKhoan" HeaderText="Loại Tài Khoản" />
                    <asp:CommandField HeaderText="Chọng Dòng" SelectText="Chọn" ShowSelectButton="True" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
        </div>
            </td></tr></table>
    </form>
</body>
</html>
