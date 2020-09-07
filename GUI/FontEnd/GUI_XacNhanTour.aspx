<%@ Page Title="" Language="C#" MasterPageFile="~/FontEnd/Master.Master" AutoEventWireup="true" CodeBehind="GUI_XacNhanTour.aspx.cs" Inherits="GUI.GUI_XacNhanTour" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <h4>Đã xác nhận đặt tour gồm những thông tin sau:</h4>
        <table>
            <tr>
                <td>Mã tour:</td>
                <td>
                    <asp:Label ID="LabelMaTour" runat="server"></asp:Label>
                </td>
            </tr>
            <%--<tr>
                <td>Tên tour:</td>
                <td>
                    <asp:Label ID="LabelTenTour" runat="server" Text='<%#Eval("tentour") %>'></asp:Label>
                </td>
            </tr>--%>
            <tr>
                <td>Họ tên:</td>
                <td>
                    <asp:Label ID="LabelHoTen" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Ngày Sinh:</td>
                <td>
                    <asp:Label ID="LabelNgaySinh" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Giới tính:</td>
                <td>
                    <asp:Label ID="LabelGioiTinh" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Địa chỉ:</td>
                <td>
                    <asp:Label ID="LabelDiaChi" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Số điện thoại:</td>
                <td>
                    <asp:Label ID="LabelSdt" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Email:</td>
                <td>
                    <asp:Label ID="LabelEmail" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Số vé:</td>
                <td>
                    <asp:Label ID="LabelSoVe" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Tổng tiền:</td>
                <td>
                    <asp:Label ID="LabelTongTien" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Thời gian đặt:</td>
                <td>
                    <asp:Label ID="LabelThoiGianDat" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Ngày khởi hành:</td>
                <td>
                    <asp:Label ID="LabelNgayKhoiHanh" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
</asp:Content>
