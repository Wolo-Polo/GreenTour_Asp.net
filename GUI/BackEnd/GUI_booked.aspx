<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GUI_booked.aspx.cs" Inherits="GUI.GUI_booked" %>

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
        }
        .auto-style3 {
            height: 46px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 1200px; margin: auto">
            <table border="1"><tr><td>
            <div>

                <table class="auto-style1">
                    <tr>
                        <td colspan="2" class="auto-style3"><div class="auto-style2" style="text-align: center; ">QUẢN LÝ TOUR ĐÃ BOOK</div></td>
                    </tr>
                    <tr>
                        <td style="width:25%">Mã Booked</td>
                        <td>
                            <asp:DropDownList ID="ddlMaBooked" runat="server" DataSourceID="SqlDataSource2" DataTextField="maBooked" DataValueField="maBooked" Width="355px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DuLichASPConnectionString %>" SelectCommand="SELECT [maBooked] FROM [booked]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td>Mã Tour</td>
                        <td>
                            <asp:DropDownList ID="ddlMaTour" runat="server" DataSourceID="SqlDataSource1" DataTextField="maTour" DataValueField="maTour" Width="355px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DuLichASPConnectionString %>" SelectCommand="SELECT [maTour] FROM [booked]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td>Tên Khách Hàng</td>
                        <td>
                            <asp:TextBox ID="txtTenKhachHang" runat="server" Width="350px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Ngày Sinh</td>
                        <td>
                            Ngày<asp:TextBox ID="txtNgayNS" runat="server" Width="66px"></asp:TextBox>
                            /Tháng<asp:TextBox ID="txtThangNS" runat="server" Width="62px"></asp:TextBox>
                            /Năm<asp:TextBox ID="txtNamNS" runat="server" Width="85px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Giới Tính</td>
                        <td>
                            <asp:RadioButtonList ID="rdbgioitinh" runat="server" Height="30px" RepeatDirection="Horizontal" Width="352px">
                                <asp:ListItem Selected="True">Nam</asp:ListItem>
                                <asp:ListItem>Nữ</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td>Số Điện Thoại</td>
                        <td>
                            <asp:TextBox ID="txtSoDienThoai" runat="server" Width="350px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Gmail</td>
                        <td>
                            <asp:TextBox ID="txtGmail" runat="server" Width="350px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Địa Chỉ</td>
                        <td>
                            <asp:TextBox ID="txtDiaChi" runat="server" Width="350px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Số Vé</td>
                        <td>
                            <asp:TextBox ID="txtSoVe" runat="server" Width="350px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Ngày Đặt Tour</td>
                        <td>
                            <asp:TextBox ID="txtNgayDatTour" runat="server" Enabled="False" Width="350px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Ngày Khởi Hành</td>
                        <td>
                            <asp:TextBox ID="txtNgayKhoiHanh" runat="server" Enabled="False" Width="350px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Tổng Tiền</td>
                        <td>
                            <asp:TextBox ID="txtTongTien" runat="server" Width="350px" Enabled="False"></asp:TextBox>
                            <asp:Button ID="btnTinh" runat="server" OnClick="btnTinh_Click" Text="Thành Tiền" Width="109px" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnTim" runat="server" OnClick="btnTim_Click" Text="Tìm Kiếm" />
                            <asp:TextBox ID="txtDieuKien" runat="server" Width="350px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnSua" runat="server" Text="Sửa" OnClick="btnSua_Click" />
                            <asp:Button ID="btnXoa" runat="server" Text="Huỷ book" OnClick="btnXoa_Click" />
                            <asp:Button ID="btnNhapLai" runat="server" Text="Nhập Lại" OnClick="btnNhapLai_Click" />
                            <asp:Button ID="btnTroVe" runat="server" OnClick="btnTroVe_Click" Text="Trở Về" />
                        </td>
                    </tr>
                </table>
                <asp:GridView ID="grvBooked" runat="server" AutoGenerateColumns="False" Width="1199px" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="grvBooked_SelectedIndexChanged" OnRowDeleted="grvBooked_RowDeleted" AllowCustomPaging="True">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="mabooked" HeaderText="Mã Booked" />
                        <asp:BoundField DataField="maTour" HeaderText="Mã Tour" />
                        <asp:BoundField DataField="tenKhachHang" HeaderText="Tên Khách Hàng" />
                        <asp:BoundField DataField="ngaySinh" HeaderText="Ngày Sinh" DataFormatString="{0:dd/MM/yyyy}" />
                        <asp:BoundField DataField="gioiTinh" HeaderText="Giới Tính" />
                        <asp:BoundField DataField="soDienThoai" HeaderText="Số Điện Thoại" />
                        <asp:BoundField DataField="gmail" HeaderText="Gmail" />
                        <asp:BoundField DataField="diaChi" HeaderText="Địa Chỉ" />
                        <asp:BoundField DataField="ngayDatTour" HeaderText="Ngày Đặt Tour" DataFormatString="{0:dd/MM/yyyy}" />
                        <asp:BoundField DataField="ngayKhoiHanh" HeaderText="Ngày Khởi Hành" DataFormatString="{0:dd/MM/yyyy}" />
                        <asp:BoundField DataField="soVe" HeaderText="Số Vé" />
                        <asp:BoundField DataField="tongTien" HeaderText="Tổng Tiền" />
                        <asp:CommandField HeaderText="Chọn Dòng" SelectText="Chọn" ShowSelectButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </div></td></tr></table>
        </div>
    </form>
</body>
</html>
