﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Choco.Admin
{
    public partial class SiteAdmin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ADMIN"] == null)
            {
                Response.Redirect("Dangnhap.aspx");
            }
            else
            {
                //lblThongbao.Text = "Xin chào: " + Session["TenQuanTri"].ToString();
                //lblDangxuat.Visible = true;
            }
        }
    }
}