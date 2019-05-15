using Choco.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Choco
{
    public partial class Dangnhap : System.Web.UI.Page
    {
        XLDL xl = new XLDL();
        protected void Page_Load(object sender, EventArgs e)
        {
            txtDN.Focus();
        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {

            try
            {
                DataTable dt = xl.GetData("select * from khachhang where tendn='" + txtDN.Text + "' and matkhau='" + txtMK.Text + "'");
                if (dt.Rows.Count > 0)
                {
                    Session["TenDN"] = txtDN.Text;
                    Response.Redirect("Trangchu.aspx");
                    lblThongBao.Text = "Đăng nhập thành công";
                }
                DataTable dt1 = xl.GetData("select * from admin where tendn ='" + txtDN.Text + "' and matkhau ='" + txtMK.Text + "'");
                if (dt1.Rows.Count > 0)
                {

                    Session["TenDN"] = txtDN.Text;
                    Response.Redirect("~/Admin/Default.aspx");
                }
            }
            catch (Exception)
            {
                lblThongBao.Text = "Đăng nhập thất bại!";
                throw;
            }
        }
    }
}