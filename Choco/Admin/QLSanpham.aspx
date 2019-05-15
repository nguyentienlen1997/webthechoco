<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/SiteAdmin.Master" AutoEventWireup="true" CodeFile="QLSanpham.aspx.cs" Inherits="Choco.Admin.QLSanpham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../bootstrap3/css/bootstrap.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered table-responsive table-hover">
        <thead>
            <th colspan="2">
                QUẢN LÝ SẢN PHẨM
            </th>
        </thead>
        <tbody>
           <tr>
                <td>
                    MÃ SẢN PHẨM
                </td>
                <td>
                    <asp:TextBox ID="txtMasp" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    TÊN SẢN PHẨM
                </td>
                <td>
                    <asp:TextBox ID="txtTen" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    ĐƠN GIÁ
                </td>
                <td>
                    <asp:TextBox ID="txtGia" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:Button ID="btnAdd" runat="server" Text="Thêm" CssClass="btn-primary" OnClick="btnAdd_Click" />
                </td>
            </tr>
        </tbody>
        <tr>
            <td>
                <asp:Label ID="lblThongbao" BackColor="Red" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
    <asp:GridView ID="dtgvsanpham" runat="server" AutoGenerateColumns="False" OnRowCommand="dtgvsanpham_RowCommand">
        <Columns>
           <asp:BoundField DataField="masp" HeaderText="Mã sản phẩm" />
            <asp:BoundField DataField="tensp" HeaderText="Tên sản phẩm" />
            <asp:BoundField DataField="gia" HeaderText="Giá" />
            <asp:ButtonField ButtonType="Image" CommandName="xoa" HeaderText="Xóa" ImageUrl="~/images/Delete.jpg" Text="Xoa" />
        </Columns>
    </asp:GridView>
</asp:Content>
