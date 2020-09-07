<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GUI_LichTrinh.aspx.cs" Inherits="GUI.LichTrinh" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 160px;
        }
        .auto-style5 {
            width: 800px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style=" width:800px; margin:auto" border="1"><tr><td>
        <div style=" margin:auto" class="auto-style5">
            <div class="auto-style2" style="text-align:center;width:800px; margin:auto"><h2>QUẢN LÝ LỊCH TRÌNH</h2></div>
            <table  class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Mã lịch trình"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMaLichTrinh" runat="server" Width="350px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Mã tour"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="dlMaTour" runat="server" DataSourceID="SqlDataSource2" DataTextField="maTour" DataValueField="maTour" Width="355px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DuLichASPConnectionString4 %>" SelectCommand="SELECT [maTour] FROM [tour]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        Tiêu đề nội dung</td>
                    <td>
                        <asp:TextBox ID="txtTenNoiDung" runat="server" Width="350px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        Nội dung</td>
                    <td>
                        <asp:TextBox ID="txtNoiDung" runat="server" Width="350px" Height="115px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnNhaplai" runat="server" Text="Nhập lại" OnClick="btnNhaplai_Click" Height="25px" Width="69px" />
                        <asp:Button ID="btnThem" runat="server" Text="Thêm" OnClick="btnThem_Click" Height="26px" Width="67px" />
                    </td>
                    <td>
                        <asp:Button ID="btnSua" runat="server" Text="Sửa" OnClick="btnSua_Click" Height="25px" Width="44px" />
                        <asp:Button ID="btnXoa" runat="server" Text="Xoá" OnClick="btnXoa_Click" Height="25px" Width="49px" />
                        <asp:Button ID="btnTrove" runat="server" Text="Trở về" OnClick="btnTrove_Click" Height="25px" Width="60px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtTimkiem" runat="server" Height="19px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnTimkiem" runat="server" Text="Tìm kiếm" OnClick="btnTimkiem_Click" Height="30px" Width="81px" />
                    </td>
                </tr>
            </table>
        </div>
        <br />
        <div style=" margin:auto" class="auto-style5">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="click" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="800px">
            <Columns>
                <asp:BoundField DataField="maLichTrinh" HeaderText="Mã lịch trình" />
                <asp:BoundField DataField="maTour" HeaderText="Mã tour" />
                <asp:BoundField DataField="TenNoiDung" HeaderText="Tiêu đề nội dung" />
                <asp:BoundField DataField="noiDung" HeaderText="Nội dung" />
                <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
            </div>
            </td></tr></table>
    </form>
</body>
</html>
