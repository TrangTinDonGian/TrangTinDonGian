using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrangTinTucDonGian
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUsername.Text = (string)(Session["username"]);
            if (!Page.IsPostBack)
            {
                show();
            }

        }

        public void show()
        {
            DataTable dt = new DataTable();

            string sqlShow = "Select email,fullname, address, phone from tblUser WHERE username = '" + (string)(Session["username"]) + "'";
            dt = (new DataProvider()).excuteQuery(sqlShow);

            txtEmail.Text = dt.Rows[0]["email"].ToString();
            txtFullName.Text = dt.Rows[0]["fullname"].ToString();
            txtAddress.Text = dt.Rows[0]["address"].ToString();
            txtPhone.Text = dt.Rows[0]["phone"].ToString();
        }
        public bool checkPhone(TextBox phone)
        {
            if (phone.Text.Length == 10 && phone.Text.All(Char.IsDigit))
            {
                return true;
            }
            return false;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            String username = (string)(Session["username"]);
            // string sqlUpdate1 = "INSERT INTO tblUser(email,fullname, address, phone) VALUES ('" + txtEmail.Text + "','" + txtFullName.Text + "', '" + txtAddress.Text + "','" + txtPhone.Text + "' WHERE username = '"+username+"')";
            string sqlUpdate = "UPDATE tblUser SET email ='"+ txtEmail.Text + "' ,fullname = '"+ txtFullName.Text + "', address = '"+ txtAddress.Text + "', phone = '"+ txtPhone.Text + "' WHERE username = '" + username + "'";
            
           // string sqlSelect = "SELECT [username],[password],[power],[fullname],[address],[email],[phone] FROM tblUser";
                if (checkPhone(txtPhone) == false)
                {
                    //ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Nhập 10 ký tự là số.');", true);
                    lblThongBao.Text = "Nhập 10 ký tự là số.";
                }
                else
                {
                    DataProvider dataProvider = new DataProvider();
                    if (dataProvider.excuteNonQuery(sqlUpdate) == true)
                    {
                        lblThongBao.Text = "Lưu Thành Công";
                        show();
                    }
                    else
                    {
                        //ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Fail!');", true);
                        lblThongBao.Text = "Thất bại";
                    }
                }
            
        }

        protected void btnDoiPass_Click(object sender, EventArgs e)
        {
            Response.Redirect("DoiPassword.aspx");
        }
    }
}