using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using BUS;
using System.Data;

namespace GUI
{
    public partial class LichTrinh : System.Web.UI.Page
    {
        LichTrinhObject L = new LichTrinhObject();
        BUS_LichTrinh licht = new BUS_LichTrinh();
        string loaitaikhoan;
        public void HienThi()
        {
            GridView1.DataSource = licht.ShowLichTrinh();
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            HienThi();
            loaitaikhoan = Request.QueryString["loaitaikhoan"].ToString().Trim();
        }

        protected void btnNhaplai_Click(object sender, EventArgs e)
        {
            txtMaLichTrinh.Text = "";
            txtTimkiem.Text = "";
            txtTenNoiDung.Text = "";
            txtNoiDung.Text = "";
            txtMaLichTrinh.Focus();
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            if (licht.checkma(txtMaLichTrinh.Text) > 0)
            {
                Response.Write("<script>alert('Thêm thất bại');</script>");

            }
            else
            {
                L.MaLichTrinh = txtMaLichTrinh.Text;
               
                L.MaTour = dlMaTour.Text;
                L.TenNoiDung = txtTenNoiDung.Text;
                L.NoiDung = txtNoiDung.Text;
                licht.InsertLichTrinh(L.MaLichTrinh,  L.MaTour, L.TenNoiDung, L.NoiDung);
                HienThi();
                Response.Write("<script>alert('Thêm thành công');</script>");

            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            if (licht.checkma(txtMaLichTrinh.Text) > 0)
            {
                L.MaLichTrinh = txtMaLichTrinh.Text;
                
                L.MaTour = dlMaTour.Text;
                L.TenNoiDung = txtTenNoiDung.Text;
                L.NoiDung = txtNoiDung.Text;
                licht.UpdateLichTrinh(L.MaLichTrinh,  L.MaTour, L.TenNoiDung, L.NoiDung);
                HienThi();
                Response.Write("<script>alert('Sửa thành công');</script>");


            }
            else
            {
                Response.Write("<script>alert('Sửa thất bại');</script>");
               
            }
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            if (licht.checkma(txtMaLichTrinh.Text) > 0)
            {
                L.MaLichTrinh = txtMaLichTrinh.Text;
                licht.DeleteLichTrinh(L.MaLichTrinh);
                HienThi();
                Response.Write("<script>alert('Xoá thành công');</script>");
            }
            else
            {
                Response.Write("<script>alert('Không tồn tại mã!!');</script>");
            }
        }

        protected void btnTimkiem_Click(object sender, EventArgs e)
        {
            DataTable x = licht.LookLichTrinh(txtTimkiem.Text.Trim());
            if (x.Rows.Count <= 0)
            {
                Response.Write("<script>alert('Không có kết quả');</script>");
            }
            else
            {
                GridView1.Dispose();
                GridView1.DataSource = licht.LookLichTrinh(txtTimkiem.Text);
                GridView1.DataBind();
            }


        }

        protected void btnTrove_Click(object sender, EventArgs e)
        {
            Response.Redirect("GUI_ManHinhChucNang.aspx?loaitaikhoan=" + loaitaikhoan);
        }

        protected void click(object sender, EventArgs e)
        {
            int i = GridView1.SelectedIndex;
            txtMaLichTrinh.Text = HttpUtility.HtmlDecode(GridView1.Rows[i].Cells[0].Text);
            dlMaTour.Text = GridView1.Rows[i].Cells[1].Text;
            txtTenNoiDung.Text = HttpUtility.HtmlDecode(GridView1.Rows[i].Cells[2].Text);
            txtNoiDung.Text = HttpUtility.HtmlDecode(GridView1.Rows[i].Cells[3].Text);
        }

    }
}