<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GUI_DanhMucPhu.aspx.cs" Inherits="GUI.GUI_DanhMucPhu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style5 {
            width: 266px;
        }
        .auto-style6 {
            width: 646px;
        }
        .auto-style7 {
            width: 59px;
        }
        .auto-style8 {
            width: 157px;
        }
        .auto-style9 {
            height: 43px;
        }
        .auto-style10 {
            width: 266px;
            height: 140px;
        }
        .auto-style11 {
            width: 646px;
            height: 140px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style=" width:900px; margin:auto" border="1"><tr><td>
        <div style=" width:900px; margin:auto">
            <table cellpadding="0" cellspacing="0" class="auto-style1">
                <tr>
                    <td colspan="4" class="auto-style9"><div class="auto-style2" style="text-align: center; "><h2>DANH MỤC PHỤ</h2></div></td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">Mã danh mục phụ:</td>
                    <td class="auto-style6" colspan="2">
                        <asp:TextBox ID="txtMaDanhMuc" runat="server" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">Mã danh mục chính</td>
                    <td class="auto-style6" colspan="2">
                        <asp:DropDownList ID="dlMaDanhMuc" runat="server" DataSourceID="SqlDataSource1" DataTextField="maDanhMuc" DataValueField="maDanhMuc" Width="409px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DuLichASPConnectionString3 %>" SelectCommand="SELECT [maDanhMuc] FROM [danhmucchinh]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">Tên danh mục</td>
                    <td class="auto-style6" colspan="2">
                        <asp:TextBox ID="txtTenDanhMucPhu" runat="server" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">Ảnh</td>
                    <td colspan="2">
                        <asp:FileUpload ID="FileUploadAnh" runat="server" Width="400px" />
                        <asp:Label ID="lbLinkAnh" runat="server" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">Mô tả ngắn:</td>
                    <td colspan="2">
                        <asp:TextBox ID="txtMoTaNgan" runat="server" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10" colspan="2">Mô tả dài</td>
                    <td class="auto-style11" colspan="2">
                        <asp:TextBox ID="txtMoTaDai" runat="server" Height="129px" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style8">
                        <asp:Button ID="btnNhaplai" runat="server" Text="Nhập lại" OnClick="btnNhaplai_Click" Height="29px" Width="78px" />
                        <asp:Button ID="btnThem" runat="server" Text="Thêm" OnClick="btnThem_Click" Height="27px" Width="67px" />
                    </td>
                    
                    <td class="auto-style7">
                        <asp:Button ID="btnSua" runat="server" Text="Sửa" OnClick="btnSua_Click" Height="27px" Width="56px" />
                    </td>
                    
                    <td class="auto-style2">
                        &nbsp;</td>
                    
                    <td class="auto-style2">
                        <asp:Button ID="btnXoa" runat="server" Text="Xoá" OnClick="btnXoa_Click" Height="27px" Width="58px" />
                  <span style="margin-left:360px">
                      <asp:Button ID="btnTroVe" runat="server" Text="Trở Về" Height="25px" OnClick="btnTroVe_Click" /></span>
                    </td>
                    
                </tr>
         
            </table>
        </div>
    
              <div style=" width:900px; margin:auto">
                  <asp:TextBox ID="txtTimkiem" runat="server" Height="16px"></asp:TextBox><asp:Button ID="btnTimKiem" runat="server" Text="Tìm Kiếm" Height="26px" OnClick="btnTimKiem_Click" Width="74px" />
              </div> 
        <br />
        <div style=" width:900px; margin:auto">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="click" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="898px" Height="32px" AllowCustomPaging="True">
            <Columns>
                <asp:BoundField DataField="maDanhMucPhu" HeaderText="Mã danh mục phụ" />
                <asp:BoundField DataField="maDanhMuc" HeaderText="Mã danh mục chính" />
                <asp:BoundField DataField="TenDanhMucPhu" HeaderText="Tên danh mục phụ" />
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
            </div>
            </td></tr></table>
    </form>
</body>
</html>

