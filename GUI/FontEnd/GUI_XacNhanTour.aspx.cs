using BUS;
using DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI
{
    public partial class GUI_XacNhanTour : System.Web.UI.Page
    {
        BUS_Booked bus_Booked = new BUS_Booked();
        BUS_Tour bus_Tour = new BUS_Tour();
        protected void Page_Load(object sender, EventArgs e)
        {
            string maTour=Request.Form.Get("matour");
            string gioitinh = Request.Form.Get("gioitinh");
            string tenKhachHang= Request.Form.Get("hoten");
            string ngaysinh = Request.Form.Get("ngaysinh");
            string diaChi = Request.Form.Get("diachi");
            string soDienThoai = Request.Form.Get("sdt");
            string gmail = Request.Form.Get("email");
            DataTable dt= bus_Tour.getTourByMaTour(maTour.Trim());
            string ngayKhoiHanh = dt.Rows[0].Field<DateTime>("ngaykhoihanh").ToString();
            int giatour = int.Parse(Request.Form.Get("giatour"));

            string ngayDatTour = DateTime.Now.ToString();
            int soVe = 0;
            int tongTien = 0;
            try
            {
                soVe= int.Parse(Request.Form.Get("sove"));
                tongTien = soVe * giatour;

            }
            catch (Exception) { }
            
            BookedObject bookedObject = new BookedObject();
            bookedObject.MaTour = maTour;
            bookedObject.GioiTinh = gioitinh;
            bookedObject.TenKhachHang = tenKhachHang;
            bookedObject.NgaySinh = ngaysinh;
            bookedObject.DiaChi = diaChi;
            bookedObject.SoDienThoai = soDienThoai;
            bookedObject.Gmail = gmail;
            bookedObject.NgayDatTour = ngayDatTour;
            bookedObject.SoVe = soVe;
            bookedObject.NgayKhoiHanh = ngayKhoiHanh;
            bookedObject.TongTien = tongTien;


            bus_Booked.insertBooked(bookedObject);
            LabelMaTour.Text = maTour;
            LabelHoTen.Text = tenKhachHang;
            LabelNgaySinh.Text = ngaysinh;
            LabelGioiTinh.Text = gioitinh;
            LabelDiaChi.Text = diaChi;
            LabelSdt.Text = soDienThoai;
            LabelEmail.Text = gmail;
            LabelSoVe.Text = soVe.ToString();
            LabelTongTien.Text = tongTien.ToString();
            LabelThoiGianDat.Text = ngayDatTour;
            LabelNgayKhoiHanh.Text = ngayKhoiHanh;
        }
    }
}