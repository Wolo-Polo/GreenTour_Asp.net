using BUS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI
{
    public partial class GUI_ChiTietSuKien : System.Web.UI.Page
    {
        BUS_SuKien bus_SuKien = new BUS_SuKien();
        protected void Page_Load(object sender, EventArgs e)
        {
            String maSuKien = Request.QueryString.Get("masukien");
            DataList1.DataSource = bus_SuKien.getSuKienByMa(maSuKien);
        }
    }
}