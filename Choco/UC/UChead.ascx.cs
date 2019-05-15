using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Choco.UC
{
    public partial class UChead : System.Web.UI.UserControl
    {
        int SL;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenDN"] != null)
            {
                //DataTable dt = new DataTable();
                //dt = (DataTable)Session["Giohang"];
                //try
                //{
                //    foreach (DataRow r in dt.Rows)
                //    {
                //        SL = Convert.ToInt32(r["Soluong"]) + SL;
                //        lblsoluong.Text = SL.ToString();
                //    }
                //}
                //catch (Exception)
                //{

                //    //throw;
                //}



                lttThongbao.Visible = true;
                lttThongbao.Text = @"Xin chào: " + Session["TenDN"].ToString();
                lt2.Visible = false;
                ltDangxuat.Visible = true;
                dh1.Visible = false;
                dh2.Visible = true;
            }
        }
    }
}