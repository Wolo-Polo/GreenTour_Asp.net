using BUS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI
{
    public partial class GUI_ChiTietDanhMuc_ThueXe : System.Web.UI.Page
    {
        BUS_DanhMuc bus_DanhMuc = new BUS_DanhMuc();
        BUS_XeThue bus_XeThue = new BUS_XeThue();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataList1.DataSource = bus_DanhMuc.getChiTietDanhMuc("XT");
            DataList2.DataSource = bus_XeThue.getTop6ThueXe("XT");
            DataBind();
        }
    }
}