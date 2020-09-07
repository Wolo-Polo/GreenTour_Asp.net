using BUS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI
{
    public partial class GUI_ChiTietXeThue : System.Web.UI.Page
    {
        BUS_XeThue bus_XeThue = new BUS_XeThue();
        protected void Page_Load(object sender, EventArgs e)
        {
            String maxethue = Request.QueryString.Get("maxethue");
            DataList1.DataSource = bus_XeThue.getXeThueByMa(maxethue);
            DataBind();
        }
    }
}