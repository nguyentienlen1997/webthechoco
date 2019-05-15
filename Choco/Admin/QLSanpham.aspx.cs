using Choco.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Choco.Admin
{
    public partial class QLSanpham : System.Web.UI.Page
    {
        XLDL xl = new XLDL();
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadG();
        }

        private void LoadG()
        {
            DataTable dt = xl.GetData("select * from sanpham order by masp desc");
            if (dt.Rows.Count > 0)
            {
                dtgvsanpham.DataSource = dt;
                dtgvsanpham.DataBind();
            }
        }
        
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(xl.strCon);
                con.Open();
                SqlCommand sqlcmd = new SqlCommand();
                sqlcmd.CommandType = CommandType.Text;
                sqlcmd.Connection = con;
                sqlcmd.CommandText = @"insert into sanpham(masp, tensp, gia) values (@masp, @tensp, @dongia)";

                sqlcmd.Parameters.Add("@masp", SqlDbType.VarChar, 10);
                sqlcmd.Parameters["@masp"].Value = txtMasp.Text.ToString();

                sqlcmd.Parameters.Add("@tensp", SqlDbType.NVarChar, 50);
                sqlcmd.Parameters["@tensp"].Value = txtTen.Text.ToString();

                sqlcmd.Parameters.Add("@dongia", SqlDbType.Int);
                sqlcmd.Parameters["@dongia"].Value = txtGia.Text.ToString();

                sqlcmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/Admin/QLSanpham.aspx");

            }

            catch (Exception ex)
            {
                lblThongbao.Text = "Them khong thanh cong";
                throw ex;
            }

        }

        protected void dtgvsanpham_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "xoa")
            {
                try
                {
                    int chiso = int.Parse(e.CommandArgument.ToString());
                    int masp = int.Parse(dtgvsanpham.Rows[chiso].Cells[0].Text);
                    string s = "DELETE from sanpham where masp=" + masp;
                    xl.GetData(s);
                    Response.Redirect("~/Admin/QLSanPham.aspx");
                }
                catch
                {
                    lblThongbao.Text = "Xoa thất bại!";
                }
            }
        }
    }
}