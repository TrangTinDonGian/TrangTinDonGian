using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrangTinTucDonGian
{
    public partial class Home : System.Web.UI.MasterPage
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblUsername.Text = Session["username"].ToString();
            }
        }
            protected void btnSearch_Click(object sender, EventArgs e)
        {
            if (!txtSearch.Text.Equals(""))
            {
                Response.Redirect("Search.aspx?txt=" + txtSearch.Text);
            }
           
        }
    }
}