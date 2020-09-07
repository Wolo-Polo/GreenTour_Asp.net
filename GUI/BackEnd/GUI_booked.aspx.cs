using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;

namespace GUI
{
    public partial class GUI_booked : System.Web.UI.Page
    {
        BUS_Booked bk = new BUS_Booked();
        BookedObject obj = new BookedObject();
        string loaitaikhoan;
        protected void Page_Load(object sender, EventArgs e)
        {
            hienthi();
            loaitaikhoan = Request.QueryString["loaitaikhoan"].ToString().Trim();
        }
        void hienthi()
        {
            grvBooked.DataSource = bk.getTable();
            grvBooked.DataBind();
        }
        void xoatxt()
        {
            ddlMaBooked.Focus();
            txtDiaChi.Text = "";
            txtDieuKien.Text = "";
            txtGmail.Text = "";
            txtNgayDatTour.Text = "";
            txtSoDienThoai.Text = "";
            txtSoVe.Text = "";
            txtTenKhachHang.Text = "";
            txtTongTien.Text = "";
            ddlMaBooked.SelectedIndex = 0;
            ddlMaTour.SelectedIndex = 0;
        }

        void layobj()
        {
            obj.MaBooked = ddlMaBooked.SelectedValue;
            obj.MaTour = ddlMaTour.SelectedValue;
            obj.TenKhachHang = txtTenKhachHang.Text.Trim();
            obj.NgaySinh = txtThangNS.Text.Trim() + "/"+txtNgayNS.Text.Trim()+"/"+txtNamNS.Text.Trim();
            if(rdbgioitinh.SelectedValue.ToString().Trim().Equals("Nam"))
            {
                obj.GioiTinh = "Nam";
            }
            else
                obj.GioiTinh = "Nữ";
            obj.SoDienThoai = txtSoDienThoai.Text.Trim();
            obj.Gmail = txtGmail.Text.Trim();
            obj.DiaChi = txtDiaChi.Text.Trim();
            obj.SoVe = int.Parse(txtSoVe.Text.Trim());

            DataTable gtour = bk.getgiaTour(ddlMaTour.SelectedValue.ToString().Trim());
            int giatour = int.Parse(gtour.Rows[0][0].ToString());
            obj.TongTien = obj.SoVe*giatour;
        }
        bool checktrong()
        {
            if (txtTenKhachHang.Text.Equals(""))
            {
                Response.Write("<script>alert('Tên khách hàng không được bỏ trống!');</script>");
                return false;
            }
            else if (txtNgayNS.Text.Equals("")||txtThangNS.Text.Equals("")||txtNamNS.Text.Equals(""))
            {
                Response.Write("<script>alert('Ngày tháng năm sinh không được bỏ trống!');</script>");
                return false;
            }
            else if (!bk.checkso(txtNgayNS.Text) || !bk.checkso(txtThangNS.Text) || !bk.checkso(txtNamNS.Text))
            {                
                Response.Write("<script>alert('Ngày tháng năm sinh phải là số, ngày <=31, tháng <=12!');</script>");
                return false;
            }
            else if( int.Parse(txtNgayNS.Text) > 31 || int.Parse(txtNgayNS.Text) < 1|| int.Parse(txtThangNS.Text) < 0 || int.Parse(txtThangNS.Text) > 13)
            {
                Response.Write("<script>alert('Ngày tháng năm sinh phải là số, ngày <=31, tháng <=12!');</script>");
                return false;
            }
            else if (txtSoDienThoai.Text.Equals(""))
            {
                Response.Write("<script>alert('Số điện thoại khách hàng không được bỏ trống!');</script>");
                return false;
            }
            else if (!bk.checkso(txtSoDienThoai.Text))
            {
                Response.Write("<script>alert('Số điện thoại khách hàng phải là số!');</script>");
                return false;
            }
            else if (txtGmail.Text.Equals(""))
            {
                Response.Write("<script>alert('Gmail khách hàng không được bỏ trống!');</script>");
                return false;
            }
            else if (txtDiaChi.Text.Equals(""))
            {
                Response.Write("<script>alert('Địa chỉ khách hàng không được bỏ trống!');</script>");
                return false;
            }
            else if (txtSoVe.Text.Equals(""))
            {
                Response.Write("<script>alert('Địa chỉ khách hàng không được bỏ trống!');</script>");
                return false;
            }
            else
                return true;
        }
        protected void btnTroVe_Click(object sender, EventArgs e)
        {
            Response.Redirect("GUI_ManHinhChucNang.aspx?loaitaikhoan=" + loaitaikhoan);
        }

