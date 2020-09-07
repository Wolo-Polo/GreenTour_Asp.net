<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GUI_Tour.aspx.cs" Inherits="GUI.GUI_Tour" %>

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
            width: 266px;
            height: 25px;
        }
        .auto-style10 {
            width: 646px;
            height: 25px;
        }
        .auto-style11 {
            width: 900px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style=" width:1200px; margin:auto" border="1"><tr><td>
        <div style=" width:900px; margin:auto">
            <table cellpadding="0" cellspacing="0" class="auto-style1">
                <tr>
                    <td colspan="3"><div class="auto-style2" style="text-align: center; "><h2>QUẢN LÝ TOUR</h2></div></td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">Mã tour:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtTour" runat="server" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">Mã danh mục phụ:</td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="dlMaDanhMucPhu" runat="server" Width="406px" DataSourceID="SqlDataSource1" DataTextField="maDanhMucPhu" DataValueField="maDanhMucPhu">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DuLichASPConnectionString7 %>" SelectCommand="SELECT [maDanhMucPhu] FROM [danhmucphu] where [maDanhMucPhu] LIKE '%TOUR%'"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9" colspan="2">Tên tour:</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtTenTour" runat="server" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">Điểm xuất phát:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtDiemXuatPhat" runat="server" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">Điểm đến cuối:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtDiemDenCuoi" runat="server" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">Dịch vụ:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtDichVu" runat="server" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">Thời gian tour:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtThoiGianTour" runat="server" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">Ngày khởi hành</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtNgayKhoiHanh" runat="server" Width="400px"></asp:TextBox>
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
                        <asp:TextBox ID="txtMoTaDai" runat="server" Height="150px" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">Giá tour</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtGiaTour" runat="server" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style8">
                        <asp:Button ID="btnNhaplai" runat="server" Text="Nhập lại" OnClick="btnNhaplai_Click" Height="25px" />
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
    
              <div style=" width:900px; margin:auto">
                  <asp:TextBox ID="txtTimkiem" runat="server" Height="22px"></asp:TextBox><asp:Button ID="btnTimKiem" runat="server" Text="Tìm Kiếm" Height="25px" OnClick="btnTimKiem_Click" Width="73px" />
                  <span style="margin-left: 260px">
                      <asp:Button ID="btnTroVe" runat="server" Text="Trở Về" Height="25px" OnClick="btnTroVe_Click" /></span>
              </div> 
        <br />
        <div  class="auto-style11">
        <asp:GridView ID="gvTour" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="click" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="1199px" AllowCustomPaging="True">
            <Columns>
                <asp:BoundField DataField="maTour" HeaderText="Mã Tour" />
                <asp:BoundField DataField="maDanhMucPhu" HeaderText="Mã danh mục phụ" />
                <asp:BoundField DataField="tenTour" HeaderText="Tên Tour" />
                <asp:BoundField DataField="diemxuatphat" HeaderText="Điểm Xuất Phát" />
                <asp:BoundField DataField="diemdencuoi" HeaderText="Điểm Đến Cuối" />
                <asp:BoundField DataField="dichvu" HeaderText="Dịch Vụ" />
                <asp:BoundField DataField="thoigiantour" HeaderText="Thời Gian Tour" />
                <asp:BoundField DataField="ngaykhoihanh" HeaderText="Ngày Khởi Hành" DataFormatString="{0:MM/dd/yyyy}" />
                <asp:ImageField DataImageUrlField="linkAnh" HeaderText="Ảnh">
                    <ControlStyle Width="160px" />
                </asp:ImageField>
                <asp:BoundField DataField="moTaNgan" HeaderText="Mô tả ngắn" />
                <asp:BoundField DataField="moTaDai" HeaderText="Mô tả dài" />
                <asp:BoundField DataField="giatour" HeaderText="Giá Tour" />
                <asp:BoundField DataField="linkAnh" HeaderText="Link Ảnh" />
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
