<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Dangky.aspx.cs" Inherits="Choco.Dangky" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="frm-login">
            <h2 style="margin-top: 10px">ĐĂNG KÝ THÀNH VIÊN</h2>
            <hr />
            <div class="form-group">
                <asp:Label ID="lblThongBao" runat="server" Font-Italic="True" 
                    ForeColor="Blue"></asp:Label>
            </div>
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Họ và tên: "></asp:Label>
                <asp:TextBox ID="txtHoTen" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <%--<div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Giới tính:"></asp:Label>
                <asp:RadioButtonList ID="rblGioiTinh" runat="server" CssClass="gt"
                    RepeatDirection="Horizontal" RepeatLayout="Flow">
                    <asp:ListItem Selected="True" Value="1">Nam</asp:ListItem>
                    <asp:ListItem Value="0">Nữ</asp:ListItem>
                </asp:RadioButtonList>
            </div>--%>
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Địa chỉ:"></asp:Label>
                <asp:TextBox ID="txtDiaChi" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label4" runat="server" Text="Điện thoại:"></asp:Label>
                <asp:TextBox ID="txtDienThoai" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label5" runat="server" Text="Email:"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <%--<div class="form-group">
                <asp:Label ID="Label12" runat="server" Text="Ngày sinh:"></asp:Label>
                <asp:DropDownList ID="dplNgay" runat="server" Height="16px" Width="48px">
                </asp:DropDownList>
                tháng
            <asp:DropDownList ID="dplThang" runat="server" Height="16px" Width="44px">
            </asp:DropDownList>
                năm 
            <asp:TextBox ID="txtnamsinh" runat="server" Width="80px"></asp:TextBox>
            </div>--%>
            <div class="form-group">
                <asp:Label ID="Label7" runat="server" Text="Tên đăng nhập:"></asp:Label>
                <asp:TextBox ID="txtTenDN" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label8" runat="server" Text="Mật khẩu:"></asp:Label>
                <asp:TextBox ID="txtMatKhau" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnDangKy" runat="server" Text="Đăng Ký" CssClass="btn btn-success" OnClick="btnDangKy_Click" />
            </div>
        </div>
    </div>
</asp:Content>
