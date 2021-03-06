﻿using BUS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI
{
    public partial class GUI_ChiTietDanhMucPhu_ThueXe : System.Web.UI.Page
    {
        BUS_DanhMuc bus_DanhMuc = new BUS_DanhMuc();
        BUS_XeThue bus_XeThue = new BUS_XeThue();
        protected void Page_Load(object sender, EventArgs e)
        {
            String madanhmucphu = Request.QueryString.Get("madanhmucphu");
            DataList1.DataSource = bus_DanhMuc.getChiTietDanhMucPhu(madanhmucphu);
            DataList2.DataSource = bus_XeThue.getXetThueByDanhMuc(madanhmucphu);
            DataBind();
        }
    }
}