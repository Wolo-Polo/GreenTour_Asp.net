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
    public partial class GUI_DanhMucPhu : System.Web.UI.Page
    {
        DanhMucPhuObject L = new DanhMucPhuObject();
        BUS_DanhMucPhu t = new BUS_DanhMucPhu();
        string loaitaikhoan;
        public void HienThi()
        {
            GridView1.DataSource = t.ShowDanhMucPhu();
            GridView1.DataBind();
            loaitaikhoan = Request.QueryString["loaitaikhoan"].ToString().Trim();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            HienThi();
        }

        protected void btnNhaplai_Click(object sender, EventArgs e)
        {
            xoatxt();
            HienThi();
        }
        void xoatxt()
        {
            txtMaDanhMuc.Text = "";
            txtTenDanhMucPhu.Text = "";
            txtMoTaDai.Text = "";
            txtMoTaNgan.Text = "";
            txtMaDanhMuc.Focus();
            lbLinkAnh.Text = "";
        }
        private string SaveFileUpload()
        {
            string strFilePath;
            if (FileUploadAnh.FileName != "")
            {

                strFilePath = Server.MapPath("~/img/danhmucphu/" + FileUploadAnh.FileName);
                FileUploadAnh.PostedFile.SaveAs(strFilePath);
                lbLinkAnh.Text = FileUploadAnh.FileName;
                return lbLinkAnh.Text.Trim();
            }
            else
            {
                string[] tach = lbLinkAnh.Text.Trim().Split('/');
                lbLinkAnh.Text = tach[3];
                return lbLinkAnh.Text.Trim();
            }
        }


        protected void btnThem_Click(object sender, EventArgs e)
        {
            if (t.checkma(txtMaDanhMuc.Text) > 0)
            {
                Response.Write("<script>alert('Thêm thất bại');</script>");

            }
            else
            {
                L.MaDanhMucPhu = txtMaDanhMuc.Text;
                L.MaDanhMuc = dlMaDanhMuc.Text;
                L.TenDanhMucPhu = txtTenDanhMucPhu.Text;
                L.LinkAnh = SaveFileUpload();
                L.MoTaNgan = txtMoTaNgan.Text;
                L.MoTaDai = txtMoTaDai.Text;
                t.InsertDanhMucPhu(L.MaDanhMucPhu, L.MaDanhMuc, L.TenDanhMucPhu, L.LinkAnh, L.MoTaNgan, L.MoTaDai);
                xoatxt();
                HienThi();
                Response.Write("<script>alert('Thêm thành công');</script>");

            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            if (t.checkma(txtMaDanhMuc.Text.Trim()) > 0)
            {

                L.MaDanhMucPhu = txtMaDanhMuc.Text;
                L.MaDanhMuc = dlMaDanhMuc.Text;
                L.TenDanhMucPhu = txtTenDanhMucPhu.Text;
                L.LinkAnh = SaveFileUpload();
                L.MoTaNgan = txtMoTaNgan.Text;
                L.MoTaDai = txtMoTaDai.Text;
                t.UpdateDanhMucPhu(L.MaDanhMucPhu, L.MaDanhMuc, L.TenDanhMucPhu, L.LinkAnh, L.MoTaNgan, L.MoTaDai);
                xoatxt();
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
            if (t.checkma(txtMaDanhMuc.Text) > 0)
            {
                L.MaDanhMucPhu = txtMaDanhMuc.Text;
                t.DeleteDanhMucPhu(L.MaDanhMucPhu);
                xoatxt();
                HienThi();
                Response.Write("<script>alert('Xoá thành công');</script>");
            }
            else
            {
                Response.Write("<script>alert('Không tồn tại mã!!');</script>");
            }
        }

        protected void btnTimKiem_Click(object sender, EventArgs e)
        {
            DataTable x = t.LookDanhMucPhu(txtTimkiem.Text.Trim());
            if (x.Rows.Count <= 0)
            {
                Response.Write("<script>alert('Không có kết quả');</script>");
            }
            else
            {
                GridView1.Dispose();
                GridView1.DataSource = t.LookDanhMucPhu(txtTimkiem.Text);
                GridView1.DataBind();
            }
        }

        protected void click(object sender, EventArgs e)
        {
            int i = GridView1.SelectedIndex;
            txtMaDanhMuc.Text = HttpUtility.HtmlDecode(GridView1.Rows[i].Cells[0].Text);
            dlMaDanhMuc.Text = HttpUtility.HtmlDecode(GridView1.Rows[i].Cells[1].Text);
            txtTenDanhMucPhu.Text = HttpUtility.HtmlDecode(GridView1.Rows[i].Cells[2].Text);
            txtMoTaNgan.Text = HttpUtility.HtmlDecode(GridView1.Rows[i].Cells[4].Text);
            txtMoTaDai.Text = HttpUtility.HtmlDecode(GridView1.Rows[i].Cells[5].Text);
            lbLinkAnh.Text = HttpUtility.HtmlDecode(GridView1.Rows[i].Cells[6].Text);
        }

        protected void btnTroVe_Click(object sender, EventArgs e)
        {
            Response.Redirect("GUI_ManHinhChucNang.aspx?loaitaikhoan=" + loaitaikhoan);
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}