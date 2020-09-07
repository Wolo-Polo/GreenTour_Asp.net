using BUS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI
{
    public partial class GUI_ChiTietDanhMuc_SuKien : System.Web.UI.Page
    {
        BUS_DanhMuc bus_DanhMuc = new BUS_DanhMuc();
        BUS_SuKien bus_SuKien = new BUS_SuKien();
        protected void Page_Load(object sender, EventArgs e)
        {
            //chi tiết danh muc và các sự kiện liên quan
            DataList1.DataSource = bus_DanhMuc.getChiTietDanhMuc("SK");
            DataList2.DataSource = bus_SuKien.getTop6SuKien("SK");
            DataBind();
        }
    }
}