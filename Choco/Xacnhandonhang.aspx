<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Xacnhandonhang.aspx.cs" Inherits="Choco.Xacnhandonhang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="dangnhap">
        <div class="container">
        <p>XÁC NHẬN ĐƠN ĐẶT HÀNG</p>
        <div class="xacnhan">
        <strong style="font-size:19px;font-weight:bold;color:blue;height:300px;">
            Kính chào quý khách <br />
            The Choco đã nhận được đơn hàng của quý khách
            <br />
            Cám ơn quý khách đã tin tưởng và ủng hộ sản phẩm của The Choco !!!
            <br />
           
        </strong>
        </div>    
            <br />
        <div class="vetrangchu">
        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="hyp" NavigateUrl="~/Trangchu.aspx">Về trang chủ</asp:HyperLink>
            </div>
        </div>
    </div>

</asp:Content>
