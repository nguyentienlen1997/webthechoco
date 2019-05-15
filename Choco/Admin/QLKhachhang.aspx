<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/SiteAdmin.Master" AutoEventWireup="true" CodeFile="QLKhachhang.aspx.cs" Inherits="Choco.Admin.QLKhachhang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="../bootstrap3/css/bootstrap.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered table-responsive table-hover">
        <thead>
            <th colspan="2">
                QUẢN LÝ KHÁCH HÀNG
            </th>
        </thead>
        <tr>
            <td>
                <asp:Label ID="lblThongbao" BackColor="Red" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
    <asp:GridView ID="gvkhachhang" runat="server" AutoGenerateColumns="False" OnRowCommand="gvkhachhang_RowCommand">
        <Columns>
           <asp:BoundField DataField="tenkh" HeaderText="Họ tên" />
            <asp:BoundField DataField="diachikh" HeaderText="Địa chỉ" />
            <asp:BoundField DataField="sdt" HeaderText="Số điện thoại" />
            <asp:BoundField DataField="email" HeaderText="Email" />
            <asp:BoundField DataField="tendn" HeaderText="Tên đăng nhập" />
            <asp:ButtonField ButtonType="Image" CommandName="xoa" HeaderText="Xóa" ImageUrl="~/images/Delete.jpg" Text="Xoa" />
        </Columns>
    </asp:GridView>
</asp:Content>
