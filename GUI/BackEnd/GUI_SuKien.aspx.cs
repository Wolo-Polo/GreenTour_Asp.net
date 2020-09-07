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
    public partial class SuKien : System.Web.UI.Page
    {
        SuKienObject L = new SuKienObject();
        BUS_SuKien licht = new BUS_SuKien();
        string loaitaikhoan;
        public void HienThi()
        {
            GridView1.DataSource = licht.ShowSuKien();
            GridView1.DataBind();
            loaitaikhoan = Request.QueryString["loaitaikhoan"].ToString().Trim();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            HienThi();
        }

        protected void btnNhaplai_Click(object sender, EventArgs e)
        {
            HienThi();
            xoatxt();
        }
        void xoatxt()
        {
            txtMaSuKien.Text = "";
            txtTimkiem.Text = "";
            txtTenSuKien.Text = "";
            txtMoTaDai.Text = "";
            txtMoTaNgan.Text = "";
            lbLinkAnh.Text = "";
            txtMaSuKien.Focus();
        }
        bool checktrong()
        {
            if (txtMaSuKien.Text.Equals("") || txtTenSuKien.Text.Equals("") || txtMoTaDai.Text.Equals("") || txtMoTaNgan.Text.Equals(""))
            {
                Response.Write("<script>alert('Vui lòng nhập đủ các trường!');</script>");
                return false;
            }
            else
                return true;
        }
        private string SaveFileUpload()
        {
                
            string strFilePath;
            if (FileUploadAnh.FileName != "")
            {

                strFilePath = Server.MapPath("~/img/sukien/" + FileUploadAnh.FileName);
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
            if (checktrong())
            {
                if (licht.checkma(txtMaSuKien.Text) > 0)
                {
                    Response.Write("<script>alert('Thêm thất bại');</script>");

                }
                else
                {
                    L.MaSuKien = txtMaSuKien.Text;
                    L.MaDanhMucPhu = dlMaDanhMucPhu.Text;
                    if (ckbtour.Checked)
                        L.MaTour = dlMaTour.Text;
                    else
                        L.MaTour = "";
                    L.TenSuKien = txtTenSuKien.Text;
                    L.LinkAnh = SaveFileUpload();
                    L.MoTaNgan = txtMoTaNgan.Text;
                    L.MoTaDai = txtMoTaDai.Text;
                    licht.InsertSuKien(L.MaSuKien, L.MaDanhMucPhu, L.MaTour, L.TenSuKien, L.LinkAnh, L.MoTaNgan, L.MoTaDai);
                    HienThi();
                    xoatxt();
                    Response.Write("<script>alert('Thêm thành công');</script>");

                }
            }
            
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            if (checktrong())
            {
                if (licht.checkma(txtMaSuKien.Text) > 0)
                {
                    L.MaSuKien = txtMaSuKien.Text;
                    L.MaDanhMucPhu = dlMaDanhMucPhu.Text;
                    if (ckbtour.Checked)
                        L.MaTour = dlMaTour.Text;
                    else
                        L.MaTour = "";
                    L.TenSuKien = txtTenSuKien.Text;
                    L.LinkAnh = SaveFileUpload();
                    L.MoTaNgan = txtMoTaNgan.Text;
                    L.MoTaDai = txtMoTaDai.Text;
                    licht.UpdateSuKien(L.MaSuKien, L.MaDanhMucPhu, L.MaTour, L.TenSuKien, L.LinkAnh, L.MoTaNgan, L.MoTaDai);
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

        protected void click(object sender, EventArgs e)
        {
            int i = GridView1.SelectedIndex;
            txtMaSuKien.Text = HttpUtility.HtmlDecode(GridView1.Rows[i].Cells[0].Text.Trim());
            dlMaDanhMucPhu.SelectedValue = GridView1.Rows[i].Cells[1].Text;
            if (ckbtour.Checked)
                dlMaTour.SelectedValue = GridView1.Rows[i].Cells[2].Text;
            txtTenSuKien.Text = HttpUtility.HtmlDecode(GridView1.Rows[i].Cells[3].Text.Trim());            
            txtMoTaNgan.Text = HttpUtility.HtmlDecode(GridView1.Rows[i].Cells[5].Text.Trim());
            txtMoTaDai.Text = HttpUtility.HtmlDecode(GridView1.Rows[i].Cells[6].Text.Trim());
            lbLinkAnh.Text = GridView1.Rows[i].Cells[7].Text.Trim();
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            if (licht.checkma(txtMaSuKien.Text) > 0)
            {
                L.MaSuKien = txtMaSuKien.Text;
                licht.DeleteSuKien(L.MaSuKien);
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
            DataTable x = licht.LookSuKien(txtTimkiem.Text.Trim());
            if (x.Rows.Count <= 0)
            {
                Response.Write("<script>alert('Không có kết quả');</script>");
            }
            else
            {
                GridView1.Dispose();
                GridView1.DataSource = licht.LookSuKien(txtTimkiem.Text);
                GridView1.DataBind();
            }

        }

        protected void btnTroVe_Click(object sender, EventArgs e)
        {
            Response.Redirect("GUI_ManHinhChucNang.aspx?loaitaikhoan=" + loaitaikhoan);
        }

        protected void ckbtour_CheckedChanged(object sender, EventArgs e)
        {
            //if (ckbtour.Checked == false)
            //    dlMaTour.Enabled = false;
            //else if (ckbtour.Checked == true)
            //    dlMaTour.Enabled = true;
        }
    }
}