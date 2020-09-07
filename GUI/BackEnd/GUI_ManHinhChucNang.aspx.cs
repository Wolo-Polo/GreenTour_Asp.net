using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI
{
    public partial class GUI_ManHinhChucNang : System.Web.UI.Page
    {
        string loaitaikhoan;
        protected void Page_Load(object sender, EventArgs e)
        {
            loaitaikhoan = Request.QueryString["loaitaikhoan"].ToString().Trim();
            if (loaitaikhoan.Equals("Master"))
            {
                btnTaiKhoan.Enabled = true;
            }
            else btnTaiKhoan.Enabled = false;
        }

        protected void btnThoat_Click(object sender, EventArgs e)
        {
            Response.Redirect("GUI_DangNhap.aspx");
        }

        protected void btnTour_Click(object sender, EventArgs e)
        {
            Response.Redirect("GUI_Tour.aspx?loaitaikhoan=" + loaitaikhoan);
        }

        protected void btnXeThue_Click(object sender, EventArgs e)
        {
            Response.Redirect("GUI_XeThue.aspx?loaitaikhoan=" + loaitaikhoan);
        }

        protected void btnDanhMucChinh_Click(object sender, EventArgs e)
        {
            Response.Redirect("GUI_DanhMucChinh.aspx?loaitaikhoan=" + loaitaikhoan);
        }

        protected void btnSuKien_Click(object sender, EventArgs e)
        {
            Response.Redirect("GUI_SuKien.aspx?loaitaikhoan=" + loaitaikhoan);
        }

        protected void btnLichTrinh_Click(object sender, EventArgs e)
        {
            Response.Redirect("GUI_LichTrinh.aspx?loaitaikhoan=" + loaitaikhoan);
        }

        protected void btnDanhMucPhu_Click(object sender, EventArgs e)
        {
            Response.Redirect("GUI_DanhMucPhu.aspx?loaitaikhoan=" + loaitaikhoan);
        }

        protected void btnTaiKhoan_Click(object sender, EventArgs e)
        {
            Response.Redirect("GUI_TaiKhoan.aspx?loaitaikhoan=" + loaitaikhoan);
        }

        protected void btnBooke_Click(object sender, EventArgs e)
        {
            Response.Redirect("GUI_Booked.aspx?loaitaikhoan=" + loaitaikhoan);
        }
    }
}