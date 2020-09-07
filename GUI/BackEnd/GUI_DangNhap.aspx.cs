using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;

namespace GUI
{
    public partial class GUI_DangNhap : System.Web.UI.Page
    {
        BUS_DangNhap dn = new BUS_DangNhap();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            DataTable t = dn.checktaikhoan(username.Text.Trim(), password.Text.Trim());
            if(t.Rows.Count<=0)
            {
                Response.Write("<script>alert('Sai tài khoản hoặc mật khẩu !');</script>");
            }  
            else
            {
                string loaitaikhoan = t.Rows[0][2].ToString().Trim();
                Response.Redirect("GUI_ManHinhChucNang.aspx?loaitaikhoan=" + loaitaikhoan);
            }    
        }
    }
}