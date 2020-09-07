<%@ Page Title="" Language="C#" MasterPageFile="~/FontEnd/Master.Master" AutoEventWireup="true" CodeBehind="GUI_ChiTietDanhMuc_LichTrinh.aspx.cs" Inherits="GUI.GUI_ChiTietDanhMuc_LichTrinh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <!-- Chi tiet danh mục lịch trình-->
    <div class="viewd">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <div class="viewd">
                    <h1 class="titls"><%#Eval("tendanhmuc") %></h1>
                    <div class="banggia1">
                        <p><%#Eval("motangan") %></p>

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
        <h1 class="titls">Thông tin lịch trình liên quan</h1>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="malichtrinh" HeaderText="Mã lịch trình" />
                <asp:BoundField DataField="tennoidung" HeaderText="Tên nội dung" />
                <asp:BoundField DataField="matour" HeaderText="Mã tour" />
                <asp:BoundField DataField="tentour" HeaderText="Tên tour" />
                <asp:BoundField DataField="thoigiantour" HeaderText="Thời gian tour" />
                <asp:BoundField DataField="ngaykhoihanh" HeaderText="Ngày khởi hành" />
                <asp:BoundField DataField="giatour" HeaderText="Giá" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" CssClass="tablepress tablepress-id-1 dataTable no-footer" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" CssClass="tablepress tablepress-id-1 dataTable no-footer" ForeColor="White"/>
            <RowStyle CssClass="tablepress tablepress-id-1 dataTable no-footer" BackColor="#E3EAEB"/>
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#C5BBAF" ForeColor="#333333" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
           
        </asp:GridView>
        
        <div class="clear"></div>
    </div>
</asp:Content>
