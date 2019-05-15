using Choco.App_Code;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Choco
{
    public partial class Dathang : System.Web.UI.Page
    {
        XLDL xl = new XLDL();
        static DataTable tbGioHang = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["GioHang"] != null)
                {
                    tbGioHang = Session["GioHang"] as DataTable;
                }
                else
                {
                    tbGioHang.Rows.Clear();
                    tbGioHang.Columns.Clear();
                    tbGioHang.Columns.Add("tensp", typeof(string));
                    tbGioHang.Columns.Add("gia", typeof(double));
                    tbGioHang.Columns.Add("soluong", typeof(int));
                    tbGioHang.Columns.Add("thanhtien", typeof(double), "SoLuong * Gia");
                }
                //load_data();
            }
            LoadMa();
        }

        void LoadMa()
        {
            DataTable tb = xl.GetData("select masp, tensp from sanpham order by masp desc");
            if (tb.Rows.Count > 0)
            {
                dropmahang.DataSource = tb;

                dropmahang.DataValueField = "masp";
                dropmahang.DataTextField = "tensp";
                dropmahang.DataBind();

                DataTable dataTable = xl.GetData("select gia from sanpham where masp = " + dropmahang.DataValueField);
                float gia = float.Parse(dataTable.Rows[0][0].ToString());
                txtgia.Text = gia.ToString();

            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            //DataTable dt = new DataTable();
            string tensp = dropmahang.SelectedItem.Text;
            string gia = txtgia.Text;
            string soluong = txtsoluong.Text;
            string thanhtien = lblThanhtien.Text;
            
            tbGioHang.Rows.Add(tensp, gia, soluong, thanhtien);
            GioHang:
            Session["GioHang"] = tbGioHang;
            //gvdathang.DataSource = dt;
            //gvdathang.DataBind();

            //Response.Write("<script>alert('Đã thêm vào giỏ hàng !...')</script>");

            tbGioHang = (DataTable)Session["GioHang"];
            //string strnumber = tbGioHang.Compute("Sum(TongTien)", "").ToString();
            //lbTongTien.Text = strnumber;
            gvdathang.DataSource = tbGioHang;
            gvdathang.DataBind();
        }

        protected void dropmahang_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void btnTTien_Click(object sender, EventArgs e)
        {
            double a = Convert.ToDouble(txtgia.Text);
            double b = Convert.ToDouble(txtsoluong.Text);
            double tt = a * b;
            lblThanhtien.Text = tt.ToString();
        }


        protected void btnXoaGH_Click(object sender, EventArgs e)
        {
            Session["GioHang"] = null;
            Response.Redirect("~/Trangchu.aspx");
        }

        protected void btnDathang_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Thanhtoan.aspx");
        }

        protected void gvdathang_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "btXoa")
            {
                int chiso = int.Parse(e.CommandArgument.ToString());
                try
                {
                    DataTable dt = (DataTable)Session["GioHang"];
                    dt.Rows.RemoveAt(chiso);
                    Session["GioHang"] = dt;
                    Response.Redirect("~/Dathang.aspx");
                }
                catch
                {
                    Response.Redirect("~/Dathang.aspx");
                }
            }
        }
    }
}