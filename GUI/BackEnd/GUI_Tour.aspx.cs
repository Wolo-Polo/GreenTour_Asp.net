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
    public partial class GUI_Tour : System.Web.UI.Page
    {
        string loaitaikhoan;
        TourObject obj = new TourObject();
        BUS_Tour tour = new BUS_Tour();
        protected void Page_Load(object sender, EventArgs e)
        {
            loaitaikhoan = Request.QueryString["loaitaikhoan"].ToString().Trim();
            hienthi();
        }

        protected void btnTroVe_Click(object sender, EventArgs e)
        {
            Response.Redirect("GUI_ManHinhChucNang.aspx?loaitaikhoan=" + loaitaikhoan);
        }
        void hienthi()
        {
            gvTour.DataSource = tour.getTable();
            gvTour.DataBind();
        }
        void xoatxt()
        {
            txtTour.Focus();
            txtTour.Text = "";
            dlMaDanhMucPhu.SelectedIndex = 0;
            txtTenTour.Text = "";
            txtDiemXuatPhat.Text = "";
            txtDiemDenCuoi.Text = "";
            txtDichVu.Text = "";
            txtThoiGianTour.Text = "";
            txtNgayKhoiHanh.Text = "";
            lbLinkAnh.Text = "";
            txtMoTaNgan.Text = "";
            txtMoTaDai.Text = "";
            txtGiaTour.Text = "0";
        }

            
        bool checktrong()
        {
            if (txtTour.Text.Equals("")|| txtTenTour.Text.Equals("") || txtDiemXuatPhat.Text.Equals("") || txtDiemDenCuoi.Text.Equals("") || txtDichVu.Text.Equals("") || txtThoiGianTour.Text.Equals("") || txtNgayKhoiHanh.Text.Equals("") || txtMoTaNgan.Text.Equals("") || txtMoTaDai.Text.Equals("") || txtGiaTour.Text.Equals(""))
            {
                Response.Write("<script>alert('Vui lòng nhập đủ các trường!');</script>");
                return false;
            }    
            else if(!tour.checkso(txtGiaTour.Text.Trim()))
            {
                Response.Write("<script>alert('GIá tour phải là số!');</script>");
                return false;
            }
            else if (int.Parse(txtGiaTour.Text.Trim())<=0)
            {
                Response.Write("<script>alert('GIá tour phải là số dương!');</script>");
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
                strFilePath = Server.MapPath("~/img/tour/" + FileUploadAnh.FileName);
                FileUploadAnh.PostedFile.SaveAs(strFilePath);
                lbLinkAnh.Text = "~/img/tour/" + FileUploadAnh.FileName;
                return lbLinkAnh.Text.Trim();
            }
            else
            {
                //string[] tach = lbLinkAnh.Text.Trim().Split('/');
                //lbLinkAnh.Text = tach[3];
                return lbLinkAnh.Text.Trim();
            }
        }
        protected void btnNhaplai_Click(object sender, EventArgs e)
        {
            xoatxt();
            hienthi();
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            if(checktrong())
            {
                DataTable t = tour.checkma(txtTour.Text.Trim());
                if (t.Rows.Count<=0)
                {
                    obj.MaTour = txtTour.Text.Trim();
                    obj.MaDanhMucPhu = dlMaDanhMucPhu.Text.Trim();
                    obj.TenTour = txtTenTour.Text.Trim();
                    obj.DiemXuatPhat = txtDiemXuatPhat.Text.Trim();
                    obj.DiemDenCuoi = txtDiemDenCuoi.Text.Trim();
                    obj.DichVu = txtDichVu.Text.Trim();
                    obj.ThoiGianTour = txtThoiGianTour.Text.Trim();
                    obj.NgayKhoiHanh = txtNgayKhoiHanh.Text.Trim();
                    obj.LinkAnh = SaveFileUpload();
                    obj.MoTaNgan = txtMoTaNgan.Text.Trim();
                    obj.MoTaDai = txtMoTaDai.Text.Trim();
                    obj.GiaTour = int.Parse(txtGiaTour.Text.Trim());
                    tour.insert(obj.MaTour,obj.MaDanhMucPhu, obj.TenTour, obj.DiemXuatPhat, obj.DiemDenCuoi, obj.DichVu, obj.ThoiGianTour, obj.NgayKhoiHanh, obj.LinkAnh, obj.MoTaNgan, obj.MoTaDai, obj.GiaTour);
                    Response.Write("<script>alert('Thêm thành công!');</script>");
                    xoatxt();
                    hienthi();
                }
                else
                    Response.Write("<script>alert('Mã tour đã tồn tại!');</script>");
            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            if (checktrong())
            {
                DataTable t = tour.checkma(txtTour.Text.Trim());
                if (t.Rows.Count > 0)
                {
                    obj.MaTour = txtTour.Text.Trim();
                    obj.MaDanhMucPhu = dlMaDanhMucPhu.Text.Trim();
                    obj.TenTour = txtTenTour.Text.Trim();
                    obj.DiemXuatPhat = txtDiemXuatPhat.Text.Trim();
                    obj.DiemDenCuoi = txtDiemDenCuoi.Text.Trim();
                    obj.DichVu = txtDichVu.Text.Trim();
                    obj.ThoiGianTour = txtThoiGianTour.Text.Trim();
                    obj.NgayKhoiHanh = txtNgayKhoiHanh.Text.Trim();
                    obj.LinkAnh = SaveFileUpload();
                    obj.MoTaNgan = txtMoTaNgan.Text.Trim();
                    obj.MoTaDai = txtMoTaDai.Text.Trim();
                    obj.GiaTour = int.Parse(txtGiaTour.Text.Trim());
                    tour.update(obj.MaTour, obj.MaDanhMucPhu, obj.TenTour, obj.DiemXuatPhat, obj.DiemDenCuoi, obj.DichVu, obj.ThoiGianTour, obj.NgayKhoiHanh, obj.LinkAnh, obj.MoTaNgan, obj.MoTaDai, obj.GiaTour);
                    Response.Write("<script>alert('Sửa thành công!');</script>");
                    xoatxt();
                    hienthi();
                }
                else
                    Response.Write("<script>alert('Mã tour không tồn tại!');</script>");
            }
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            DataTable t = tour.checkma(txtTour.Text.Trim());
            if (t.Rows.Count > 0)
            {
                obj.MaTour = txtTour.Text.Trim();
                tour.Delete(obj.MaTour);
                Response.Write("<script>alert('Xoá thành công!');</script>");
                xoatxt();
                hienthi();
            }
            else
                Response.Write("<script>alert('Mã tour không tồn tại!');</script>");
        }

        protected void btnTimKiem_Click(object sender, EventArgs e)
        {
            DataTable t = tour.Lookup(txtTimkiem.Text.Trim());
            if (t.Rows.Count > 0)
            {
                gvTour.Dispose();
                gvTour.DataSource = tour.getTable();
                gvTour.DataBind();
            }
            else
                Response.Write("<script>alert('không tìm được kết quả nào!');</script>");
        }

        protected void click(object sender, EventArgs e)
        {
            int i = gvTour.SelectedIndex;
            txtTour.Text = HttpUtility.HtmlDecode(gvTour.Rows[i].Cells[0].Text.Trim());
            dlMaDanhMucPhu.SelectedValue = HttpUtility.HtmlDecode(gvTour.Rows[i].Cells[1].Text);
            txtTenTour.Text = HttpUtility.HtmlDecode(gvTour.Rows[i].Cells[2].Text.Trim());
            txtDiemXuatPhat.Text = HttpUtility.HtmlDecode(gvTour.Rows[i].Cells[3].Text.Trim());
            txtDiemDenCuoi.Text = HttpUtility.HtmlDecode(gvTour.Rows[i].Cells[4].Text.Trim());
            txtDichVu.Text = HttpUtility.HtmlDecode(gvTour.Rows[i].Cells[5].Text.Trim());
            txtThoiGianTour.Text = HttpUtility.HtmlDecode(gvTour.Rows[i].Cells[6].Text.Trim());
            txtNgayKhoiHanh.Text = HttpUtility.HtmlDecode(gvTour.Rows[i].Cells[7].Text.Trim());
            lbLinkAnh.Text = HttpUtility.HtmlDecode(gvTour.Rows[i].Cells[12].Text.Trim());
            txtMoTaNgan.Text = HttpUtility.HtmlDecode(gvTour.Rows[i].Cells[9].Text.Trim());
            txtMoTaDai.Text = HttpUtility.HtmlDecode(gvTour.Rows[i].Cells[10].Text.Trim());
            txtGiaTour.Text = HttpUtility.HtmlDecode(gvTour.Rows[i].Cells[11].Text.Trim());
        }
    }
}