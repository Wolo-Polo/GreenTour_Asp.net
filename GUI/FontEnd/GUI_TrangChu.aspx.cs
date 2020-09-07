using BUS;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI
{
    public partial class GUI_TrangChu : System.Web.UI.Page
    {
        BUS_Tour bus_Tour= new BUS_Tour();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            DataListHotTour.DataSource = bus_Tour.getHotTour();
            DataListMB.DataSource = bus_Tour.getTop6Tour("TOURMB");
            DataListMT.DataSource = bus_Tour.getTop6Tour("TOURMT");
            DataListMN.DataSource = bus_Tour.getTop6Tour("TOURMN");
            DataListNN.DataSource = bus_Tour.getTop6Tour("TOURNN");
            DataBind();
        }
    }
}