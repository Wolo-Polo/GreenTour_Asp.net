<%@ Page Title="" Language="C#" MasterPageFile="~/FontEnd/Master.Master" AutoEventWireup="true" CodeBehind="GUI_TrangChu.aspx.cs" Inherits="GUI.GUI_TrangChu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Trang chủ
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <div class="hotTour">
        <h3 class="tis">Tour bán chạy</h3>
        <div class="con_tour_hot">
            <table style="width: 100%;" class="hotTable">
                <tbody>
                    <asp:DataList ID="DataListHotTour" runat="server">
                        <ItemTemplate>
                            <tr class="row1" >
                                <td style="padding: 7px 25px; border-bottom: 1px solid #EEE"><span class="stt" style="background: #28B028; color: #FFF; width: 20px; text-align: center; line-height: 20px; float: left; border-radius: 100%;">♥</span></td>
                                <td style="padding: 7px 40px 7px 40px; border-bottom: 1px solid #EEE"><a href='GUI_ChiTietTour.aspx?matour=<%#Eval("matour") %>' style="font-weight: 500; color: #119C4A; text-decoration: none; transition: all 0.5s ease-in-out 0s"><%#Eval("tentour") %></a></td>
                                <td style="padding: 7px 40px 7px 40px; border-bottom: 1px solid #EEE"><%#Eval("thoigiantour") %></td>
                                <td class="price" style="padding: 7px 25px 7px 40px; border-bottom: 1px solid #EEE; color: #FF0000; font-weight: bold; text-align: right;"><%#Eval("giatour") %></td>
                            </tr>
                        </ItemTemplate>
                    </asp:DataList>
                </tbody>
            </table>
        </div>
    </div>
    <h3 class="titl">TOUR MIỀN BẮC</h3>
    <asp:DataList ID="DataListMB" runat="server" RepeatColumns="3">
        <ItemTemplate>
            <div class="view view-first">
                <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("linkanh") %>' />
                <div class="mask">
                    <h2>
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("tentour") %>'></asp:Label>
                    </h2>
                    <p>
                        <b>Giá:</b>
                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("giatour") %>'></asp:Label>
                    </p>
                    <p>
                        <b>Thời gian:</b>
                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("thoigiantour") %>'></asp:Label>
                    </p>
                    <p><b>Phương tiện:</b><asp:Label ID="Label4" runat="server" Text='<%#Eval("dichvu") %>'></asp:Label></p>
                    <p>
                        <b>Khởi hành:</b>
                        <asp:Label ID="Label5" runat="server" Text='<%#Eval("ngaykhoihanh") %>'></asp:Label>
                    </p>
                    <a href='GUI_ChiTietTour.aspx?matour=<%#Eval("matour") %>' class="info">Xem Thêm</a>
                </div>
                <span class="titlet">
                    <asp:Label ID="Label6" runat="server" Text='<%#Eval("tentour") %>'></asp:Label></span><br>
                <div class="price">
                    <b>
                        <asp:Label ID="Label7" runat="server" Text='<%#Eval("giatour") %>'></asp:Label></b>
                </div>
            </div>
        </ItemTemplate>
    </asp:DataList>

    <h3 class="titl">TOUR MIỀN TRUNG</h3>
    <asp:DataList ID="DataListMT" runat="server" RepeatColumns="3">
        <ItemTemplate>
            <div class="view view-first">
                <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("linkanh") %>' />
                <div class="mask">
                    <h2>
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("tentour") %>'></asp:Label>
                    </h2>
                    <p>
                        <b>Giá:</b>
                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("giatour") %>'></asp:Label>
                    </p>
                    <p>
                        <b>Thời gian:</b>
                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("thoigiantour") %>'></asp:Label>
                    </p>
                    <p><b>Phương tiện:</b><asp:Label ID="Label4" runat="server" Text='<%#Eval("dichvu") %>'></asp:Label></p>
                    <p>
                        <b>Khởi hành:</b>
                        <asp:Label ID="Label5" runat="server" Text='<%#Eval("ngaykhoihanh") %>'></asp:Label>
                    </p>
                    <a href='GUI_ChiTietTour.aspx?matour=<%#Eval("matour") %>' class="info">Xem Thêm</a>
                </div>
                <span class="titlet">
                    <asp:Label ID="Label6" runat="server" Text='<%#Eval("tentour") %>'></asp:Label></span><br>
                <div class="price">
                    <b>
                        <asp:Label ID="Label7" runat="server" Text='<%#Eval("giatour") %>'></asp:Label></b>
                </div>
            </div>
        </ItemTemplate>
    </asp:DataList>

    <h3 class="titl">TOUR MIỀN NAM</h3>
    <asp:DataList ID="DataListMN" runat="server" RepeatColumns="3">
        <ItemTemplate>
            <div class="view view-first">
                <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("linkanh") %>' />
                <div class="mask">
                    <h2>
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("tentour") %>'></asp:Label>
                    </h2>
                    <p>
                        <b>Giá:</b>
                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("giatour") %>'></asp:Label>
                    </p>
                    <p>
                        <b>Thời gian:</b>
                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("thoigiantour") %>'></asp:Label>
                    </p>
                    <p><b>Phương tiện:</b><asp:Label ID="Label4" runat="server" Text='<%#Eval("dichvu") %>'></asp:Label></p>
                    <p>
                        <b>Khởi hành:</b>
                        <asp:Label ID="Label5" runat="server" Text='<%#Eval("ngaykhoihanh") %>'></asp:Label>
                    </p>
                    <a href='GUI_ChiTietTour.aspx?matour=<%#Eval("matour") %>' class="info">Xem Thêm</a>
                </div>
                <span class="titlet">
                    <asp:Label ID="Label6" runat="server" Text='<%#Eval("tentour") %>'></asp:Label></span><br>
                <div class="price">
                    <b>
                        <asp:Label ID="Label7" runat="server" Text='<%#Eval("giatour") %>'></asp:Label></b>
                </div>
            </div>
        </ItemTemplate>

    </asp:DataList>

    <h3 class="titl">TOUR NƯỚC NGOÀI</h3>
    <asp:DataList ID="DataListNN" runat="server" RepeatColumns="3">
        <ItemTemplate>
            <div class="view view-first">
                <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("linkanh") %>' />
                <div class="mask">
                    <h2>
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("tentour") %>'></asp:Label>
                    </h2>
                    <p>
                        <b>Giá:</b>
                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("giatour") %>'></asp:Label>
                    </p>
                    <p>
                        <b>Thời gian:</b>
                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("thoigiantour") %>'></asp:Label>
                    </p>
                    <p><b>Phương tiện:</b><asp:Label ID="Label4" runat="server" Text='<%#Eval("dichvu") %>'></asp:Label></p>
                    <p>
                        <b>Khởi hành:</b>
                        <asp:Label ID="Label5" runat="server" Text='<%#Eval("ngaykhoihanh") %>'></asp:Label>
                    </p>
                    <a href='GUI_ChiTietTour.aspx?matour=<%#Eval("matour") %>' class="info">Xem Thêm</a>
                </div>
                <span class="titlet">
                    <asp:Label ID="Label6" runat="server" Text='<%#Eval("tentour") %>'></asp:Label></span><br>
                <div class="price">
                    <b>
                        <asp:Label ID="Label7" runat="server" Text='<%#Eval("giatour") %>'></asp:Label></b>
                </div>
            </div>
        </ItemTemplate>

    </asp:DataList>
</asp:Content>
