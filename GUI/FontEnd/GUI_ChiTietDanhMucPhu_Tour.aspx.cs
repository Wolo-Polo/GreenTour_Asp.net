using BUS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI
{
    public partial class GUI_ChiTietDanhMucPhu : System.Web.UI.Page
    {
        BUS_DanhMuc bus_DanhMuc = new BUS_DanhMuc();
        BUS_Tour bus_Tour = new BUS_Tour();
        protected void Page_Load(object sender, EventArgs e)
        {
            String maDanhMucPhu = Request.QueryString.Get("madanhmucphu");
            DataList1.DataSource = bus_DanhMuc.getChiTietDanhMucPhu(maDanhMucPhu);
            DataList2.DataSource = bus_Tour.getTourTheoDanhMuc(maDanhMucPhu);
            DataBind();
        }
    }
}