using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class BookedObject
    {
        private string maBooked;
        private string maTour;
        private string tenKhachHang;
        private string ngaySinh;
        private string gioiTinh;
        private string soDienThoai;
        private string gmail;
        private string diaChi;
        private string ngayDatTour;
        private string ngayKhoiHanh;
        private int soVe;
        private int tongTien;        

        public string TenKhachHang { get => tenKhachHang; set => tenKhachHang = value; }
        public string NgaySinh { get => ngaySinh; set => ngaySinh = value; }
        public string GioiTinh { get => gioiTinh; set => gioiTinh = value; }
        public string SoDienThoai { get => soDienThoai; set => soDienThoai = value; }
        public string Gmail { get => gmail; set => gmail = value; }
        public string DiaChi { get => diaChi; set => diaChi = value; }
        public string MaBooked { get => maBooked; set => maBooked = value; }
        public string MaTour { get => maTour; set => maTour = value; }
        public string NgayDatTour { get => ngayDatTour; set => ngayDatTour = value; }
        public string NgayKhoiHanh { get => ngayKhoiHanh; set => ngayKhoiHanh = value; }
        public int TongTien { get => tongTien; set => tongTien = value; }
        public int SoVe { get => soVe; set => soVe = value; }

        public BookedObject()
        {

        }
        public BookedObject(string maBooked, string maTour, string tenKhachHang, string ngaySinh, string gioiTinh, string soDienThoai, string gmail, string diaChi, string ngayDatTour, string ngayKhoiHanh, int soVe, int tongTien)
        {
            this.MaBooked = maBooked;
            this.MaTour = maTour;
            this.TenKhachHang = tenKhachHang;
            this.NgaySinh = ngaySinh;
            this.GioiTinh = gioiTinh;
            this.SoDienThoai = soDienThoai;
            this.Gmail = gmail;
            this.DiaChi = diaChi;
            this.NgayDatTour = ngayDatTour;
            this.NgayKhoiHanh = ngayKhoiHanh;
            this.SoVe = soVe;
            this.TongTien = tongTien;
        }
    }
}
