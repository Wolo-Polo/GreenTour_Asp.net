using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using BUS;
namespace GUI
{
    public partial class GUI_TaiKhoan : System.Web.UI.Page
    {
        TaiKhoanObject tk = new TaiKhoanObject();
        BUS_TaiKhoan taikhoan = new BUS_TaiKhoan();
        string loaitaikhoan;
        protected void Page_Load(object sender, EventArgs e)
        {
            hien();
            loaitaikhoan = Request.QueryString["loaitaikhoan"].ToString().Trim();
        }
        void hien()
        {
            grvTaiKhoan.DataSource = taikhoan.gettable();
            grvTaiKhoan.DataBind();
        }
        void xoatxt()
        {
            txtTenTaiKhoan.Text = "";
            txtMatKhau.Text = "";
            ddlLoai.Text = "";
            txtTenTaiKhoan.Focus();
        }

        bool checktrong()
        {
            if(txtTenTaiKhoan.Text.Equals(""))
            {
                Response.Write("<script>alert('Tên tài khoản không được để trống!');</script>");
                return false;
            }
            else if (txtMatKhau.Text.Equals(""))
            {
                Response.Write("<script>alert('Mật khẩu không được để trống!');</script>");
                return false;
            }
            return true;
        }

        protected void btnTim_Click(object sender, EventArgs e)
        {
            DataTable t = taikhoan.lookup(txtTenTaiKhoan.Text.Trim());
            if(t.Rows.Count<=0)
            {
                Response.Write("<script>alert('Không tìm được kết quả nào!');</script>");
            }
            else
            {
                grvTaiKhoan.Dispose();
                grvTaiKhoan.DataSource = t;
                grvTaiKhoan.DataBind();
            }
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            if(checktrong())
            {
                if(!taikhoan.checktentaikhoan(txtTenTaiKhoan.Text.Trim()))
                {
                    tk.TenTaiKhoan = txtTenTaiKhoan.Text;
                    tk.MatKhau = txtMatKhau.Text;
                    tk.LoaiTaiKhoan = ddlLoai.SelectedValue.Trim();
                    taikhoan.insert(tk);
                    xoatxt();
                    hien();
                    Response.Write("<script>alert('Thêm thành công!');</script>");
                }
                else
                    Response.Write("<script>alert('Tài khoản đã tồn tại!');</script>");
            }

        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            if (checktrong())
            {
                if (taikhoan.checktentaikhoan(txtTenTaiKhoan.Text.Trim()))
                {
                    tk.TenTaiKhoan = txtTenTaiKhoan.Text;
                    tk.MatKhau = txtMatKhau.Text;
                    tk.LoaiTaiKhoan = ddlLoai.SelectedValue.Trim();
                    taikhoan.update(tk);
                    xoatxt();
                    hien();
                    Response.Write("<script>alert('Sửa thành công!');</script>");
                }
                else
                    Response.Write("<script>alert('Tài khoản không tồn tại!');</script>");
            }
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            if (taikhoan.checktentaikhoan(txtTenTaiKhoan.Text.Trim()))
            {
                tk.TenTaiKhoan = txtTenTaiKhoan.Text;
                taikhoan.Delete(tk);
                xoatxt();
                hien();
                Response.Write("<script>alert('Xoá thành công!');</script>");
            }
            else
                Response.Write("<script>alert('Tài khoản không tồn tại!');</script>");
        }

        protected void btnNhapLai_Click(object sender, EventArgs e)
        {
            xoatxt();
        }

        protected void btnTroVe_Click(object sender, EventArgs e)
        {
            Response.Redirect("GUI_ManHinhChucNang.aspx?loaitaikhoan=" + loaitaikhoan);
        }

        protected void grvTaiKhoan_SelectedIndexChanged(object sender, EventArgs e)
        {
            int i = grvTaiKhoan.SelectedIndex;
            txtTenTaiKhoan.Text = grvTaiKhoan.Rows[i].Cells[0].Text;
            txtMatKhau.Text = grvTaiKhoan.Rows[i].Cells[1].Text;
            ddlLoai.SelectedValue = grvTaiKhoan.Rows[i].Cells[2].Text;
        }
    }
}