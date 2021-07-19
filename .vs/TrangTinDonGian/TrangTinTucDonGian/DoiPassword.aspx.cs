using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrangTinTucDonGian
{
    public partial class DoiPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUsername.Text = (string)(Session["username"]);

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            String password = (string)(Session["password"]);
            String username = (string)(Session["username"]);

            // string sqlUpdate1 = "INSERT INTO tblUser(email,fullname, address, phone) VALUES ('" + txtEmail.Text + "','" + txtFullName.Text + "', '" + txtAddress.Text + "','" + txtPhone.Text + "' WHERE username = '"+username+"')";
            string sqlUpdate = "UPDATE tblUser SET password ='" + txtPass.Text + "' WHERE username = '" + username + "'";
            string sqlCheckPass = "SELECT password FROM tblUser WHERE  username = '" + username + "'";
            dt = (new DataProvider()).excuteQuery(sqlCheckPass);
            string passw = dt.Rows[0][0].ToString();
            if (txtPassword.Text == "" || txtPass.Text == "" || txtCfPass.Text == "")
            {
                lblThongBao.Text = "Không được để trống Tên đăng nhập/Mật khẩu";
            }
            else
            {
                if (txtPass.Text != txtCfPass.Text)
                {
                    lblThongBao.Text = "Mật khẩu mới không trùng nhau.";
                }
                else if (passw != txtPassword.Text)
                {
                    lblThongBao.Text = "Mật khẩu cũ không đúng.";                    
                }
                else
                {
                    DataProvider dataProvider = new DataProvider();
                    if (dataProvider.excuteNonQuery(sqlUpdate) == true)
                    {
                        lblThongBao.Text = "Lưu Thành Công";
                    }
                    else
                    {
                        //ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Fail!');", true);
                        lblThongBao.Text = "Thất bại";
                    }

                }
            }
            
        }

        protected void btnExit_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx");
        }
    }
}
