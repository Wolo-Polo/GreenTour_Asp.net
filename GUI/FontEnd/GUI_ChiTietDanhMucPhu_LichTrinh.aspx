<%@ Page Title="" Language="C#" MasterPageFile="~/FontEnd/Master.Master" AutoEventWireup="true" CodeBehind="GUI_ChiTietDanhMucPhu_LichTrinh.aspx.cs" Inherits="GUI.GUI_ChiTietDanhMucPhu_LichTrinh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <section>

        <h1>Lịch khởi hành</h1>


        <!-- article -->
        <article id="post-1879" class="post-1879 page type-page status-publish has-post-thumbnail hentry">

            <h2>Lịch khởi hành</h2>
            <p>Du lịch dễ hơn bao giờ hết. Green Tour giúp bạn đến gần với thế giới hơn với lịch khởi hành như sau:</p>
            <h3><strong>Hãy liên hệ: 0905187802 </strong></h3>
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
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



            <!-- #tablepress-1 from cache -->
            <p>Hãy nhanh chóng đăng ký để có được giá tour tốt nhất.</p>
            <p>Trân trọng cảm ơn quý khách đã tin tưởng sử dụng dịch vụ của Green Tour.</p>
            <p>&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;&#8212;</p>

            <table id="tablepress-9" class="tablepress tablepress-id-9">
                <tbody class="row-hover">
                    <tr class="row-1 odd">
                        <td class="column-1">THÔNG TIN LIÊN HỆ:
                            <br />
                            102 Trần Lựu - Q. Cẩm Lệ - TP Đà Nẵng<br />
                            ĐT: 0236.3699906 - Hotline: 0905187802<br />
                            Email: Info@greentour.vn<br />
                            Website: www.greentour.vn</td>
                    </tr>
                </tbody>
            </table>

            <br class="clear">
        </article>
        <!-- /article -->



    </section>

</asp:Content>
