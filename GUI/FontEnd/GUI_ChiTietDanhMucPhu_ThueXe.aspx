<%@ Page Title="" Language="C#" MasterPageFile="~/FontEnd/Master.Master" AutoEventWireup="true" CodeBehind="GUI_ChiTietDanhMucPhu_ThueXe.aspx.cs" Inherits="GUI.GUI_ChiTietDanhMucPhu_ThueXe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <div class="viewd">
                <h1 class="titls"><%#Eval("tendanhmucphu") %></h1>
                <div class="banggia1">
                    <p><%#Eval("motangan") %></p>
                    <p>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("linkAnh") %>' CssClass="ims"/>
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
    <h1 class="titls">Các top xe thuê trong danh mục này</h1>
    <ul>
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <li class="vtt tintuc ">

                    <h2 class="tieude"><a href='GUI_ChiTietXeThue.aspx?maxethue=<%#Eval("maxethue") %>'><%#Eval("tenxethue") %></a></h2>
                    <a href='GUI_ChiTietXeThue.aspx?maxethue=<%#Eval("maxethue") %>' title='<%#Eval("tenxethue") %>'>
                        <asp:Image ID="Image2" runat="server" ImageUrl='<%#Eval("linkAnh") %>' CssClass="ims"/>
                    <div class="tomta">
                        <p><%#Eval("motangan") %><a class="view-article" href='GUI_ChiTietXeThue.aspx?maxethue=<%#Eval("maxethue") %>'></a></p>
                    </div>
                    <a href='GUI_ChiTietXeThue.aspx?maxethue=<%#Eval("maxethue") %>' class="chitiets">Chi tiết</a>
                </li>
            </ItemTemplate>
        </asp:DataList>
    </ul>
</asp:Content>
