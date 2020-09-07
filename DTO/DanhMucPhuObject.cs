using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DanhMucPhuObject
    {
        private string maDanhMucPhu;
        private string maDanhMuc;
        private string tenDanhMucPhu;
        private string linkAnh;
        private string moTaNgan;
        private string moTaDai;
        public DanhMucPhuObject()
        {

        }
        public DanhMucPhuObject(string maDanhMucPhu, string maDanhMuc, string tenDanhMucPhu, string linkAnh, string moTaNgan, string moTaDai)
        {
            this.MaDanhMucPhu = maDanhMucPhu;
            this.MaDanhMuc = maDanhMuc;
            this.TenDanhMucPhu = tenDanhMucPhu;
            this.LinkAnh = linkAnh;
            this.MoTaNgan = moTaNgan;
            this.MoTaDai = moTaDai;
        }
        public string MaDanhMucPhu { get => maDanhMucPhu; set => maDanhMucPhu = value; }
        public string TenDanhMucPhu { get => tenDanhMucPhu; set => tenDanhMucPhu = value; }
        public string LinkAnh { get => linkAnh; set => linkAnh = value; }
        public string MoTaNgan { get => moTaNgan; set => moTaNgan = value; }
        public string MoTaDai { get => moTaDai; set => moTaDai = value; }
        public string MaDanhMuc { get => maDanhMuc; set => maDanhMuc = value; }
    }
}
