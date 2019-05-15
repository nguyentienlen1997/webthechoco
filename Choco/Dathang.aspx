<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Dathang.aspx.cs" Inherits="Choco.Dathang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="../bootstrap3/css/bootstrap.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="table table-bordered table-responsive table-hover" style="width:50%; height:50%; text-align:center; margin-left:350px;" >
        <thead>
            <th colspan="2" style="text-align:center">
                ĐẶT HÀNG
            </th>
        </thead>
        <tbody>
           
            <tr>
                <td>
                    Tên sản phẩm
                </td>
                <td>
                    <asp:DropDownList ID="dropmahang" runat="server" OnSelectedIndexChanged="dropmahang_SelectedIndexChanged"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Giá
                </td>
                <td>
                    <asp:TextBox ID="txtgia" runat="server" Enabled="false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Số lượng
                </td>
                <td>
                    <asp:TextBox ID="txtsoluong" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Thành tiền
                </td>
                <td>
                    <asp:Label ID="lblThanhtien" runat="server"></asp:Label>
                    <%--<asp:TextBox ID="txtthanhtien" runat="server" Enabled="false"></asp:TextBox>--%>
                </td>
            </tr>
            <tr>
                <td>
                    
                </td>
                <td>
                    <asp:Button ID="btnTTien" runat="server" Text="Thành tiền" CssClass="btn-primary" OnClick="btnTTien_Click"/>

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
    
        <asp:GridView ID="gvdathang" runat="server" AutoGenerateColumns="False" style=" text-align:center; margin-left:400px;" OnRowCommand="gvdathang_RowCommand">
        <Columns>
            <asp:BoundField DataField="tensp" HeaderText="Tên sản phẩm" />
            <asp:BoundField DataField="gia" HeaderText="Giá" />
            <asp:BoundField DataField="soluong" HeaderText="Số lượng" />
            <asp:BoundField DataField="thanhtien" HeaderText="Thành tiền" />
            <asp:ButtonField ButtonType="Image" CommandName="xoa" HeaderText="Xóa" ImageUrl="~/images/Delete.jpg" Text="Xoa" />
        </Columns>
        </asp:GridView>
            <table class="table table-bordered table-responsive table-hover" style="width:50%; height:50%; text-align:center; margin-left:350px;" >
                <tbody>
                    <tr>
                <td>
                    
                </td>
                <td>
                    <asp:Button ID="btnXoaGH" runat="server" Text="Xóa giỏ hàng" CssClass="btn-primary" OnClick="btnXoaGH_Click"/>

                    <asp:Button ID="btnDathang" runat="server" Text="Đặt hàng" CssClass="btn-primary" OnClick="btnDathang_Click" />
                </td>
            </tr>
                </tbody>
            </table>
</asp:Content>
