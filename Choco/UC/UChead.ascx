<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UChead.ascx.cs" Inherits="Choco.UC.UChead" %>

<asp:Literal ID="lttThongbao" runat="server"> </asp:Literal>
            <div class="header-pc ">
                <div class="mypc-content-header">
                    <div class="mypc-header-hotline">
                        <a href="tel:307 8744349">
                            <img src="images/call-answer.png" />HOTLINE: <span>037 8744349</span>
                        </a>                     
                    </div>
                    <div class="wd-header-logo">
                        <a href="Trangchu.aspx">
                            <img src="images/logo.png" alt="The Choco" style="width:95px;height:95px;">
                        </a>
                    </div>
                    <div class="mypc-header-cartsocial">
                        <div class="mypc-cart-header click_scroll_to_order">
                            <asp:Literal ID="dh1" runat="server">
                                <a href="#mypc_home_order_product">
                                    <img src="images/full-shoping-cart.png" /> Đặt Hàng
                                </a>
                            </asp:Literal>
                            <asp:Literal ID="dh2" runat="server" Visible="false">
                                <a href="../Dathang.aspx">Đặt Hàng</a>
                            </asp:Literal>
                        </div>

                        <div class="mypc-header-social">
                            <asp:Literal ID="lt2" runat="server">           
                                <a href="Dangnhap.aspx" >
                                    <img src="images/user.png" style="width:16px; height:16px;" /> Đăng nhập 
                                </a>
                            </asp:Literal>
                            <asp:Literal ID="ltDangxuat" runat="server" Visible="false">
                                <a href="../Thoat.aspx">Đăng xuất</a>
                            </asp:Literal>  
                        </div>
                    </div> 
                </div>
            </div>

