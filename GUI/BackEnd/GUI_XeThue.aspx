<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GUI_XeThue.aspx.cs" Inherits="GUI.XeThue" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style5 {
            width: 300px;
        }
        .auto-style6 {
            width: 700px;
        }
        .auto-style9 {
            margin-left: 0px;
        }
        .auto-style10 {
            margin-left: 99px;
        }
        .auto-style12 {
            width: 900px;
        }
        .auto-style13 {
            width: 900px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style=" width:900px; margin:auto" border="1"><tr><td>
        <div style=" margin:auto" class="auto-style13">
            <table cellpadding="0" cellspacing="0" class="auto-style1">
                <tr>
                    <td colspan="2"><div class="auto-style2" style="text-align: center; "><h2> QUẢN LÝ XE THUÊ</h2></div></td>
                           
                </tr>
                <tr>
                    <td class="auto-style5">Mã xe thuê:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtMaXeThue" runat="server" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Mã danh mục phụ:</td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="dlMaDanhMucPhu" runat="server" DataSourceID="SqlDataSource1" CssClass="auto-style9" Width="406px" DataTextField="maDanhMucPhu" DataValueField="maDanhMucPhu">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DuLichASPConnectionString8 %>" SelectCommand="SELECT [maDanhMucPhu] FROM [danhmucphu]  where [maDanhMucPhu] LIKE '%XT%'"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Tên xe thuê:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtTenXeThue" runat="server" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Số chỗ</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtSoCho" runat="server" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Đơn giá&nbsp;</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtDonGia" runat="server" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Ảnh:</td>
                    <td class="auto-style6">                        
                        <asp:FileUpload ID="FileUploadAnh" runat="server" Width="400px" />
                        <asp:Label ID="lbLinkAnh" runat="server" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Mô tả ngắn:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtMoTaNgan" runat="server" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Mô tả dài</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtMoTaDai" runat="server" Height="150px" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td colspan="2">
                        <asp:Button ID="btnNhaplai" runat="server" Text="Nhập lại" OnClick="btnNhaplai_Click" Height="25px" />
                        <asp:Button ID="btnThem" runat="server" Text="Thêm" OnClick="btnThem_Click" Height="25px" Width="67px" />
                        <asp:Button ID="btnSua" runat="server" Text="Sửa" OnClick="btnSua_Click" Height="25px" Width="56px" CssClass="auto-style10" />
                        <asp:Button ID="btnXoa" runat="server" Text="Xoá" OnClick="btnXoa_Click" Height="25px" Width="58px" />
                        <asp:Button ID="btnTroVe" runat="server" Height="25px" Text="Trở Về" OnClick="btnTroVe_Click" Width="72px" />
                    </td>
                    
                </tr>
         
            </table>
        </div>
    
              <div style=" width:900px; margin:auto">
                  <asp:TextBox ID="txtTimkiem" runat="server"></asp:TextBox>
                  <asp:Button ID="btnTimKiem" runat="server" Text="Tìm Kiếm" OnClick="btnTimKiem_Click" Height="25px" Width="71px" />
                  </div> 
        <br />
        <div style=" margin:auto" class="auto-style12">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="click" Width="899px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <Columns>
                <asp:BoundField DataField="maXeThue" HeaderText="Mã xe thuê" />
                <asp:BoundField DataField="maDanhMucPhu" HeaderText="Mã danh mục phụ" />
                <asp:BoundField DataField="TenXeThue" HeaderText="Tên xe thuê" />
                <asp:BoundField DataField="soCho" HeaderText="Số chỗ" />
                <asp:BoundField DataField="donGia" HeaderText="Đơn giá" />
                <asp:ImageField DataImageUrlField="linkAnh" HeaderText="Ảnh">
                    <ControlStyle Width="160px" />
                </asp:ImageField>
                <asp:BoundField DataField="moTaNgan" HeaderText="Mô tả ngắn" />
                <asp:BoundField DataField="moTaDai" HeaderText="Mô tả dài" />
                <asp:BoundField DataField="linkanh" HeaderText="Link Ảnh" />
                <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
            </div></td></tr></table>
    </form>
</body>
</html>
