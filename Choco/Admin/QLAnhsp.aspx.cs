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
    public partial class QLAnhsp : System.Web.UI.Page
    {
        XLDL xl = new XLDL();
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadG();
            LoadMa();
        }
        private void LoadG()
        {
            DataTable dt = xl.GetData("select * from anhsanpham order by masp desc");
            if (dt.Rows.Count > 0)
            {
                dtgvanhsp.DataSource = dt;
                dtgvanhsp.DataBind();
            }
        }
        void LoadMa()
        {
            DataTable tb = xl.GetData("select masp, tensp from sanpham");
            if (tb.Rows.Count > 0)
            {
                dropmahang.DataSource = tb;

                dropmahang.DataValueField = "masp";
                dropmahang.DataTextField = "tensp";
                dropmahang.DataBind();
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
                sqlcmd.CommandText = @"insert into anhsanpham(masp, hinh, ngaythem) values (@masp, @hinh, getdate())";

                sqlcmd.Parameters.Add("@masp", SqlDbType.VarChar, 10);
                sqlcmd.Parameters["@masp"].Value = dropmahang.SelectedValue;

                string path = Server.MapPath("~/hinhsanpham/" + fuphinh.FileName);
                sqlcmd.Parameters.Add("@hinh", SqlDbType.VarChar, 50);
                sqlcmd.Parameters["@hinh"].Value = fuphinh.FileName;
                fuphinh.SaveAs(path);

                sqlcmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/Admin/QLAnhsp.aspx");

            }

            catch (Exception ex)
            {
                lblThongbao.Text = "Them khong thanh cong";
                throw ex;
            }

        }
        protected void dtgvanhsp_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "xoa")
            {
                try
                {
                    int chiso = int.Parse(e.CommandArgument.ToString());
                    int masp = int.Parse(dtgvanhsp.Rows[chiso].Cells[0].Text);
                    string s = "DELETE from anhsanpham where masp=" + masp;
                    xl.GetData(s);
                    Response.Redirect("~/Admin/QLAnhsp.aspx");
                }
                catch
                {
                    lblThongbao.Text = "Xóa thất bại!";
                }
            }
        }
    }
}