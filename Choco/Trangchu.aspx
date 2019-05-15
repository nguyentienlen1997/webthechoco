<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Trangchu.aspx.cs" Inherits="Choco.Trangchu" %>

<%@ Register Src="~/UC/UCcss.ascx" TagPrefix="uc1" TagName="UCcss" %>
<%@ Register Src="~/UC/UCjs.ascx" TagPrefix="uc1" TagName="UCjs" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <uc1:UCcss runat="server" ID="UCcss" />
    <uc1:UCjs runat="server" ID="UCjs" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div class="mypc-content-page">
            <div id="main-content" class="main-content woocommerce home-page-template">
                <!--  Slider Home Page -->
                <div class="mypc-home-slider">
                </div>

                <div class="mypc-home-video" style="background-image:url('https://scontent.fsgn3-1.fna.fbcdn.net/v/t1.0-9/52094048_2178038375746488_3995558790719078400_n.jpg?_nc_cat=109&_nc_eui2=AeGKDgdmeG5ume8nTIRJxtpWrnhEnyvUV4bmmjhMwoOG9zWaMsZy6DMD5Us_EroSdrrVWEBsQQRdz10mGHDs3R9BIIcw0q0WjzNruImBnjH43g&_nc_oc=AQmMaz0r4lfakXToCty9veM7kuzky90XK1VrX35o4Cnhb2GbN9QdZIEc41MavcoTvyRHR5GeTyaFe8h3piJm6OIH&_nc_ht=scontent.fsgn3-1.fna&oh=f196084089b68bd2a2c3a733df376943&oe=5D43F38D') ">
                    <div class="fullscreen-bg" style="align-content:center; margin-left:350px;">
                        <video playsinline="" loop="" autoplay="" poster="" muted="" oncanplay="this.muted=true">
                            <source src="uploads/thechoco.mp4" type="video/mp4">
                        </video>
                    </div>
                </div>

                <div class="mypc-home-product">
                    <div id="product_1054153624" class="container">
                        <div class="title-product wow fadeInUp" style="visibility: visible; animation-name: fadeInUp;">
                            <img src="images/bg_title.svg">
                            <h2 class="title">Choco Nama</h2>
                        </div>
                        <div class="product-left tabs tab-content wow fadeInUp" style="visibility: visible; animation-name: fadeInUp;">
                            <div id="tab1" class="product-item-container tab active">
                                <div class="pro-img-left">
                                    <a class="sub-image-gallery active" data-imgurl='https://scontent.fsgn8-1.fna.fbcdn.net/v/t1.0-9/16806866_1809128722637457_4810357229107167494_n.jpg?_nc_cat=102&_nc_eui2=AeGhNahsPT9mH6z2sbk2JrB4CYgnW4SFXnTK6xFIhpxyPhR3A4yhOq8CTnr-XV9UPnN0AyxrINn8nAY3ygzGSC1335y6-254ekvFpjuxHzOasw&_nc_oc=AQl1izU6OUPDQUl1JLpIxhE4ASTNdB0XriDfg_92izbKm2zZ-aLEQaan2Pygl1NWXQBbO_T4gHmoUUmr79Bx_LlV&_nc_ht=scontent.fsgn8-1.fna&oh=ddc930d964c75aacfc34770bec9fe257&oe=5D45530F'>
                                        <img src="images/bitter1.jpg" style="width:150px; height:150px;">
                                    </a>
                                    <a class="sub-image-gallery" data-imgurl="https://scontent.fsgn4-1.fna.fbcdn.net/v/t1.0-9/17200948_1820481858168810_3214172136191126913_n.png?_nc_cat=101&_nc_eui2=AeE9lu9gf_Dy5kXa_H_iaYDi4nuFgUY66q9iryHgfsxWWDfiJDEQS3TA9OZuhXr9fEbXQ12eAhwnlkM3xKuCqHk-zJZWueqdZS15ykIM4WQpoQ&_nc_oc=AQmNm5q_qDOCRWwpJvQHTR8vV6qLbVgRMfslztopKxIRkyDFmXdhQ5adW7ihLYB8ixb1SxXGI4Pu0qmYh7RtYrPt&_nc_ht=scontent.fsgn4-1.fna&oh=47d987c8b698b46e4706ab48dab67cfb&oe=5D3FB1F7">
                                        <img src="images/bitter2.png" style="width:150px; height:150px;">
                                    </a>
                                    <a class="sub-image-gallery" data-imgurl="https://scontent.fsgn3-1.fna.fbcdn.net/v/t1.0-9/15894787_1791900601026936_8268256747921023248_n.jpg?_nc_cat=111&_nc_eui2=AeG5iJDVMf_l0kDi4ILRinmDXAZ3ktCDRfMEmRvyz_MC5FO6zGrQh31fUpXk7922KAz9c9u195DzgbAbCZj3s9TYWhOu58ywM4AjOdDNJuVMRg&_nc_oc=AQlntmkq1KBB72xYp8yshj_HhlqWrt39MIEk0NBoTprpQeJpi86lhZ175J-ESDBXafoqroZNLnzcM2dWHBc0avj4&_nc_ht=scontent.fsgn3-1.fna&oh=cc880a28115e4c2e03335ada1a4627d1&oe=5D43B06A">
                                        <img src="images/bitter3.jpg" style="width:150px; height:150px;">
                                    </a>
                                    <a class="sub-image-gallery" data-imgurl="https://scontent.fsgn3-1.fna.fbcdn.net/v/t1.0-9/17799972_1829405820609747_4562152276052069798_n.jpg?_nc_cat=106&_nc_eui2=AeHWiA6y-v0uMnWuPSfnsuy2jKZwe1faRCCWOM2iuPfsAY53kyXsMUlc5gH7_Hzoq1iTsT1zYZ6zHCzC2UYw6e561ybP1776Gsr54rpWVSY63g&_nc_oc=AQkg20ZY-AW30EyO-6ggEZqyEHr-qP3mZSNuqddW1UOYLStkCsftAWZIgp_rPcwJWL6IM7U3FKxm5U43WOjf8C2u&_nc_ht=scontent.fsgn3-1.fna&oh=8eddf0e70e4de1445137ca82e657b70a&oe=5D4716DD">
                                        <img src="images/bitter4.jpg" style="width:150px; height:150px;">
                                    </a>      
                                </div>
                                <div class="pro-img-right">
                                    <img class="imge_featured" src='images/bitter1.jpg' style="width:600px; height:600px;">
                                </div>
                            </div>
                            <div id="tab2" class="product-item-container tab ">
                                <div class="pro-img-left">
                                    <a class="sub-image-gallery active" data-imgurl="https://scontent.fsgn8-1.fna.fbcdn.net/v/t1.0-9/16729428_1809128742637455_4661564736161218133_n.jpg?_nc_cat=110&_nc_eui2=AeF6bfqAHp2aP2ePy22k_bZlnOoRWk5796579rJ1vDleMng6OQOjDSRyWudUQF3Y3-R_y-hiW-S84BfjpP2xLuoxUGOtdiOuZyd8CYuvEKZqAQ&_nc_oc=AQkq-uL5Sccrb2zqSoFoJLZgVQVnMkxzLiSp1zhpUJqSbeiNt7wK8VfMbAOh-0wXski1aAbbXpD-FlGqByJx_ubj&_nc_ht=scontent.fsgn8-1.fna&oh=bd28967ab5e980664cc5e2bf252b6505&oe=5D2EAD6A">
                                        <img src="images/matcha1.jpg" style="width:150px; height:150px;">
                                    </a>
                                    <a class="sub-image-gallery" data-imgurl="https://scontent.fsgn4-1.fna.fbcdn.net/v/t1.0-9/15492281_1792313097652353_4699405566426408223_n.png?_nc_cat=103&_nc_eui2=AeEDk1r_uNfCfSKswKgga6w_Nce-DXemn08n5C5lcISVg7NuAVbzhx7zN1NTu0E_6_V7J9O1ldb0GGrodojJzmCsCNukC0w3Rudl7OGG8JHd_g&_nc_oc=AQnnpuZtJGSVIIpq6cdub5F_ecwuzouezx55rWsv6SVm_QAJO13u_N_zjhG5UlLA3zkd2WUXAtZ-6pGIz2BIv0Xi&_nc_ht=scontent.fsgn4-1.fna&oh=fcc4f402cf855b0fb62b4ca317925b41&oe=5D7050CE">
                                        <img src="images/matcha2.png" style="width:150px; height:150px;">
                                    </a>
                                    <a class="sub-image-gallery" data-imgurl="https://scontent.fsgn3-1.fna.fbcdn.net/v/t1.0-9/17342672_1820481854835477_5121345496691739393_n.png?_nc_cat=107&_nc_eui2=AeFMziGwjvzLZeiKcLckH7S4tsFiirToH8e5rj7zrXA-bTRkf_C0HhHOqr-zWRhK7WTAd884FezstYNf_hdW4IUiiAUPejXu_d-8W8fT_pfarA&_nc_oc=AQmVqGBxDZtCArUKBk8REbz-Kt1CDbgU7vHI_vf1WwBAqsjZmKgswkXTXWNG3aKBoJBJiAf8CbywPi00K1WAkBl9&_nc_ht=scontent.fsgn3-1.fna&oh=e62145573135e56341465fbeaa5aa5e5&oe=5D3C59BD">
                                        <img src="images/matcha3.png" style="width:150px; height:150px;">
                                    </a>
                                    <a class="sub-image-gallery" data-imgurl="https://scontent.fsgn3-1.fna.fbcdn.net/v/t1.0-9/17098467_1816328408584155_2671017581533684964_n.jpg?_nc_cat=106&_nc_eui2=AeF6_Yayf-6thksCTE-DQ6VeX2EtsEd9ElfVbzXDgnn0DvsHSIoRyStJgzPOeaoPZhCQBoZRYwwTVlb-3Rd_0An_7Vra__1tp0M0G1TG3PrwEA&_nc_oc=AQnvKlnRQHC5IJSZ0gN3y6bkRDZ6J1pGcwResLD1zmYw09Isf-HgtHb1zfIzsg0IYhL-PGHreLepTP7B4ml7_Spg&_nc_ht=scontent.fsgn3-1.fna&oh=1e4452b2a63442882d9217255e202ef9&oe=5D2FB90E">
                                        <img src="images/matcha4.jpg" style="width:150px; height:150px;">
                                    </a>
                                </div>
                                <div class="pro-img-right">
                                    <img class="imge_featured" src="images/matcha1.jpg" style="width:600px; height:600px;">
                                </div>
                            </div>
                            <div id="tab3" class="product-item-container tab ">
                                <div class="pro-img-left">
                                    <a class="sub-image-gallery active" data-imgurl="https://scontent.fsgn8-1.fna.fbcdn.net/v/t1.0-9/16807826_1809128735970789_5042970040592493031_n.jpg?_nc_cat=102&_nc_eui2=AeHPAsFTLNa9jh0N7r9ZdW2BNfSqBGmHfnSVioshY17ukvHCmMq-W3j0KcMwhcK5HHKBcKCQKWMLspg6CLrCYdV1IMwCMv4qArPLeFv7rbxj-A&_nc_oc=AQnrc6a0Ov-V7Z9CGTTQX7jDLxr-GuH1qHgBVZtdPBhZ7qInJhahs9P6PipEnyFMaGjW5w8NYuB5hbhUmSF6hY9Y&_nc_ht=scontent.fsgn8-1.fna&oh=72f3e46145e1359e08a47d5c47162df8&oe=5D39327A">
                                        <img src="images/sweet1.jpg" style="width:150px; height:150px;">
                                    </a>
                                    <a class="sub-image-gallery" data-imgurl="https://scontent.fsgn8-1.fna.fbcdn.net/v/t1.0-9/18740092_1852836538266675_5892982572154982320_n.jpg?_nc_cat=110&_nc_eui2=AeFmihkxjG1A-G4KfFhgzPHfqw1XD6aQJjJhqvr7rvBUdLNe-JjVZKE1TpT2U8kopgoQp-M-JMu4Gpj7Agvh0fn2f9qsM-YyMM5RsM5G-K9BCQ&_nc_oc=AQnWI_BzFxsxNQ41XR0n7fdUuLLHDDmtB6Jd9FyOcUjf--NSzb6VQWeWtdnQq6FqgmVXQ9DaBRSKM2yCUOtdQ96Q&_nc_ht=scontent.fsgn8-1.fna&oh=3529107b4b2ab3655c171a8ca54e30ed&oe=5D2C72C0">
                                        <img src="images/sweet2.jpg" style="width:150px; height:150px;">
                                    </a>
                                    <a class="sub-image-gallery" data-imgurl="https://scontent.fsgn4-1.fna.fbcdn.net/v/t1.0-9/18739736_1852836541600008_2643269496510899005_n.jpg?_nc_cat=101&_nc_eui2=AeE6xDhw9GrdnCfZz-_pjAeq3v-1dIJao-mdDTVDvrxEpjwe4W8EFAqb0lGtaz0obLM6ZhuGL-Gv91cpgX6S77tB--KTFf7c5ITRcFaTtReqCQ&_nc_oc=AQkTD6qAAXyZXkqBa3naYQ50P4MW_yNcYtTWH-bF8DAGAazSgnVo7LhrQZ5nxwlQWHbocj_A2l0B58eCk4ph95UC&_nc_ht=scontent.fsgn4-1.fna&oh=baa280e37a33e90e727e78b9791cf979&oe=5D3C0C25">
                                        <img src="images/sweet3.jpg" style="width:150px; height:150px;">
                                    </a>
                                    <a class="sub-image-gallery" data-imgurl="https://scontent.fsgn8-1.fna.fbcdn.net/v/t1.0-9/18222369_1844620029088326_677991035748263786_n.jpg?_nc_cat=110&_nc_eui2=AeEP7oZ6cKvEq_Ng6lpyuaWqTuUBfgqO6GIoU3_GLM_tX0odmzUvBwYp3itdDS91WbN4He93DBg1RPMU017IW6ezqJYwgRADsXBN-nwfFnyBZg&_nc_oc=AQkcupWbhxUitKzkOA4oMONuaNrOfd9wgl3b32H_FTYSqhP8WaUaCO-O9f5aNyFsIegPWjjgqdkhiihPoHKnZCgq&_nc_ht=scontent.fsgn8-1.fna&oh=c42f7cf9827a9190d8125a15dac2af5e&oe=5D30AA92">
                                        <img src="images/sweet4.jpg" style="width:150px; height:150px;">
                                    </a>
                                </div>
                                <div class="pro-img-right">
                                    <img class="imge_featured" src="images/sweet1.jpg" style="width:600px; height:600px;">
                                </div>
                            </div>
                        </div>
                        <div class="product-right wow fadeInUp" style="visibility: visible; animation-name: fadeInUp;">
                            <h3>Bitter</h3>
                            <div class="product-price">
                                <img src="images/price_valentine.png">
                                <price>109.000<span>VNĐ</span></price>
                            </div>
                            <div class="style-color-product">
                                <img src="images/mausac.jpg">
                                <span>Loại chocolate:</span>
                            </div>
                            <div class="list-color-lipstick tabs">
                                <ul class="tab-links">
                                    <li class="active">
                                        <a href="#tab1" data-price="109.000" data-title="Bitter">
                                            <img class="color-picker" src="images/bitter1.jpg">
                                            <span class="color-name">Bitter</span>
                                        </a>
                                    </li>
                                    <li class="">
                                        <a href="#tab2" data-price="109.000" data-title="Matcha">
                                            <img class="color-picker" src="images/matcha1.jpg">
                                            <span class="color-name">Matcha</span>
                                        </a>
                                    </li>
                                    <li class="">
                                        <a href="#tab3" data-price="109.000" data-title="Sweet">
                                            <img class="color-picker" src="images/sweet1.jpg">
                                            <span class="color-name">Sweet</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="product-order click_scroll_to_order">
                                <img src="images/bg_dathang.svg">
                                <a href="#mypc_home_order_product">Đặt Hàng</a>
                            </div>
                        </div>
                    </div>
                    <script type="text/javascript">

                        jQuery(document).ready(function () {
                            jQuery('#product_1054153624 .tabs .tab-links a').on('click', function (e) {
                                var currentAttrValue = jQuery(this).attr('href');

                                // Show/Hide Tabs
                                jQuery('#product_1054153624 .tabs ' + currentAttrValue).fadeIn(800).siblings().hide();
                                //jQuery('.tabs ' + currentAttrValue).slideDown(400).siblings().slideUp(400);

                                jQuery(this).parent('li').addClass('active').siblings().removeClass('active');

                                //Change Data
                                var title = jQuery(this).data('title'),
                                    price = jQuery(this).data('price') + '<span>VNĐ</span>',
                                    bgprice = jQuery(this).data('bgprice');
                                jQuery('#product_1054153624 .product-right h3').html(title);
                                jQuery('#product_1054153624 .product-right .product-price price').html(price);
                                jQuery('#product_1054153624 .product-right .product-price img').attr('src', bgprice);
                                e.preventDefault();
                            });
                            jQuery('#product_1054153624 .sub-image-gallery').on('click', function (e) {
                                var urlimg = jQuery(this).data('imgurl');
                                jQuery(this).parent().parent().find(".pro-img-right .imge_featured").attr('src', urlimg);
                                jQuery(this).addClass('active').siblings().removeClass('active');
                                e.preventDefault();
                            });
                        });
                    </script>
                </div>
                <div class="mypc-home-gallery-image">
                    <div class="container">
                        <div class="thotay-image-gallery">
                            <div class="image-item wow fadeInUp" style="visibility: hidden; animation-name: none;">
                                <img src="images/bitter5.jpg" alt="#TheChoco" style="width:370px; height:370px;">
                                <div class="hover-item-image">
                                    <h4>#TheChoco</h4>
                                </div>
                            </div>
                            <div class="image-item wow fadeInUp" style="visibility: hidden; animation-name: none;">
                                <img src="images/bitter2.png" alt="#TheChoco" style="width:370px; height:370px;">
                                <div class="hover-item-image">
                                    <h4>#TheChoco</h4>
                                </div>
                            </div>
                            <div class="image-item wow fadeInUp" style="visibility: hidden; animation-name: none;">
                                <img src="images/bitter3.jpg" alt="#TheChoco" style="width:370px; height:370px;">
                                <div class="hover-item-image">
                                    <h4>#TheChoco</h4>
                                </div>
                            </div>
                            <div class="image-item wow fadeInUp" style="visibility: hidden; animation-name: none;">
                                <img src="images/matcha3.png" alt="#TheChoco" style="width:370px; height:370px;">
                                <div class="hover-item-image">
                                    <h4>#TheChoco</h4>
                                </div>
                            </div>
                            <div class="image-item wow fadeInUp" style="visibility: hidden; animation-name: none;">
                                <img src="images/logo.png" alt="The Choco" style="width:370px; height:370px;">
                            </div>
                            <div class="image-item wow fadeInUp" style="visibility: hidden; animation-name: none;">
                                <img src="images/matcha2.png" alt="#TheChoco" style="width:370px; height:370px;">
                                <div class="hover-item-image">
                                    <h4>#Thechoco</h4>
                                </div>
                            </div>
                            <div class="image-item wow fadeInUp" style="visibility: hidden; animation-name: none;">
                                <img src="images/sweet2.jpg" alt="#TheChoco" style="width:370px; height:370px;">
                                <div class="hover-item-image">
                                    <h4>#TheChoco</h4>
                                </div>
                            </div>
                            <div class="image-item wow fadeInUp" style="visibility: hidden; animation-name: none;">
                                <img src="images/sweet3.jpg" alt="#TheChoco" style="width:370px; height:370px;">
                                <div class="hover-item-image">
                                    <h4>#TheChoco</h4>
                                </div>
                            </div>
                            <div class="image-item wow fadeInUp" style="visibility: hidden; animation-name: none;">
                                <img src="images/sweet5.jpg" alt="#TheChoco" style="width:370px; height:370px;">
                                <div class="hover-item-image">
                                    <h4>#TheChoco</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="mypc-home-order-product" id="mypc_home_order_product">
                    <div class="order-product-container" style="background-image: url('https://scontent.fsgn3-1.fna.fbcdn.net/v/t1.0-9/52094048_2178038375746488_3995558790719078400_n.jpg?_nc_cat=109&_nc_eui2=AeGKDgdmeG5ume8nTIRJxtpWrnhEnyvUV4bmmjhMwoOG9zWaMsZy6DMD5Us_EroSdrrVWEBsQQRdz10mGHDs3R9BIIcw0q0WjzNruImBnjH43g&_nc_oc=AQmMaz0r4lfakXToCty9veM7kuzky90XK1VrX35o4Cnhb2GbN9QdZIEc41MavcoTvyRHR5GeTyaFe8h3piJm6OIH&_nc_ht=scontent.fsgn3-1.fna&oh=f196084089b68bd2a2c3a733df376943&oe=5D43F38D');">
                        <div class="container">
                            <form id="completed_the_order" action="" method="POST">
                                <input type="hidden" name="check_order_from_customer" value="new-order">
                                <div class="info-order-content wow fadeInUp" style="visibility: hidden; animation-name: none;">
                                    <div class="info-user">
                                        <div class="sub-title">
                                            <img src="images/bg_sub_title.svg">
                                            <h5>Đặt Hàng</h5>
                                        </div>
                                        <input type="text" class="cus-name" name="cus-name" placeholder="Họ tên">
                                        <input type="text" class="cus-telephone" name="cus-telephone" placeholder="Số điện thoại">
                                        <input type="text" class="cus-address" name="cus-address" placeholder="Địa chỉ nhận hàng">
                                        <input type="text" class="cus-note" name="cus-note" placeholder="Ghi chú">
                                        <div class="info-product-add">
                                            <div class="pro-img"></div>
                                            <div class="pro-select">
                                                <select class="product-select-event">
                                                    <option value="-1">Chọn sản phẩm</option>
                                                    <optgroup label="Bitter Nama">
                                                        <option value="BN01" data-price="69000" data-name="Bitter Nama - 10 viên - BN01">Bitter Nama - 10 viên - BN01</option>
                                                        <option value="BN02" data-price="109000" data-name="Bitter Nama - 16 viên - BN02">Bitter Nama - 16 viên - BN02</option>
                                                    </optgroup>
                                                    <optgroup label="Matcha Nama">
                                                        <option value="MC01" data-price="69000" data-name="Matcha Nama - 10 viên - BN01">Matcha Nama - 10 viên - MC01</option>
                                                        <option value="MC02" data-price="109000" data-name="Matcha Nama - 16 viên - BN02">Matcha Nama - 16 viên - MC02</option>
                                                    </optgroup>
                                                    <optgroup label="Sweet Nama">
                                                        <option value="SW01" data-price="69000" data-name="Sweet Nama - 10 viên - BN01">Sweet Nama - 10 viên - SW01</option>
                                                        <option value="SW02" data-price="109000" data-name="Sweet Nama - 16 viên - BN02">Sweet Nama - 16 viên - SW02</option>
                                                    </optgroup>

                                                </select>
                                                <input type="number" class="product-number" name="product-number" placeholder="Số lượng">
                                            </div>
                                            <div class="pro-add">
                                                <img src="images/bg_them.svg">
                                                <a class="add-product-to-cart">Thêm</a>
                                            </div>
                                        </div>
                                        <p class="cart_error"></p>
                                        <p>
                                        </p>
                                        <div class="data-order-product" style="display: none;">
                                            <!-- Data Order -->
                                        </div>
                                    </div>
                                    <div class="info-order">
                                        <div class="sub-title">
                                            <img src="images/bg_sub_title.svg">
                                            <h5>Đơn Hàng</h5>
                                        </div>
                                        <ul class="list-product-order"></ul>
                                        <span class="total-order-price">Tổng Đơn:
                                            <price>0</price>
                                            VNĐ</span>
                                    </div>
                                    <div class="clear-right"></div>
                                    <div class="wd-submit-oder">
                                        <img src="images/bg_hoantatdonhang.svg">
                                        <a class="click_complete_the_order">Hoàn Tất Đơn Hàng</a>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <script type="text/javascript">
                        /* Global variables and functions */
                        var backend_add_cart_product = (function ($, window, undefined) {
                            'use strict';

                            var total_order = 0;
                            var idcart = 0;
                            function add_product_to_cart() {
                                jQuery('.add-product-to-cart').on('click', function (e) {
                                    var productcode = jQuery('.product-select-event option:selected').val(),
                                        proname = jQuery('.product-select-event option:selected').data('name'),
                                        proprice = jQuery('.product-select-event option:selected').data('price'),
                                        number = jQuery('.product-number').val();
                                    if (productcode == -1 || number == '' || number < 1) {
                                        jQuery('.cart_error').html('Xin vui lòng chọn sản phẩm và số lượng.');
                                        return;
                                    }
                                    // Add Product To Cart
                                    console.log(productcode, '-', proname, '-', proprice, '-', number);
                                    var price = number * proprice;
                                    var value_input = productcode + '|' + proname + '|' + number + '|' + proprice;
                                    total_order = total_order + price;
                                    console.log('Tong don:', total_order, '  Gia Tien', price);
                                    idcart = idcart + 1;
                                    var idcartinput = 'productidorder_' + idcart;

                                    var html = '<li class="list"><i class="first">' + proname + '<span>x</span>' + number + '</i><i class="price"><price>' + price + '</price>VNĐ<span class="remove-product-from-cart" data-price="' + price + '" data-idproduct="' + idcartinput + '"> x </span></i></li>'
                                    var inputdata = '<input type="text" class="list_product_order" name="list_product[]" value="' + value_input + '" id="' + idcartinput + '">'
                                    jQuery('ul.list-product-order').append(html);
                                    removecartproduct();
                                    jQuery('.total-order-price price').html(total_order);
                                    jQuery('.data-order-product').append(inputdata);
                                    jQuery('.cart_error').html('');
                                    e.preventDefault();
                                });
                            }
                            function check_on_change_tag_select() {
                                jQuery(".product-select-event").change(function () {
                                    var proimgcolor = jQuery('.product-select-event option:selected').data('imgcolor'),
                                        proname = jQuery('.product-select-event option:selected').data('name');
                                    var image_ = '<img src="' + proimgcolor + '" alt="' + proname + '">';
                                    jQuery('.info-product-add .pro-img').html(image_);
                                    jQuery('.info-product-add').addClass('has-image-product');
                                });
                            }
                            function removecartproduct() {
                                jQuery('.remove-product-from-cart').on('click', function (e) {
                                    var idlinecart = jQuery(this).data('idproduct'),
                                        price = jQuery(this).data('price');
                                    console.log('Tong don:', total_order, '  Gia Tien', price);

                                    if (jQuery('#' + idlinecart + '').length > 0) {
                                        total_order = total_order - price;
                                    }
                                    jQuery('#' + idlinecart + '').remove();
                                    jQuery(this).parent().parent().remove();
                                    jQuery('.total-order-price price').html(total_order);
                                });
                            }

                            function complete_the_order_product() {
                                jQuery('.click_complete_the_order').on('click', function (e) {
                                    var name = jQuery('.cus-name').val(),
                                        telephone = jQuery('.cus-telephone').val(),
                                        address = jQuery('.cus-address').val(),
                                        note = jQuery('.cus-note').val();

                                    if (jQuery('.data-order-product .list_product_order').length < 1) {
                                        jQuery('.cart_error').html('Xin vui lòng chọn sản phẩm.');
                                        return;
                                    }
                                    if (name == '' || telephone == '' || address == '') {
                                        jQuery('.cart_error').html('Xin vui lòng nhập thông tin giao hàng.');
                                        return;
                                    }
                                    jQuery('#completed_the_order').submit();
                                
                                });
                            }
                            return {
                                init: function () {
                                    add_product_to_cart();
                                    check_on_change_tag_select();
                                    complete_the_order_product();
                                }
                            };
                        }(jQuery, window));
                        jQuery(document).ready(function ($) {
                            backend_add_cart_product.init();
                        });
                    </script>
                </div>

            </div>
        </div>
</asp:Content>