        protected void btnTim_Click(object sender, EventArgs e)
        {
            int cu = grvBooked.Rows.Count;
            DataTable t = bk.Lookup(txtDieuKien.Text.Trim());
            int moi = t.Rows.Count;
            if(moi <= 0)
            {
                Response.Write("<script>alert('Không có kết quả theo tên tour hay mã tour chứa "+txtDieuKien.Text+"!');</script>");
            }
            else
            {
                grvBooked.DataSource = t;
                grvBooked.DataBind();
                xoatxt();
            }
            
        }

        protected void btnNhapLai_Click(object sender, EventArgs e)
        {
                xoatxt();
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            if (checktrong())
            {
                layobj();
                bk.update(obj);
                Response.Write("<script>alert('Sửa thành công!');</script>");
                xoatxt();
                hienthi();
            }
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            obj.MaBooked = ddlMaBooked.SelectedValue;
            bk.Delete(obj);
            Response.Write("<script>alert('Xoá thành công!');</script>");
            xoatxt();
            hienthi();
        }

        protected void grvBooked_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = grvBooked.SelectedIndex;
            ddlMaBooked.SelectedValue = HttpUtility.HtmlDecode(grvBooked.Rows[index].Cells[0].Text);
            ddlMaTour.SelectedValue = HttpUtility.HtmlDecode(grvBooked.Rows[index].Cells[1].Text);
            txtTenKhachHang.Text = HttpUtility.HtmlDecode(grvBooked.Rows[index].Cells[2].Text);

            string[] ngaysinh = grvBooked.Rows[index].Cells[3].Text.Trim().Split('-');
            txtNgayNS.Text = ngaysinh[0].Trim();
            txtThangNS.Text = ngaysinh[1].Trim();
            txtNamNS.Text = ngaysinh[2].Trim();

            if(HttpUtility.HtmlDecode(grvBooked.Rows[index].Cells[4].Text).Equals("Nam"))
            {
                rdbgioitinh.SelectedIndex = 0;
            }
            else
                rdbgioitinh.SelectedIndex = 1;

            txtSoDienThoai.Text = HttpUtility.HtmlDecode(grvBooked.Rows[index].Cells[5].Text);
            txtGmail.Text = HttpUtility.HtmlDecode(grvBooked.Rows[index].Cells[6].Text);
            txtDiaChi.Text = HttpUtility.HtmlDecode(grvBooked.Rows[index].Cells[7].Text);
            txtNgayDatTour.Text = HttpUtility.HtmlDecode(grvBooked.Rows[index].Cells[8].Text);
            txtNgayKhoiHanh.Text = HttpUtility.HtmlDecode(grvBooked.Rows[index].Cells[9].Text);
            txtSoVe.Text = HttpUtility.HtmlDecode(grvBooked.Rows[index].Cells[10].Text);
            txtTongTien.Text = HttpUtility.HtmlDecode(grvBooked.Rows[index].Cells[11].Text);
        }

        protected void btnTinh_Click(object sender, EventArgs e)
        {
            int sove;
            try
            {
                DataTable gtour = bk.getgiaTour(ddlMaTour.SelectedValue.ToString().Trim());
                int giatour = int.Parse(gtour.Rows[0][0].ToString());
                sove = int.Parse(txtSoVe.Text.Trim());
                if (sove <= 0)
                {
                    Response.Write("<script>alert('Số vé phải lớn hơn 0!');</script>");
                }
                else
                {
                    obj.SoVe = sove;
                    txtTongTien.Text = (sove * giatour).ToString();
                }
            }catch(Exception)
            {
                Response.Write("<script>alert('Số vé phải là số!');</script>");
            }
        }

        protected void grvBooked_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {

        }
    }
}