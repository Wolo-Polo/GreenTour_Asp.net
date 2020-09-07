<%@ Page Title="" Language="C#" MasterPageFile="~/FontEnd/Master.Master" AutoEventWireup="true" CodeBehind="GUI_ChiTietSuKien.aspx.cs" Inherits="GUI.GUI_ChiTietSuKien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <section itemscope itemtype="http://schema.org/Article">

                <!-- article -->
                <article id="post-1601" class="post-1601 post type-post status-publish format-standard has-post-thumbnail hentry category-event tag-to-chuc-khai-truong tag-to-chuc-khanh-thanh tag-to-chuc-su-kien">

                    <!-- post title -->
                    <div class="hs-123">

                        <div class="top-post">
                            <h1>
                                <a itemprop="mainEntityOfPage" href='GUI_ChiTietSuKien.aspx?masukien=<%#Eval("maSuKien") %>'><span itemprop="headline" itemprop="name"><%#Eval("tenSuKien") %></span></a>
                            </h1>

                            <!-- /post title -->
                            <span itemprop="author" itemscope itemtype="http://schema.org/Person">Tác giả: <span itemprop="name"></span>
                            </span>
                            <br>
                            <span>Chuyên mục: <span itemprop="articleSection">Sự kiện</span> </span>

                            <span itemprop="publisher" itemscope itemtype="http://schema.org/Organization">Đơn vị: <span itemprop="name">GreenTour</span>
                                <span itemprop="logo" itemscope itemtype="http://schema.org/ImageObject">
                                    <a itemprop="url" href='<%#Eval("linkAnh") %>'></a>
                                </span>
                            </span>
                        </div>
                        <div class="img-schema">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("linkAnh") %>' CssClass="ims"/>
                        </div>


                    </div>
                    <div itemprop="articleBody" class="noi-dung">

                        <h2><%#Eval("tenSuKien") %></h2>
                        <div class="nd_content">
                            <%# Eval("moTaDai") %>
                        </div>
                        <div class="nd_content">
                            <blockquote>
                                <div class="contact_post">
                                    <p>Mọi chi tiết vui lòng liên hệ:</p>
                                    <p>
                                        <strong>CTY DU LỊCH VÀ SỰ KIỆN GREEN TOUR</strong><br />
                                        <strong>Địa chỉ: 102 Trần Lựu, Đà Nẵng, Vietnam</strong><br />
                                        <strong>Điện thoại: 0236 6289114 – 0914.800544</strong><br />
                                        <strong>Email: tochucsukien43@gmail.com</strong>
                                    </p>
                                    <p><strong>Web: www.tochucsukien.danang.vn </strong></p>
                                </div>
                            </blockquote>
                        </div>
                    </div>

                </article>
                <!-- /article -->



            </section>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
