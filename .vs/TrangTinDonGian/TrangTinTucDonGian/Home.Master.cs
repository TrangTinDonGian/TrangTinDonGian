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
               // showDanhMuc();
            }
        }

        void showDanhMuc() {
            DataTable dt = new DataTable();
            try
            {
                string strSelect = "SELECT title FROM tblCategory";
                dt = new DataProvider().excuteQuery(strSelect);
                rpDanhMuc.DataSource = dt;
                rpDanhMuc.DataBind();
            }
            catch (Exception ex)
            {
                Console.WriteLine("load grid error: " + ex.Message);
            }

        }
    }
}