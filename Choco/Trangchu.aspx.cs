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
    public partial class Trangchu : System.Web.UI.Page
    {
        XLDL xl = new XLDL();
        protected void Page_Load(object sender, EventArgs e)
        {
            //hiensp1.DataSource = xl.GetData("SELECT TOP 4 anhsanpham.masp, anhsanpham.hinh FROM anhsanpham WHERE anhsanpham.ngaythem < GETDATE() and anhsanpham.masp = 'BN01' ORDER BY anhsanpham.ngaythem DESC");
            //hiensp1.DataBind();
        }
    }
}