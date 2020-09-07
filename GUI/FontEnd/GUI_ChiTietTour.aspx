<%@ Page Title="" Language="C#" MasterPageFile="~/FontEnd/Master.Master" AutoEventWireup="true" CodeBehind="GUI_ChiTietTour.aspx.cs" Inherits="GUI.GUI_ChiTietTour" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Chi tiết tour
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <!-- section -->
    <section>
        <!-- article -->

        <article id="post-421" class="post-421 post type-post status-publish format-standard hentry category-tour-du-lich-da-nang category-tour-ghep-hang-ngay">

            <div itemscope="" itemtype="http://schema.org/Product">
                <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                        <h1 class="titls" itemprop="name">
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("tentour") %>'></asp:Label>
                        </h1>
                        <div class="des" itemprop="description">
                            <p>
                                <asp:Label ID="Label2" runat="server" Text='<%#Eval("motangan") %>'></asp:Label>
                            </p>
                        </div>
                        <div class="thongtintour">
                            <div id="slider">
                                <figure>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("linkanh") %>' CssClass="ims"/>
                                    <asp:Image ID="Image2" runat="server" ImageUrl='<%#Eval("linkanh") %>' CssClass="ims"/>
                                    <asp:Image ID="Image3" runat="server" ImageUrl='<%#Eval("linkanh") %>' CssClass="ims"/>
                                </figure>
                            </div>
                            <div class="InfoTour">
                                <div class="box_info">
                                    <div class="price" itemprop="offers" itemscope="" itemtype="http://schema.org/Offer">
                                        <span><span itemprop="price">
                                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("giaTour") %>'></asp:Label></span>VNĐ</span>
                                        <meta itemprop="priceCurrency" content="VND">
                                        <meta itemprop="priceValidUntil" content="16-05-2021" />
                                        <meta itemprop="availability" content="instock" />
                                        <meta itemprop="itemCondition" content="https://schema.org/UsedCondition" />
                                        <link itemprop="url" href="https://greentour.vn/tour-da-nang-1-ngay.html" />
                                    </div>
                                    <p>
                                        <strong class="gia1">Điểm khởi hành:</strong> <b>
                                            <asp:Label ID="Label4" runat="server" Text='<%#Eval("diemXuatPhat") %>'></asp:Label></b>
                                    </p>
                                        <p></p>
                                    <p>
                                        <strong class="thoigian1">Thời gian:</strong> <b>
                                            <asp:Label ID="Label5" runat="server" Text='<%#Eval("thoiGianTour") %>'></asp:Label></b>
                                    </p>
                                    <p>
                                        <strong class="phuongtien1">Phương tiện:</strong> <b>
                                            <asp:Label ID="Label6" runat="server" Text='<%#Eval("dichVu") %>'></asp:Label></b>
                                    </p>
                                    <p>
                                        <strong class="khoihanh1">Ngày khởi hành:</strong> <b>
                                            <asp:Label ID="Label7" runat="server" Text='<%#Eval("ngaykhoihanh") %>'></asp:Label></b>
                                    </p>
                                    <%--<p><strong class="gia1">Lịch trình:</strong> <b>Đèo Hải Vân - Cổ Viện Chàm - Sơn Trà - Ngũ Hành Sơn</b></p>--%>
                                </div>
                            </div>
                            <a href="#" onclick="lightbox_open();" class="dattour"></a>
                            <div id="light">
                                <a href="#" onclick="lightbox_close();">
                                    <img title="Close Window" alt="Close" data-src="https://greentour.vn/wp-content/uploads/2019/11/tải-xuống-e1574737991204.png" class="close btn_close lazyload" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="><noscript><img src="https://greentour.vn/wp-content/uploads/2019/11/tải-xuống-e1574737991204.png" class="close btn_close" title="Close Window" alt="Close"></noscript>
                                </a>
                                <div class="benphai">

                                    <div class="hinhtour">
                                        <img src="https://greentour.vn/wp-content/themes/Greentourvn/scripts/timthumb.php?src=https://greentour.vn/wp-content/uploads/2015/09/Ban-Dao-Son-Tra-Da-Nang.jpg&w=360&h=240&zc=0" alt="Tour ghép Đà Nẵng 1 ngày" />
                                    </div>
                                    <input type="hidden" name="ngaykhoihanh" value='<%#Eval("matour") %>' />
                                    <h2>
                                        <asp:Label ID="Label8" runat="server" Text='<%#Eval("tentour") %>'></asp:Label></h2>
                                    <div class="tourb">
                                        <div class="price">
                                            <span>
                                                <asp:Label ID="Label9" runat="server" Text='<%#Eval("giatour") %>'></asp:Label>
                                                <input type="hidden" name="giatour" value='<%#Eval("giatour") %>' />
                                            </span>
                                        </div>
                                        <p>
                                            <strong>Điểm khởi hành:</strong>
                                            <asp:Label ID="Label10" runat="server" Text='<%#Eval("diemxuatphat") %>'></asp:Label>
                                        </p>
                                            <p></p>
                                        <p>
                                            <strong>Thời gian:</strong>
                                            <asp:Label ID="Label11" runat="server" Text='<%#Eval("thoigiantour") %>'></asp:Label>
                                        </p>
                                        <p>
                                            <strong>Phương tiện:</strong>
                                            <asp:Label ID="Label12" runat="server" Text='<%#Eval("dichVu") %>'></asp:Label>
                                        </p>
                                        <p>
                                            <strong>Ngày khởi hành:</strong>
                                            <asp:Label ID="Label13" runat="server" Text='<%#Eval("ngaykhoihanh") %>'></asp:Label>

                                        </p>
                                        <%--<p><strong>Lịch trình:</strong> Đèo Hải Vân - Cổ Viện Chàm - Sơn Trà - Ngũ Hành Sơn</p>--%>
                                    </div>
                                </div>
                                <div class="bentrai">
                                    <div role="form" class="wpcf7" id="wpcf7-f339-p421-o1" lang="vi" dir="ltr">
                                        <div class="screen-reader-response"></div>
                                        <form method="post" class="wpcf7-form" novalidate="novalidate">
                                            <div style="display: none;">
                                                <input type="hidden" name="_wpcf7" value="339" />
                                                <input type="hidden" name="_wpcf7_version" value="5.1.6" />
                                                <input type="hidden" name="_wpcf7_locale" value="vi" />
                                                <input type="hidden" name="_wpcf7_unit_tag" value="wpcf7-f339-p421-o1" />
                                                <input type="hidden" name="_wpcf7_container_post" value="421" />
                                            </div>
                                            <div class="hide">
                                                <span class="wpcf7-form-control-wrap dynamictext-512">
                                                    <input type="text" name="matour" value='<%#Eval("matour") %>' size="40" class="wpcf7-form-control wpcf7dtx-dynamictext wpcf7-dynamictext" aria-invalid="false" /></span>
                                            </div>
                                            <p>
                                                <b>Thông tin khách hàng:</b><br />
                                                <span class="wpcf7-form-control-wrap radio-590"><span class="wpcf7-form-control wpcf7-radio"><span class="wpcf7-list-item first">
                                                    <input type="radio" name="gioitinh" value="Anh" /><span class="wpcf7-list-item-label">Anh</span></span><span class="wpcf7-list-item last"><input type="radio" name="gioitinh" value="Chị" /><span class="wpcf7-list-item-label">Chị</span></span></span></span>
                                            </p>

                                            <span class="wpcf7-form-control-wrap your-name">
                                                <input type="text" name="hoten" value="" required="required" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="Họ và tên" /></span>

                                            <span class="wpcf7-form-control-wrap your-name">
                                                <input type="date" name="ngaysinh" value="" required="required" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="Ngày sinh" /></span>

                                            <span class="wpcf7-form-control-wrap your-email">
                                                <input type="email" name="email" value="" required="required" size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email" aria-required="true" aria-invalid="false" placeholder="Email" /></span>


                                            <span class="wpcf7-form-control-wrap text-422">
                                                <input type="tel" name="sdt" value="" required="required" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" placeholder="Số điện thoại" /></span>

                                            <span class="wpcf7-form-control-wrap placeholder">
                                                <input type="text" name="diachi" required="required" value="" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" placeholder="Địa chỉ" /></span>

                                            <span class="wpcf7-form-control-wrap text-423">
                                                <input type="number" name="sove" required="required" value="1" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" placeholder="Số Khách" /></span>

                                            <p>
                                                <asp:Button ID="Button1" runat="server" Text="Gửi" class="wpcf7-form-control wpcf7-submit" PostBackUrl="~/FontEnd/GUI_XacNhanTour.aspx" />
                                            </p>
                                            <div class="wpcf7-response-output wpcf7-display-none"></div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div id="fade" onclick="lightbox_close();"></div>
                            <script type="text/javascript">
                                window.document.onkeydown = function (e) {
                                    if (!e) {
                                        e = event;
                                    }
                                    if (e.keyCode == 27) {
                                        lightbox_close();
                                    }
                                }
                                function lightbox_open() {
                                    window.scrollTo(0, 0);
                                    document.getElementById('light').style.display = 'block';
                                    document.getElementById('fade').style.display = 'block';
                                }
                                function lightbox_close() {
                                    document.getElementById('light').style.display = 'none';
                                    document.getElementById('fade').style.display = 'none';
                                }
                            </script>

                            <div class="hoitour">
                                <h3>Đặt Tour </h3>
                                <p>Mr Phụng: 0905.187802</p>
                                <p>Hotline: 0914 800 544</p>
                            </div>
                            <div class="danhgiatour">
                                <h3>Đặt Online </h3>
                                <div class="box-s">
                                    <a class="button-s" href="#popup1">Đặt Ngay</a>
                                </div>
                                <div id="popup1" class="overlay-s">
                                    <div class="popup-s">
                                        <h2>Thanh Toán Online</h2>
                                        <a class="close-s" href="#">&times;</a>
                                        <!-- Phần nội dung popup sẽ được làm tại đây -->
                                        <div class="content-s">
                                            <section class="tabs-s">
                                                <input id="tab-1" type="radio" name="radio-set" class="tab-selector-1" checked="checked" />
                                                <label for="tab-1" class="tab-label-1">MoMo</label>

                                                <input id="tab-2" type="radio" name="radio-set" class="tab-selector-2" />
                                                <label for="tab-2" class="tab-label-2">Ngân Hàng Nội Địa</label>

                                                <input id="tab-3" type="radio" name="radio-set" class="tab-selector-3" />
                                                <label for="tab-3" class="tab-label-3">Chính sách thanh toán</label>


                                                <div class="clear-shadow"></div>

                                                <div class="content-t">
                                                    <div class="content-1t">
                                                        <h4>Thông tin thanh toán</h4>
                                                        <p>Mã QR</p>

                                                    </div>

                                                    <div class="content-2t">
                                                        <p>
                                                            nội dung 2
                                                        </p>
                                                    </div>
                                                    <div class="content-3t">
                                                        <p>Content 3</p>
                                                    </div>
                                                </div>
                                            </section>

                                        </div>

                                        <!-- Hết Phần Nội dung -->
                                    </div>

                                </div>
                            </div>

                        </div>


                        <ul id="tabs">
                            <li><a href="#" name="#tab2">Bao Gồm</a></li>
                            <li><a href="#" name="#tab1">Lịch Trình</a></li>
                        </ul>
                        <div id="lichtrinh">
                            <div id="tab2">
                                <p>
                                     <%#Eval("motadai")%>
                                </p>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
                <div id="lichtrinh" style="border-top-width: 0px;padding-top: 0px;">
                    <div id="tab1">
                        <asp:DataList ID="DataList2" runat="server">
                            <ItemTemplate>
                                <h1 class="titls" itemprop="name">
                                    <%#Eval("tennoidung")%>
                                </h1>
                                <p>
                                    <%#Eval("noidung")%>
                                </p>
                            </ItemTemplate>
                        </asp:DataList>
                    </div>

                </div>
                <script src="https://code.jquery.com/jquery-1.7.2.min.js"></script>

                <script>
                    function resetTabs() {
                        $("#lichtrinh > div").hide(); //Hide all lichtrinh
                        $("#tabs a").attr("id", ""); //Reset id's      
                    }

                    var myUrl = window.location.href; //get URL
                    var myUrlTab = myUrl.substring(myUrl.indexOf("#")); // For localhost/tabs.html#tab2, myUrlTab = #tab2     
                    var myUrlTabName = myUrlTab.substring(0, 4); // For the above example, myUrlTabName = #tab

                    (function () {
                        $("#lichtrinh > div").hide(); // Initially hide all lichtrinh
                        $("#tabs li:first a").attr("id", "current"); // Activate first tab
                        $("#lichtrinh > div:first").fadeIn(); // Show first tab lichtrinh

                        $("#tabs a").on("click", function (e) {
                            e.preventDefault();
                            if ($(this).attr("id") == "current") { //detection for current tab
                                return
                            }
                            else {
                                resetTabs();
                                $(this).attr("id", "current"); // Activate this
                                $($(this).attr('name')).fadeIn(); // Show lichtrinh for current tab
                            }
                        });

                        for (i = 1; i <= $("#tabs li").length; i++) {
                            if (myUrlTab == myUrlTabName + i) {
                                resetTabs();
                                $("a[name='" + myUrlTab + "']").attr("id", "current"); // Activate url tab
                                $(myUrlTab).fadeIn(); // Show url tab lichtrinh        
                            }
                        }
                    })()
                </script>

                <script src="https://greentour.vn/wp-content/themes/Greentourvn/js/jquery-2.1.1.js"></script>
                <script src="https://greentour.vn/wp-content/themes/Greentourvn/js/main.js"></script>

                <br />

            </div>
        </article>


        <!-- /article -->



    </section>
    <!-- /section -->
</asp:Content>
