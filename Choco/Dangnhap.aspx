<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Dangnhap.aspx.cs" Inherits="Choco.Dangnhap" %>

<%@ Register Src="~/UC/UCcss.ascx" TagPrefix="uc1" TagName="UCcss" %>
<%@ Register Src="~/UC/UCjs.ascx" TagPrefix="uc1" TagName="UCjs" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <uc1:UCcss runat="server" ID="UCcss" />
    <uc1:UCjs runat="server" ID="UCjs" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">        
        <div class="frm-login">
            <h2 style="margin-top: 10px">Đăng Nhập</h2>
            <hr />
            <div class="form-group">
                <asp:Label ID="lblThongBao" runat="server"></asp:Label>
            </div>
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Tên đăng nhập: "></asp:Label>
                <asp:TextBox ID="txtDN" runat="server" CssClass="form-control" ></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Mật khẩu:"></asp:Label>
                <asp:TextBox ID="txtMK" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            </div>
            <div class="checkbox">
                <label>
                    <asp:HyperLink ID="HyperLink2" runat="server" Font-Italic="True" CssClass="doiMK"
                    ForeColor="Blue" NavigateUrl="~/Doimatkhau.aspx">Đổi mật khẩu</asp:HyperLink>                    
                </label>
            </div>
            <div class="form-group">
                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-primary"
                    NavigateUrl="Dangky.aspx">Đăng ký mới&nbsp;</asp:HyperLink>
            <asp:Button ID="btnDangNhap" runat="server" Text="Đăng Nhập" CssClass="btn btn-success" OnClick="btnDangNhap_Click"/>
            </div>
            
        </div>
    </div>
</asp:Content>
