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
    public partial class GUI_ChiTietTour : System.Web.UI.Page
    {
        BUS_Tour bus_Tour = new BUS_Tour();
        protected void Page_Load(object sender, EventArgs e)
        {
            String matour=Request.QueryString.Get("matour");
            DataTable dt= bus_Tour.getTourByMaTour(matour);
            DataList1.DataSource = dt;
            DataList2.DataSource = bus_Tour.getLichTrinhOfTour(matour);


            DataBind();
        }
    }
}