<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/SiteAdmin.Master" AutoEventWireup="true" CodeFile="QLAnhsp.aspx.cs" Inherits="Choco.Admin.QLAnhsp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../bootstrap3/css/bootstrap.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered table-responsive table-hover">
        <thead>
            <th colspan="2">
                QUẢN LÝ ẢNH SẢN PHẨM
            </th>
        </thead>
        <tbody>
           
            <tr>
                <td>
                    TÊN SẢN PHẨM
                </td>
                <td>
                    <asp:DropDownList ID="dropmahang" runat="server"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    HÌNH 
                </td>
                <td>
                    
                     <asp:Label ID="lblImageFile" Text="Image File:" AssociatedControlID="fuphinh" runat="server" />

                      <asp:FileUpload ID="fuphinh" runat="server" />
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
    <asp:GridView ID="dtgvanhsp" runat="server" AutoGenerateColumns="False" OnRowCommand="dtgvanhsp_RowCommand">
        <Columns>
           <asp:BoundField DataField="masp" HeaderText="Mã sản phẩm" />
            <asp:TemplateField HeaderText="Hình ảnh">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" ImageUrl='<%# "~/hinhsanpham/" + Eval("hinh")%>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:ButtonField ButtonType="Image" CommandName="xoa" HeaderText="Xóa" ImageUrl="~/images/Delete.jpg" Text="Xoa" />
        </Columns>

    </asp:GridView>
</asp:Content>
