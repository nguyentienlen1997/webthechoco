<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Thanhtoan.aspx.cs" Inherits="Choco.Thanhtoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="tbthanhtoan table table-striped">
        <tr>
            <td colspan="2" class="tieude11">THÔNG TIN ĐƠN ĐẶT HÀNG</td>
        </tr>
        <tr>
            <td colspan="2" class="tieude1">THÔNG TIN TÀI KHOẢN</td>
        </tr>
        <tr>
            <td class="tieude2">Họ tên:</td>
            <td><asp:Label ID="lblHoTen" runat="server" CssClass="thongtintaikhoan"></asp:Label> </td>
        </tr>
        <tr>
            <td class="tieude2">Địa chỉ:</td>
            <td> <asp:Label ID="lblDiaChi" runat="server" CssClass="thongtintaikhoan"></asp:Label>   </td>
        </tr>
        <tr>
            <td class="tieude2">Điện thoại:</td>
            <td><asp:Label ID="lblDienThoai" runat="server"  CssClass="thongtintaikhoan"></asp:Label></td>
        </tr>
        <tr>
            <td class="tieude2">Email:</td>
            <td><asp:Label ID="lblEmail" runat="server"  CssClass="thongtintaikhoan"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" class="tieude1">THÔNG TIN GIỎ HÀNG</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="gvGioHang" runat="server" AutoGenerateColumns="False" 
                    BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" CellSpacing="2" CssClass="gvgiohang table">
                    <Columns>
                        <%--<asp:BoundField DataField="masp" HeaderText="Mã sản phẩm" 
                            ItemStyle-CssClass="thongtingiohang">
<ItemStyle CssClass="thongtingiohang"></ItemStyle>
                        </asp:BoundField>--%>
                        <asp:BoundField DataField="tensp" HeaderText="Tên sản phẩm" 
                            ItemStyle-CssClass="thongtingiohang" >
<ItemStyle CssClass="thongtingiohang"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="gia" HeaderText="Đơn giá"  ItemStyle-CssClass="thongtingiohang">
<ItemStyle CssClass="thongtingiohang"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="soluong" HeaderText="Số lượng"  ItemStyle-CssClass="thongtingiohang">
<ItemStyle CssClass="thongtingiohang"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="thanhtien" HeaderText="Thành tiền"  ItemStyle-CssClass="thongtingiohang">
<ItemStyle CssClass="thongtingiohang"></ItemStyle>
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#36F" Font-Bold="True" ForeColor="White" Height="30px" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="tdtongtien" colspan="2">Tổng tiền: <asp:Label ID="lblTongTien" runat="server" Font-Bold="True" ForeColor="Red" CssClass="lbTongtien"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" class="tieude1"> THÔNG TIN GIAO HÀNG</td>
        </tr>
        <tr>
            <td class="tieude2"> Ngày giao:</td>
            <td>
                <asp:Calendar ID="cldNgayGiaoHang" runat="server" BackColor="#FFFFCC" 
                    BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
                    Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" 
                    ShowGridLines="True" Width="220px">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                        ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="tieude2"> Người nhận:</td>
            <td>
                <div class="form-group">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtTenNguoiNhan" ErrorMessage="Người nhận không được rỗng" 
                    ForeColor="Red" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator><br />
                    <asp:TextBox ID="txtTenNguoiNhan" runat="server" CssClass="form-control"></asp:TextBox>
                </div>        
            </td>
        </tr>
        <tr>
            <td class="tieude2"> Địa chỉ:</td>
            <td>
                <div class="form-group">
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtDiaChiNhan" ErrorMessage="Địa chỉ không được rỗng" 
                        ForeColor="Red" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator><br />
                    <asp:TextBox ID="txtDiaChiNhan" runat="server" CssClass="form-control"></asp:TextBox>
               </div>
            </td>
        </tr>
        <tr>
            <td class="tieude2">  Điện thoại:</td>
            <td>
                <div class="form-group">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtDienThoaiNhan" ErrorMessage="Điện thoại không được rỗng" 
                        ForeColor="Red" Font-Italic="True" Font-Size="Small"></asp:RequiredFieldValidator><br />
                    <asp:TextBox ID="txtDienThoaiNhan" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </td>
        </tr>
        <tr>
            <td class="tieude2">Hình thức thanh toán:</td>
            <td>
                <asp:RadioButtonList ID="rdoHinhThucThanhToan" runat="server" ForeColor="Black" >
                    <asp:ListItem Value="1" Selected="True">&nbsp;&nbsp;Thanh toán qua nganluong.vn</asp:ListItem>
                    <asp:ListItem Value="0">&nbsp;&nbsp;Thanh toán ngay khi nhận hàng</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        
       <tr>
            <td colspan="2" class="colnutlenh">
                <asp:Button ID="btnDongY" runat="server" CssClass="btn btn-success"
                     Text="Đồng ý" Width="103px" OnClick="btnDongY_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblThongBao" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>
