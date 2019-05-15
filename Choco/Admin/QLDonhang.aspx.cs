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
    public partial class QLDonhang : System.Web.UI.Page
    {
        XLDL xl = new XLDL();
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadG();
        }

        private void LoadG()
        {
            DataTable dt = xl.GetData("select * from donhang order by madh desc");
            if (dt.Rows.Count > 0)
            {
                gvdonhang.DataSource = dt;
                gvdonhang.DataBind();
            }
        }

        protected void gvdonhang_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "xoa")
            {
                try
                {
                    int chiso = int.Parse(e.CommandArgument.ToString());
                    int madh = int.Parse(gvdonhang.Rows[chiso].Cells[0].Text);
                    string s = "DELETE from donhang where madh=" + madh;
                    xl.GetData(s);
                    Response.Redirect("~/Admin/QLDonhang.aspx");
                }
                catch
                {
                    lblThongbao.Text = "Xóa thất bại!";
                }
            }
        }
    }
}