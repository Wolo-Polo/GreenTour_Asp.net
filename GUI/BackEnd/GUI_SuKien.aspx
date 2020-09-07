<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GUI_SuKien.aspx.cs" Inherits="GUI.SuKien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 4px;
        }
        .auto-style5 {
            width: 266px;
        }
        .auto-style6 {
            width: 646px;
        }
        .auto-style7 {
            width: 81px;
        }
        .auto-style8 {
            width: 157px;
        }
        .auto-style9 {
            width: 266px;
            height: 25px;
        }
        .auto-style10 {
            width: 646px;
            height: 25px;
        }
        .auto-style11 {
            width: 800px;
        }
        .auto-style12 {
            width: 800px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style=" width:800px; margin:auto" border="1"><tr><td>
        <div style=" margin:auto" class="auto-style12">
            <table cellpadding="0" cellspacing="0" class="auto-style1">
                <tr>
                    <td colspan="3"><div class="auto-style2" style="text-align: center;"><h2>QUẢN LÝ SỰ KIỆN</h2></div></td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">Mã sự kiện:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtMaSuKien" runat="server" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9" colspan="2">Mã danh mục phụ:</td>
                    <td class="auto-style10">
                        <asp:DropDownList ID="dlMaDanhMucPhu" runat="server" DataSourceID="SqlDataSource1" Width="405px" DataTextField="maDanhMucPhu" DataValueField="maDanhMucPhu">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DuLichASPConnectionString5 %>" SelectCommand="SELECT [maDanhMucPhu] FROM [danhmucphu]  where [maDanhMucPhu] LIKE '%SK%'"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">Mã tour:</td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="dlMaTour" runat="server" DataSourceID="SqlDataSource2" Width="405px" DataTextField="maTour" DataValueField="maTour">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DuLichASPConnectionString6 %>" SelectCommand="SELECT [maTour] FROM [tour]"></asp:SqlDataSource>
                        <br /><asp:CheckBox ID="ckbtour" runat="server" OnCheckedChanged="ckbtour_CheckedChanged" Text="Có thuộc danh sách mã tour không?" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">Tên sự kiện:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtTenSuKien" runat="server" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">Ảnh:</td>
                    <td class="auto-style6">
                        <asp:FileUpload ID="FileUploadAnh" runat="server" Width="400px" />
                        <asp:Label ID="lbLinkAnh" runat="server" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">Mô tả ngắn:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtMoTaNgan" runat="server" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">Mô tả dài</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtMoTaDai" runat="server" Width="400px" Height="150px"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style8">
                        <asp:Button ID="btnNhaplai" runat="server" Text="Nhập lại" OnClick="btnNhaplai_Click" Height="25px" Width="74px" />
                    </td>
                    
                    <td class="auto-style7">
                        <asp:Button ID="btnThem" runat="server" Text="Thêm" OnClick="btnThem_Click" Height="25px" Width="67px" />
                    </td>
                    
                    <td class="auto-style2">
                        <asp:Button ID="btnSua" runat="server" Text="Sửa" OnClick="btnSua_Click" Height="25px" Width="56px" />
                        <asp:Button ID="btnXoa" runat="server" Text="Xoá" OnClick="btnXoa_Click" Height="25px" Width="58px" />
                    </td>
                    
                </tr>
         
            </table>
        </div>
    
              <div style=" width:800px; margin:auto">
                  <asp:TextBox ID="txtTimkiem" runat="server" Height="25px"></asp:TextBox><asp:Button ID="btnTimKiem" runat="server" Text="Tìm Kiếm" Height="25px" OnClick="btnTimKiem_Click" Width="76px" />
                  <span style="margin-left:30px"><asp:Button ID="btnTroVe" runat="server" Text="Trở Về" Height="25px" OnClick="btnTroVe_Click" Width="57px" /></span>
              </div> 
        <br />
        <div style=" margin:auto" class="auto-style11">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="click" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="797px" AllowCustomPaging="True">
            <Columns>
                <asp:BoundField DataField="maSuKien" HeaderText="Mã sự kiện" />
                <asp:BoundField DataField="maDanhMucPhu" HeaderText="Mã danh mục phụ" />
                <asp:BoundField DataField="maTour" HeaderText="Mã tour" />
                <asp:BoundField DataField="TenSuKien" HeaderText="Tên sự kiện" />
                <asp:ImageField DataImageUrlField="linkAnh" HeaderText="Ảnh">
                    <ControlStyle Width="160px" />
                </asp:ImageField>
                <asp:BoundField DataField="moTaNgan" HeaderText="Mô tả ngắn" />
                <asp:BoundField DataField="moTaDai" HeaderText="Mô tả dài" />
                <asp:BoundField DataField="linkanh" HeaderText="Link Ảnh" />
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
            </div> </td></tr></table>
    </form>
</body>
</html>
