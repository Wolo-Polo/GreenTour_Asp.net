using BUS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI
{
    public partial class GUI_TimKiem : System.Web.UI.Page
    {
        BUS_Tour bus_Tour = new BUS_Tour();
        protected void Page_Load(object sender, EventArgs e)
        {
            String keyword=Request.QueryString.Get("keyword");
            if (keyword!=null && !keyword.Equals(""))
            {
                DataList1.DataSource = bus_Tour.findTour(keyword);
            }


        }
    }
}