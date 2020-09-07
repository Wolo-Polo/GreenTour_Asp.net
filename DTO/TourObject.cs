using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class TourObject
    {
        private string maTour;
        private string maDanhMucPhu;
        private string tenTour;
        private string diemXuatPhat;
        private string diemDenCuoi;
        private string dichVu;
        private string thoiGianTour;
        private string ngayKhoiHanh;
        private string linkAnh;
        private string moTaNgan;
        private string moTaDai;
        private int giaTour;



        public TourObject()
        {

        }
        public TourObject(string maTour, string maDanhMucPhu, string tenTour, string diemXuatPhat, string diemDenCuoi, string dichVu, string thoiGianTour, string ngayKhoiHanh, string linkAnh, string moTaNgan, string moTaDai, int giaTour)
        {
            this.MaTour = maTour;
            this.MaDanhMucPhu = maDanhMucPhu;
            this.TenTour = tenTour;
            this.DiemXuatPhat = diemXuatPhat;
            this.DiemDenCuoi = diemDenCuoi;
            this.DichVu = dichVu;
            this.ThoiGianTour = thoiGianTour;
            this.NgayKhoiHanh = ngayKhoiHanh;
            this.LinkAnh = linkAnh;
            this.MoTaNgan = moTaNgan;
            this.MoTaDai = moTaDai;
            this.GiaTour = giaTour;
        }

        public string MaTour { get => maTour; set => maTour = value; }
        public string MaDanhMucPhu { get => maDanhMucPhu; set => maDanhMucPhu = value; }
        public string TenTour { get => tenTour; set => tenTour = value; }
        public string DiemXuatPhat { get => diemXuatPhat; set => diemXuatPhat = value; }
        public string DiemDenCuoi { get => diemDenCuoi; set => diemDenCuoi = value; }
        public string DichVu { get => dichVu; set => dichVu = value; }
        public string ThoiGianTour { get => thoiGianTour; set => thoiGianTour = value; }
        public string NgayKhoiHanh { get => ngayKhoiHanh; set => ngayKhoiHanh = value; }
        public string LinkAnh { get => linkAnh; set => linkAnh = value; }
        public string MoTaNgan { get => moTaNgan; set => moTaNgan = value; }
        public string MoTaDai { get => moTaDai; set => moTaDai = value; }
        public int GiaTour { get => giaTour; set => giaTour = value; }
    }
}
