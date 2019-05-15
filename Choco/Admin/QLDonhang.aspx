<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/SiteAdmin.Master" AutoEventWireup="true" CodeFile="QLDonhang.aspx.cs" Inherits="Choco.Admin.QLDonhang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../bootstrap3/css/bootstrap.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered table-responsive table-hover">
        <thead>
            <th colspan="2">
                QUẢN LÝ ĐƠN HÀNG
            </th>
        </thead>
        <tr>
            <td>
                <asp:Label ID="lblThongbao" BackColor="Red" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
    <asp:GridView ID="gvdonhang" runat="server" AutoGenerateColumns="False" OnRowCommand="gvdonhang_RowCommand">
        <Columns>
           <asp:BoundField DataField="madh" HeaderText="Mã đơn hàng" />
            <asp:BoundField DataField="ngaydh" HeaderText="Ngày đặt hàng" />
            <asp:BoundField DataField="trigia" HeaderText="Trị giá" />
            <asp:BoundField DataField="tennguoinhan" HeaderText="Tên người nhận" />
            <asp:BoundField DataField="diachinhan" HeaderText="Địa chỉ nhận" />
            <asp:BoundField DataField="dienthoainhan" HeaderText="Điện thoại nhận" />
            <asp:ButtonField ButtonType="Image" CommandName="xoa" HeaderText="Xóa" ImageUrl="~/images/Delete.jpg" Text="Xoa" />
        </Columns>
    </asp:GridView>
</asp:Content>
