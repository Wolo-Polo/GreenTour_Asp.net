<%@ Page Title="" Language="C#" MasterPageFile="~/FontEnd/Master.Master" AutoEventWireup="true" CodeBehind="GUI_ChiTietXeThue.aspx.cs" Inherits="GUI.GUI_ChiTietXeThue" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <section itemscope itemtype="http://schema.org/Article">
                <!-- article -->
                <article id="post-2828" class="post-2828 post type-post status-publish format-standard has-post-thumbnail hentry category-thue-xe-du-lich">
                    <!-- post title -->
                    <div class="hs-123">
                        <div class="top-post">
                            <h1>
                                <a itemprop="mainEntityOfPage" href='GUI_ChiTietXeThue.aspx?maxethue=<%#Eval("maxethue") %>' title='<%#Eval("maxethue") %>'><span itemprop="headline" itemprop="name"><%#Eval("maxethue") %></span></a>
                            </h1>
                            <!-- /post title -->
                            <span itemprop="author" itemscope itemtype="http://schema.org/Person">Tác giả: <span itemprop="name">Đặng Phụng					</span>
                            </span>
                            <br>
                            <span>Chuyên mục: <span itemprop="articleSection">Thuê xe du lịch</span> </span>

                            
                            <span itemprop="publisher" itemscope itemtype="http://schema.org/Organization">Đơn vị: <span itemprop="name">GreenTour</span>
                                <span itemprop="logo" itemscope itemtype="http://schema.org/ImageObject">
                                    <a itemprop="url" href="https://greentour.vn/wp-content/uploads/2019/11/logo-green1-1024x740.png"></a>
                                </span>
                            </span>
                        </div>
                        <div class="img-schema">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("linkAnh") %>' CssClass="ims"/>
                        </div>

                    </div>
                    <div itemprop="articleBody" class="noi-dung">
                        <p><%#Eval("motadai") %></p>
                        <p><span style="color: #008000;">Hotline: 0905187802</span></p>
                    </div>
                </article>
                <!-- /article -->
            </section>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
