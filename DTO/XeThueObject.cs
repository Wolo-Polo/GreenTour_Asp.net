using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class XeThueObject
    {
        private string maXeThue;
        private string maDanhMucPhu;
        private string tenXeThue;
        private int soCho;
        private int donGia;
        private string linkAnh;
        private string moTaNgan;
        private string moTaDai;
        public XeThueObject()
        {

        }
        public XeThueObject(string maXeThue, string maDanhMucPhu, string tenXeThue, int soCho, int donGia,string linkAnh, string moTaNgan, string moTaDai)
        {
            this.MaXeThue = maXeThue;
            this.MaDanhMucPhu = maDanhMucPhu;
            this.TenXeThue = tenXeThue;
            this.SoCho = soCho;
            this.DonGia = donGia;
            this.LinkAnh = linkAnh;
            this.MoTaNgan = moTaNgan;
            this.MoTaDai = moTaDai;
        }

        public string MaXeThue { get => maXeThue; set => maXeThue = value; }
        public string MaDanhMucPhu { get => maDanhMucPhu; set => maDanhMucPhu = value; }
        public string TenXeThue { get => tenXeThue; set => tenXeThue = value; }
        public int SoCho { get => soCho; set => soCho = value; }
        public string LinkAnh { get => linkAnh; set => linkAnh = value; }
        public string MoTaNgan { get => moTaNgan; set => moTaNgan = value; }
        public string MoTaDai { get => moTaDai; set => moTaDai = value; }
        public int DonGia { get => donGia; set => donGia = value; }
    }
}
