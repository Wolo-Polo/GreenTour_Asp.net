using BUS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI
{
    public partial class Master : System.Web.UI.MasterPage
    {
        BUS_DanhMuc bus_DanhMuc = new BUS_DanhMuc();

        protected void Page_Load(object sender, EventArgs e)
        {
            soLuotTruyCap.Text = Application["SOLUOTTRUYCAP"].ToString();
            soNguoiOnline.Text = Application["SONGUOIONLINE"].ToString();
            DataList1.DataSource = bus_DanhMuc.getTop5DanhMucPhu("TOURDN");
            DataList2.DataSource= bus_DanhMuc.getTop5DanhMucPhu("TOURMB");
            DataList3.DataSource = bus_DanhMuc.getTop5DanhMucPhu("TOURMT");
            DataList4.DataSource = bus_DanhMuc.getTop5DanhMucPhu("TOURMN");
            DataList5.DataSource = bus_DanhMuc.getTop5DanhMucPhu("TOURNN");
            DataList6.DataSource = bus_DanhMuc.getTop5DanhMucPhu("XT");
            DataList7.DataSource = bus_DanhMuc.getTop5DanhMucPhu("SK");
            DataList8.DataSource = bus_DanhMuc.getTop5DanhMucPhu("LT");
            DataBind();
        }

        protected void ButtonTimKiem_Click(object sender, EventArgs e)
        {
            String keyword=TextBoxTimKiem.Text;
            Response.Redirect("GUI_TimKiem.aspx?keyword=" + keyword);
        }
    }
}