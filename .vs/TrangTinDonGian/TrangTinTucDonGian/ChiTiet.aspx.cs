using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrangTinTucDonGian
{
    public partial class ChiTiet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TangView();
            }
          
        }
        void TangView()
        {      
            try
            {
                int id = Convert.ToInt32(Request["id"]);
                string str = "update tblNews set views = (select views from tblNews where news_ID = "+ id +") +1 where news_ID =" + id;
                (new DataProvider()).excuteNonQuery(str);      
            }
            catch (Exception ex)
            {
                Console.WriteLine("error: " + ex.Message);
            }

        }
    }
}