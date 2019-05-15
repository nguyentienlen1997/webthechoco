using Choco.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Choco.Admin
{
    public partial class Dangnhap : System.Web.UI.Page
    {
        XLDL xl = new XLDL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtDN.Focus();

            }
        }
        protected void btnDangnhap_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = xl.GetData("select * from admin where tendn='" + txtDN.Text + "' and matkhau='" + txtMK.Text + "'");
                if (dt.Rows.Count > 0)
                {
                    Session["Admin"] = txtDN.Text;
                    Response.Redirect("Default.aspx");
                }
            }
            catch (Exception)
            {
                throw;
            }

        }
    }
}