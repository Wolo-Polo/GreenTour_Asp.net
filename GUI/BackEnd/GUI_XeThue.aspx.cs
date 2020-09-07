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
    public partial class XeThue : System.Web.UI.Page
    {
        XeThueObject L = new XeThueObject();
        BUS_XeThue t = new BUS_XeThue();
        string loaitaikhoan;
        public void HienThi()
        {
            GridView1.DataSource = t.ShowXeThue();
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            HienThi();
            loaitaikhoan = Request.QueryString["loaitaikhoan"].ToString().Trim();
        }
        private string SaveFileUpload()
        {
            string strFilePath;
            if (FileUploadAnh.FileName != "")
            {

                strFilePath = Server.MapPath("~/img/xethue/" + FileUploadAnh.FileName);
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
        protected void btnNhaplai_Click(object sender, EventArgs e)
        {
            HienThi();
            xoatxt();
        }
        void xoatxt()
        {
            txtMaXeThue.Text = "";
            txtTimkiem.Text = "";
            txtTenXeThue.Text = "";
            txtSoCho.Text = "";
            txtDonGia.Text = "";
            txtMoTaDai.Text = "";
            txtMoTaNgan.Text = "";
            txtMaXeThue.Focus();
            lbLinkAnh.Text = "";
        }
        bool checktrong()
        {
            if (txtMaXeThue.Text.Trim().Equals("") || txtTenXeThue.Text.Trim().Equals("") || txtSoCho.Text.Trim().Equals("") || txtDonGia.Text.Trim().Equals("") || txtMoTaDai.Text.Trim().Equals("") || txtMoTaNgan.Text.Trim().Equals(""))
            {
                Response.Write("<script>alert('Vui lòng nhập đủ các trường');</script>");
                return false;
            }
            else if(!t.checkso(txtSoCho.Text.Trim()))
            {
                Response.Write("<script>alert('Số chỗ phải là số');</script>");
                return false;
            }
            else if (int.Parse(txtSoCho.Text.Trim())<=0)
            {
                Response.Write("<script>alert('Số chỗ phải là số dương!');</script>");
                return false;
            }
            else if (!t.checkso(txtDonGia.Text.Trim()))
            {
                Response.Write("<script>alert('Đơn giá phải là số');</script>");
                return false;
            }
            else if (int.Parse(txtDonGia.Text.Trim()) <= 0)
            {
                Response.Write("<script>alert('Đơn giá phải là số dương!');</script>");
                return false;
            }
            else
                return true;
        }
        protected void btnThem_Click(object sender, EventArgs e)
        {
            if(checktrong())
            {
                if (t.checkma(txtMaXeThue.Text) > 0)
                {
                    Response.Write("<script>alert('Thêm thất bại');</script>");

                }
                else
                {
                    L.MaXeThue = txtMaXeThue.Text;
                    L.MaDanhMucPhu = dlMaDanhMucPhu.Text;
                    L.TenXeThue = txtTenXeThue.Text;
                    L.SoCho = int.Parse(txtSoCho.Text);
                    L.DonGia = int.Parse(txtDonGia.Text);
                    L.LinkAnh = SaveFileUpload();
                    L.MoTaNgan = txtMoTaNgan.Text;
                    L.MoTaDai = txtMoTaDai.Text;
                    t.InsertXeThue(L.MaXeThue, L.MaDanhMucPhu, L.TenXeThue, L.SoCho, L.DonGia, L.LinkAnh, L.MoTaNgan, L.MoTaDai);
                    HienThi();
                    xoatxt();
                    Response.Write("<script>alert('Thêm thành công');</script>");
                }
            }    
            
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            if(checktrong())
            {
                if (t.checkma(txtMaXeThue.Text) > 0)
                {

                    L.MaXeThue = txtMaXeThue.Text;
                    L.MaDanhMucPhu = dlMaDanhMucPhu.Text;
                    L.TenXeThue = txtTenXeThue.Text;
                    L.SoCho = int.Parse(txtSoCho.Text);
                    L.DonGia = int.Parse(txtDonGia.Text);
                    L.LinkAnh = SaveFileUpload();
                    L.MoTaNgan = txtMoTaNgan.Text;
                    L.MoTaDai = txtMoTaDai.Text;
                    t.UpdateXeThue(L.MaXeThue, L.MaDanhMucPhu, L.TenXeThue, L.SoCho, L.DonGia, L.LinkAnh, L.MoTaNgan, L.MoTaDai);
                    HienThi();
                    xoatxt();
                    Response.Write("<script>alert('Sửa thành công');</script>");
                }
                else
                {

                    Response.Write("<script>alert('Sửa thất bại');</script>");

                }
            }    
            
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            if (t.checkma(txtMaXeThue.Text) > 0)
            {
                L.MaXeThue = txtMaXeThue.Text;
                t.DeleteXeThue(L.MaXeThue);
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
            DataTable x = t.LookXeThue(txtTimkiem.Text.Trim());
            if (x.Rows.Count <= 0)
            {
                Response.Write("<script>alert('Không có kết quả');</script>");
            }
            else
            {
                GridView1.Dispose();
                GridView1.DataSource = t.LookXeThue(txtTimkiem.Text);
                GridView1.DataBind();
            }
        }

        protected void click(object sender, EventArgs e)
        {
            int i = GridView1.SelectedIndex;
            txtMaXeThue.Text = HttpUtility.HtmlDecode(GridView1.Rows[i].Cells[0].Text.Trim());
            dlMaDanhMucPhu.Text = GridView1.Rows[i].Cells[1].Text;
            txtTenXeThue.Text = HttpUtility.HtmlDecode(GridView1.Rows[i].Cells[2].Text.Trim());
            txtSoCho.Text = GridView1.Rows[i].Cells[3].Text;
            txtDonGia.Text = GridView1.Rows[i].Cells[4].Text;
            txtMoTaNgan.Text = HttpUtility.HtmlDecode(GridView1.Rows[i].Cells[6].Text.Trim());
            txtMoTaDai.Text = HttpUtility.HtmlDecode(GridView1.Rows[i].Cells[7].Text.Trim());
            lbLinkAnh.Text = HttpUtility.HtmlDecode(GridView1.Rows[i].Cells[8].Text.Trim());
        }

        protected void btnTroVe_Click(object sender, EventArgs e)
        {
            Response.Redirect("GUI_ManHinhChucNang.aspx?loaitaikhoan=" + loaitaikhoan);
        }
    }
}