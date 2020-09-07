<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GUI_DanhMucChinh.aspx.cs" Inherits="GUI.GUI_DanhMucChinh" %>

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
            width: 81px;
        }
        .auto-style8 {
            width: 157px;
        }
        .auto-style9 {
            width: 800px;
            height: 320px;
        }
        .auto-style10 {
            margin-left: 0px;
            margin-top: 0px;
        }
        
        .auto-style11 {
            width: 73px;
        }
        .auto-style12 {
            width: 317px;
            float: left;
        }
        .auto-style13 {
            height: 45px;
           
        }
        
    </style>
</head>
<body style="height: 543px">
    <form id="form1" runat="server">
        <table style="text-align:center; margin:auto" class="auto-style9" border="1"><tr><td>
        <div >
           
            <table cellpadding="0" cellspacing="0" class="auto-style1">
                <tr>
                    <td colspan="4" class="auto-style13"><h2>DANH MỤC CHÍNH</h2></td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">Mã danh mục:</td>
                    <td class="auto-style6" colspan="2">
                        <asp:TextBox ID="txtMaDanhMuc" runat="server" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">Tên danh mục</td>
                    <td colspan="2">
                        <asp:TextBox ID="txtTenDanhMuc" runat="server" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">Mô tả ngắn:</td>
                    <td colspan="2">
                        <asp:TextBox ID="txtMoTaNgan" runat="server" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">Mô tả dài</td>
                    <td class="auto-style6" colspan="2">
                        <asp:TextBox ID="txtMoTaDai" runat="server" Height="150px" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style8">
                        <asp:Button ID="btnNhaplai" runat="server" Text="Nhập lại" OnClick="btnNhaplai_Click" Height="25px" Width="82px" />
                    </td>
                    
                    <td class="auto-style7">
                        <asp:Button ID="btnThem" runat="server" Text="Thêm" OnClick="btnThem_Click" Height="25px" Width="67px" />
                    </td>
                    
                    <td class="auto-style11">
                        <asp:Button ID="btnSua" runat="server" Text="Sửa" OnClick="btnSua_Click" Height="25px" Width="56px" />
                    </td>
                    
                    <td class="auto-style2">
                        <asp:Button ID="btnXoa" runat="server" Text="Xoá" OnClick="btnXoa_Click" Height="25px" Width="58px" />
                    </td>
                    
                </tr>
         
            </table>
            <div style=" margin:auto; " class="auto-style12">
                  <asp:TextBox ID="txtTimkiem" runat="server"  CssClass="auto-style10" Height="24px" Width="200px"></asp:TextBox><asp:Button ID="btnTimKiem" runat="server" Text="Tìm Kiếm" Height="25px" OnClick="btnTimKiem_Click" /> </div> 
                <div style=" width:200px; margin:auto; float: right;">
                    <asp:Button ID="btnTroVe" runat="server" Height="25px" OnClick="btnTroVe_Click" Text="Trở Về" />
            </div>
        </div>
    
              
        <br />
        <div style=" width:800px; margin:auto">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="click" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="798px" AllowCustomPaging="True" Height="32px">
            <Columns>
                <asp:BoundField DataField="maDanhMuc" HeaderText="Mã danh mục" />
                <asp:BoundField DataField="TenDanhMuc" HeaderText="Tên danh mục" />
                <asp:BoundField DataField="moTaNgan" HeaderText="Mô tả ngắn" />
                <asp:BoundField DataField="moTaDai" HeaderText="Mô tả dài" />
                <asp:CommandField SelectText="Chọn dòng" ShowSelectButton="True" />
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
