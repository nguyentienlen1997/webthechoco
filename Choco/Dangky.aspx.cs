using Choco.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Choco
{
    public partial class Dangky : System.Web.UI.Page
    {
        XLDL xl = new XLDL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblThongBao.Visible = false;
                lblThongBao.Text = "Tên Đăng Nhập Đã Tồn Tại.";
            }
            //for (int i = 1; i <= 12; i++)
            //{
            //    dplThang.Items.Add(i.ToString());
            //}
            //for (int i = 1; i <= 31; i++)
            //{
            //    dplNgay.Items.Add(i.ToString());
            //}
        }

        protected void btnDangKy_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = xl.GetData("select * from khachhang where tendn='" + txtTenDN.Text + "'");
                if (dt.Rows.Count > 0)
                {
                    txtTenDN.Focus();
                    lblThongBao.Visible = true;
                }
                else
                {
                    SqlConnection con = new SqlConnection(xl.strCon);
                    con.Open();
                    SqlCommand sqlcmd = new SqlCommand();
                    sqlcmd.CommandType = CommandType.Text;
                    sqlcmd.Connection = con;
                    sqlcmd.CommandText = "insert into khachhang(tenkh, diachikh, sdt, email, tendn, matkhau) values (@hotenkh, @diachikh, @dienthoaikh, @email, @tendn, @matkhau)";

                    sqlcmd.Parameters.Add("@hotenkh", SqlDbType.NVarChar, 50);
                    sqlcmd.Parameters["@hotenkh"].Value = txtHoTen.Text.ToString();

                    sqlcmd.Parameters.Add("@diachikh", SqlDbType.NVarChar, 200);
                    sqlcmd.Parameters["@diachikh"].Value = txtDiaChi.Text.ToString();

                    sqlcmd.Parameters.Add("@dienthoaikh", SqlDbType.VarChar, 10);
                    sqlcmd.Parameters["@dienthoaikh"].Value = txtDienThoai.Text.ToString();

                    sqlcmd.Parameters.Add("@tendn", SqlDbType.VarChar, 50);
                    sqlcmd.Parameters["@tendn"].Value = txtTenDN.Text.ToString();

                    sqlcmd.Parameters.Add("@matkhau", SqlDbType.VarChar, 1000);
                    sqlcmd.Parameters["@matkhau"].Value = txtMatKhau.Text.ToString();


                    //sqlcmd.Parameters.Add("@ngaysinh", SqlDbType.SmallDateTime);
                    //sqlcmd.Parameters["@ngaysinh"].Value = DateTime.Parse(dplNgay.Text + "/" + dplThang.Text + "/" + txtnamsinh.Text);

                    //sqlcmd.Parameters.Add("@gioitinh", SqlDbType.Int);
                    //sqlcmd.Parameters["@gioitinh"].Value = Convert.ToInt16(rblGioiTinh.SelectedItem.Value);

                    sqlcmd.Parameters.Add("@email", SqlDbType.VarChar, 50);
                    sqlcmd.Parameters["@email"].Value = txtEmail.Text.ToString();

                    sqlcmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alter('Đăng ký thành công!')</script>");
                    Response.Redirect("~/Dangnhap.aspx");

                }
            }
            catch (Exception)
            {
                lblThongBao.Text = "Khách Hàng Đã Tồn Tại. Xin thử lại !!!";
                throw;
            }
        }
    }
}