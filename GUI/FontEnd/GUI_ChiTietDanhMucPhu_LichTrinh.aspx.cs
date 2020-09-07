using BUS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI
{
    public partial class GUI_ChiTietDanhMucPhu_LichTrinh : System.Web.UI.Page
    {
        BUS_LichTrinh bus_LichTrinh = new BUS_LichTrinh();
        protected void Page_Load(object sender, EventArgs e)
        {
            String tendanhmuc = Request.QueryString.Get("tendanhmuc");
            GridView1.DataSource = bus_LichTrinh.getLichTrinhCacTour(tendanhmuc);
        }
    }
}