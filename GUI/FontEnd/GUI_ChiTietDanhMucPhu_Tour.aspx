<%@ Page Title="" Language="C#" MasterPageFile="~/FontEnd/Master.Master" AutoEventWireup="true" CodeBehind="GUI_ChiTietDanhMucPhu_Tour.aspx.cs" Inherits="GUI.GUI_ChiTietDanhMucPhu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
        <ItemTemplate>
            <div class="viewd">
                <h1 class="titls"><%#Eval("tendanhmucphu") %></h1>
                <div class="banggia1">
                    <p><%#Eval("motangan") %></p>
                    <p>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("linkAnh") %>'/>
                    </p>
                </div>

                <div class="clear"></div>
                <div class="thongtin-cat">
                    <div class="cat-tieude">Thông tin chi tiết</div>
                    <div class="cat-content">
                        <%#Eval("motadai") %>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:DataList>
    <h1 class="titls">Các tour hot của danh mục này</h1>
    <asp:DataList ID="DataList2" runat="server" RepeatColumns="3">
        <ItemTemplate>
            <h1 class="titls"><%#Eval("tentour") %></h1>
            <div class="view view-first">
                <!-- Các tour hot trong danh mục này -->
                <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("linkAnh") %>'/>
                <div class="mask">
                    <h4><%#Eval("tentour") %></h4>
                    <p><b>Giá:</b> <%#Eval("giatour") %> VNĐ</p>
                    <p><b>Thời gian:</b> <%#Eval("thoigiantour") %></p>
                    <p><b>Phương tiện:</b> <%#Eval("dichVu") %></p>
                    <p><b>Khởi hành:</b> <%#Eval("diemXuatPhat") %>		</p>
                    <a href='GUI_ChiTietTour.aspx?matour=<%#Eval("matour") %>' class="info">Xem Thêm</a>
                </div>
                <span class="titlet"><%#Eval("tentour") %></span></br>
	            <span class="price"><b><%#Eval("giatour") %> VNĐ</b></span>
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
