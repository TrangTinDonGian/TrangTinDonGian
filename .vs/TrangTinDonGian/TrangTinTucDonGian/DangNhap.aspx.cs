using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrangTinTucDonGian
{
    public partial class DangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            if (txtUsername.Text == "" || txtPassword.Text == "")
            {
                lblThongBao.Text = "Không được để trống Tên đăng nhập/Mật khẩu";
            }
            else
            {
                try
                {
                    string strSelect = "SELECT * FROM tblUser WHERE username='" + txtUsername.Text + "' AND  password= '" + txtPassword.Text + "'";
                    dt = (new DataProvider()).excuteQuery(strSelect);
                    
                    if (dt.Rows.Count > 0)
                    {
                        //login thanh cong
                        Session["login"] = true;
                        Session["username"] = dt.Rows[0]["username"].ToString();
                        Session["user_ID"] = dt.Rows[0]["user_ID"].ToString();

                        
                        //power = 0 chuyen ve trang AdminHome.aspx
                        string sqlSelect = "SELECT power FROM tblUser WHERE username = '"+ Session["username"].ToString() + "' ";                       
                        dt = (new DataProvider()).excuteQuery(sqlSelect);
                        int power = Convert.ToInt32(dt.Rows[0]["power"].ToString());
                        //if        
                        if (power == 0)
                        {
                             Response.Redirect("AdminHome.aspx");
                            //Response.Redirect("index.aspx");
                        }
                        else if (power == 1)  
                        {
                            //power = 1 chuyen ve trang ModHome.aspx
                            //Response.Redirect("ModHome.aspx");
                            Response.Redirect("index.aspx");
                        }
                        else
                        {
                            //power = 2 chuyen ve trang index.aspx
                            Response.Redirect("index.aspx");
                        }
                        
                   
                    }
                    else
                    {
                        //login that bai
                        lblThongBao.Text = "Đăng nhập thất bại. Mời bạn nhập lại";
                        txtUsername.Text = "";
                        txtPassword.Text = "";
                        txtUsername.Focus();
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine("Login error: " + ex.Message);
                }
            }
        }
    }
}