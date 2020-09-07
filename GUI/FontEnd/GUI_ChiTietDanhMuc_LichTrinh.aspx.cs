using BUS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI
{
    public partial class GUI_ChiTietDanhMuc_LichTrinh : System.Web.UI.Page
    {
        BUS_DanhMuc bus_DanhMuc = new BUS_DanhMuc();
        BUS_LichTrinh bus_LichTrinh = new BUS_LichTrinh();
        protected void Page_Load(object sender, EventArgs e)
        {
            //chi tiết danh muc và các sự kiện liên quan
            DataList1.DataSource = bus_DanhMuc.getChiTietDanhMuc("LT");
            GridView1.DataSource = bus_LichTrinh.getTop6LichTrinh("LT");

            DataBind();
        }
    }
}