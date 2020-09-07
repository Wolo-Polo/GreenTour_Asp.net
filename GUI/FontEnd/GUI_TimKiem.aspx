<%@ Page Title="" Language="C#" MasterPageFile="~/FontEnd/Master.Master" AutoEventWireup="true" CodeBehind="GUI_TimKiem.aspx.cs" Inherits="GUI.GUI_TimKiem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Kết quả tìm kiếm
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <h3 class="titl">Các TOUR liên quan</h3>
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
        <ItemTemplate>
            <div class="view view-first">
                <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("linkanh") %>'/>
                <div class="mask">
                    <h2>
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("tentour") %>'></asp:Label>
                    </h2>
                    <p><b>Giá:</b> <asp:Label ID="Label2" runat="server" Text='<%#Eval("giatour") %>'></asp:Label></p>
                    <p><b>Thời gian:</b> <asp:Label ID="Label3" runat="server" Text='<%#Eval("thoigiantour") %>'></asp:Label></p>
                    <p><b>Phương tiện:</b><asp:Label ID="Label4" runat="server" Text='<%#Eval("dichvu") %>'></asp:Label></p>
                    <p><b>Khởi hành:</b> <asp:Label ID="Label5" runat="server" Text='<%#Eval("ngaykhoihanh") %>'></asp:Label></p>
                    <a href='GUI_ChiTietTour.aspx?matour=<%#Eval("matour") %>' class="info">Xem Thêm</a>
                </div>
                <span class="titlet"><asp:Label ID="Label6" runat="server" Text='<%#Eval("tentour") %>'></asp:Label></span><br>
                <div class="price"><b><asp:Label ID="Label7" runat="server" Text='<%#Eval("giatour") %>'></asp:Label></b></div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
