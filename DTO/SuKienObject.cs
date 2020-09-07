using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class SuKienObject
    {
        private string maSuKien;
        private string maDanhMucPhu;
        private string maTour;
        private string tenSuKien;
        private string linkAnh;
        private string moTaNgan;
        private string moTaDai;
        public SuKienObject()
        {

        }
        public SuKienObject(string maSuKien, string maDanhMucPhu, string maTour, string tenSuKien, string linkAnh, string moTaNgan, string moTaDai)
        {
            this.MaSuKien = maSuKien;
            this.MaDanhMucPhu = maDanhMucPhu;
            this.MaTour = maTour;
            this.TenSuKien = tenSuKien;
            this.LinkAnh = linkAnh;
            this.MoTaNgan = moTaNgan;
            this.MoTaDai = moTaDai;
        }

        public string MaSuKien { get => maSuKien; set => maSuKien = value; }
        public string MaDanhMucPhu { get => maDanhMucPhu; set => maDanhMucPhu = value; }
        public string TenSuKien { get => tenSuKien; set => tenSuKien = value; }
        public string LinkAnh { get => linkAnh; set => linkAnh = value; }
        public string MoTaNgan { get => moTaNgan; set => moTaNgan = value; }
        public string MoTaDai { get => moTaDai; set => moTaDai = value; }
        public string MaTour { get => maTour; set => maTour = value; }
    }
}
