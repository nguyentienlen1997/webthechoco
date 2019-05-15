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
    public partial class QLKhachhang : System.Web.UI.Page
    {
        XLDL xl = new XLDL();
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadG();
        }

        private void LoadG()
        {
            DataTable dt = xl.GetData("select * from khachhang order by makh desc");
            if (dt.Rows.Count > 0)
            {
                gvkhachhang.DataSource = dt;
                gvkhachhang.DataBind();
            }
        }

        protected void gvkhachhang_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "xoa")
            {
                try
                {
                    int chiso = int.Parse(e.CommandArgument.ToString());
                    int makh = int.Parse(gvkhachhang.Rows[chiso].Cells[0].Text);
                    string s = "DELETE from khachhang where makh=" + makh;
                    xl.GetData(s);
                    Response.Redirect("~/Admin/QLKhachhang.aspx");
                }
                catch
                {
                    lblThongbao.Text = "Xóa thất bại!";
                }
            }
        }
    }
}