using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using BUS;

namespace GUI
{
    public partial class GUI_DanhMucChinh : System.Web.UI.Page
    {
        DanhMucChinhObject L = new DanhMucChinhObject();
        BUS_DanhMucChinh t = new BUS_DanhMucChinh();
        string loaitaikhoan;
        public void HienThi()
        {
            GridView1.DataSource = t.ShowDanhMucChinh();
            GridView1.DataBind();
            loaitaikhoan = Request.QueryString["loaitaikhoan"].ToString().Trim();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            HienThi();
        }

        protected void click(object sender, EventArgs e)
        {
            int i = GridView1.SelectedIndex;
            txtMaDanhMuc.Text = GridView1.Rows[i].Cells[0].Text;
            txtTenDanhMuc.Text = HttpUtility.HtmlDecode(GridView1.Rows[i].Cells[1].Text);
            txtMoTaNgan.Text = HttpUtility.HtmlDecode(GridView1.Rows[i].Cells[2].Text);
            txtMoTaDai.Text = HttpUtility.HtmlDecode(GridView1.Rows[i].Cells[3].Text);
        }

        protected void btnNhaplai_Click(object sender, EventArgs e)
        {
            HienThi();
            xoatxt();
        }
        void xoatxt()
        {
            txtMaDanhMuc.Text = "";
            txtTenDanhMuc.Text = "";
            txtMoTaNgan.Text = "";
            txtMoTaDai.Text = "";
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            if (t.checkma(txtMaDanhMuc.Text) > 0)
            {
                Response.Write("<script>alert('Thêm thất bại');</script>");

            }
            else
            {
                L.MaDanhMuc = txtMaDanhMuc.Text;
                L.TenDanhMuc = txtTenDanhMuc.Text;
                L.MoTaNgan = txtMoTaNgan.Text;
                L.MoTaDai = txtMoTaDai.Text;
                t.InsertDanhMucChinh(L.MaDanhMuc, L.TenDanhMuc,L.MoTaNgan, L.MoTaDai);
                HienThi();
                xoatxt();
                Response.Write("<script>alert('Thêm thành công');</script>");

            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {

            if (t.checkma(txtMaDanhMuc.Text) > 0)
            {
                L.MaDanhMuc = txtMaDanhMuc.Text;
                L.TenDanhMuc = txtTenDanhMuc.Text;
                L.MoTaNgan = txtMoTaNgan.Text;
                L.MoTaDai = txtMoTaDai.Text;
                t.UpdateDanhMucChinh(L.MaDanhMuc, L.TenDanhMuc, L.MoTaNgan, L.MoTaDai);
                HienThi();
                xoatxt();
                Response.Write("<script>alert('Sửa thành công');</script>");
            }
            else
            {
                Response.Write("<script>alert('Sửa thất bại');</script>");
               
            }
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            if (t.checkma(txtMaDanhMuc.Text) > 0)
            {
                L.MaDanhMuc = txtMaDanhMuc.Text;
                t.DeleteDanhMucChinh(L.MaDanhMuc);
                HienThi();
                xoatxt();
                Response.Write("<script>alert('Xoá thành công');</script>");
            }
            else
            {
                Response.Write("<script>alert('Không tồn tại mã!!');</script>");
            }
        }

        protected void btnTimKiem_Click(object sender, EventArgs e)
        {
            DataTable x = t.LookDanhMucChinh(txtTimkiem.Text.Trim());
            if (x.Rows.Count <= 0)
            {
                Response.Write("<script>alert('Không có kết quả');</script>");
            }
            else
            {
                GridView1.Dispose();
                GridView1.DataSource = t.LookDanhMucChinh(txtTimkiem.Text);
                GridView1.DataBind();
            }
        }

        protected void btnTroVe_Click(object sender, EventArgs e)
        {
            Response.Redirect("GUI_ManHinhChucNang.aspx?loaitaikhoan=" + loaitaikhoan);
        }
    }
}