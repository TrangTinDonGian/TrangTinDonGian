using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrangTinTucDonGian
{
    public partial class DangKi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangKi_Click(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                string sqlCheckusername = "SELECT username FROM tblUser WHERE username = '" + txtUsername.Text + "'";
                string sql = "INSERT INTO tblUser(username, password,power) VALUES ('" + txtUsername.Text + "','" + txtPassword.Text + "', 2)";
                DataTable dt = new DataTable();
                dt = (new DataProvider()).excuteQuery(sqlCheckusername);

                if (txtUsername.Text != "" && txtPassword.Text != "" && txtCfPassword.Text != "")
                {
                    if (txtPassword.Text == txtCfPassword.Text)
                    {
                        if (dt.Rows.Count > 0)
                        {
                            //ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Username duplicate');", true);
                            lblThongBao.Text = "Tên đăng ký đã tồn tại!";
                        }
                        else
                        {
                            if ((new DataProvider()).excuteNonQuery(sql))
                            {
                                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Create Account Successfully!');location.href='DangNhap.aspx';", true);
                            }
                            else
                            {
                                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Create Acount Fail!');", true);
                            }
                        }
                    }
                    else
                    {
                        lblThongBao.Text = "Mật Khẩu không khớp nhau.";
                    }
                    
                }
                else
                {
                    //ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Create Acount Fail!');location.href='DangNhap.aspx';", true);
                    lblThongBao.Text = "Yêu Cầu Nhập Đủ Thông Tin Đăng Ký!";
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine("Login error: " + ex.Message);
            }
        }
    }
}