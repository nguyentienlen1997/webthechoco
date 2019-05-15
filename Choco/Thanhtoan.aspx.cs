using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Choco.App_Code;

namespace Choco
{
    public partial class Thanhtoan : System.Web.UI.Page
    {
        XLDL xl = new XLDL();

        sendEmail se = new sendEmail();
        private int MaKH;
        private object cld_ngaygiaohang;
        private object email;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cldNgayGiaoHang.SelectedDate = DateTime.Today;
            }
            if (Session["TenDN"] == null)
                Response.Redirect("~/Dangnhap.aspx");
            if (Session["Giohang"] == null)
                Response.Redirect("~/Dathang.aspx");
            if (Session["TenDN"] != null)
            {
                DataTable dt = xl.GetData("select makh, tenkh, diachikh, sdt, email from khachhang where tendn='" + Session["TenDN"].ToString() + "'");
                if (dt.Rows.Count > 0)
                {
                    MaKH = int.Parse(dt.Rows[0][0].ToString());
                    lblHoTen.Text = dt.Rows[0][1].ToString();
                    lblDiaChi.Text = dt.Rows[0][2].ToString();
                    lblDienThoai.Text = dt.Rows[0][3].ToString();
                    lblEmail.Text = dt.Rows[0][4].ToString();
                }
            }
            if (Session["Giohang"] != null)
            {
                DataTable dt = new DataTable();
                dt = (DataTable)Session["GioHang"];
                System.Decimal tongThanhTien = 0;
                foreach (DataRow r in dt.Rows)
                {
                    tongThanhTien += Convert.ToDecimal(r["thanhtien"]);
                    lblTongTien.Text = tongThanhTien.ToString();
                }

                gvGioHang.DataSource = dt;
                gvGioHang.DataBind();
            }
        }

        protected void btnDongY_Click(object sender, EventArgs e)
        {
            int HTthanhtoan;
            string Tennguoinhan, Diachi, SDT;
            Tennguoinhan = txtTenNguoiNhan.Text;
            Diachi = txtDiaChiNhan.Text;
            SDT = txtDienThoaiNhan.Text;

            float tongThanhTien = float.Parse(lblTongTien.Text);
            HTthanhtoan = Convert.ToInt32(rdoHinhThucThanhToan.SelectedItem.Value);

            //try
            //{
            SqlConnection con = new SqlConnection(xl.strCon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;

            cmd.CommandText = @"INSERT INTO DONHANG(makh,ngaydh,trigia,ngaygiaohang,tennguoinhan,diachinhan,dienthoainhan,htthanhtoan) Values(" + MaKH + ",@ngaydathang," + tongThanhTien + ",@ngaygiaohang,'" + Tennguoinhan + "','" + Diachi + "','" + SDT + "'," + HTthanhtoan + ")";
            cmd.Parameters.Add("@ngaydathang", SqlDbType.SmallDateTime);
            cmd.Parameters["@ngaydathang"].Value = DateTime.Today;
            cmd.Parameters.Add("@ngaygiaohang", SqlDbType.SmallDateTime);
            cmd.Parameters["@ngaygiaohang"].Value = cldNgayGiaoHang.SelectedDate;

            cmd.ExecuteNonQuery();

            con.Close();

            //Lay SoDH vua nhap sau cung 
            string s = "select max(madh) from donhang where makh=" + MaKH;
            int SoDonHang = int.Parse(xl.GetData(s).Rows[0][0].ToString());
            DataTable dt = new DataTable();
            dt = (DataTable)Session["Giohang"];

            int Masp, soluong;
            float dongia;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                //Tensp = dt.Rows[i]["tensp"].ToString();
                //Masp = int.Parse(dt.Rows[i]["masp"].ToString());
                soluong = int.Parse(dt.Rows[i]["soluong"].ToString());
                dongia = float.Parse(dt.Rows[i]["gia"].ToString());
                //string ma = "Select masp from sanpham where tensp = " + Tensp;
                //Masp = xl.GetData(ma).Rows[0][0].ToString();
                //s = "INSERT INTO ctdonhang(madh,masp,soluong,dongia) VALUES(" + SoDonHang +"BN01" + soluong + "," + dongia + ")";
                //xl.Execute(s);
            }


            if (HTthanhtoan == 0)
            {

                string html =
                                @"<table style=""width:100%;border-collapse: collapse;table-layout: auto;""> 
                                 
                                <tr>" +
                                            "<td style=font-size:18px;font-weight:bold;padding-bottom:5px;color:blue;border-bottom:solid;border-width:1px;border-color:#dee2e3" + "/>" + "http://localhost:62349/Trangchu.aspx </td>" +
                                                   " <td></td>" +
                                           "  </tr>" +
                                           " <tr> " +

                                             "</tr>" +
                                            " <tr> " +
                                              " <td colspan=2 style=font-weight:bold;font-size:16px;padding-top:10px;>Kính chào quý khách " + lblHoTen.Text + "</td>" +
                                             "</tr>" +
                                             "<tr>" +
                                                "<td colspan=2 style=font-size:16px;padding-bottom:10px;>" + " The Choco vừa nhận được đơn hàng #TM_" + SoDonHang + " của quý khách đặt " + " với hình thức <strong>thanh toán sau khi giao hàng</strong>!" +
                                                "</td>" +
                                             "</tr>" +


                                             "<tr style=background-color:#f2f4f6;border-top:solid;border-width:2px;border-color:#646464;>" +

                                                "<td  style=font-size:16px;padding-top:20px;padding-left:10px;padding-bottom:20px;>" + "Đơn hàng sẽ được giao đến: <br>" + "<strong style=color:orange>" + lblHoTen.Text + "</strong>" + "<br> <strong>Địa chỉ:</strong> " + txtDiaChiNhan.Text + "<br> <strong>Phone:</strong> " + txtDienThoaiNhan.Text +
                                                "</td>" +
                                             "</tr>" +
                                             "<tr>" +
                                            "<td colspan=2 style=padding-top:10px;font-size:16px;background-color:#fff8e7;>" + "<strong>Thông tin chi tiết về đơn hàng:</strong>" +
                                                "</td>" +
                                             "</tr>" +
                                            "</table>";

                se.AutoSendMail(lblEmail.Text, " The Choco đã nhận đơn hàng #TM_" + SoDonHang, html);
                Session["Giohang"] = null;
                Response.Redirect("Xacnhandonhang.aspx");//?httt=" + htthanhtoan + "&sdh=" + sdh);
            }
            else
            {
                Session["Giohang"] = null;
            }
        }
    }
}