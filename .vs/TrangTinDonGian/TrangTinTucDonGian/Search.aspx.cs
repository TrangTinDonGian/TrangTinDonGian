using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrangTinTucDonGian
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Count();
            }
        }

        void Count()
        {
            string txtSearch = Request["txt"];
            DataTable dt = new DataTable();
            if (txtSearch.Equals(""))
            {
            }
            else
            {
                try
                {
                    string strSelect = "SELECT * FROM tblNews WHERE title like '%" + txtSearch + "%'";
                    dt = (new DataProvider()).excuteQuery(strSelect);
                    lblNumber.Text = dt.Rows.Count.ToString();
                }
                catch (Exception ex)
                {
                    Console.WriteLine("Login error: " + ex.Message);
                }
            }
        }
    }
}