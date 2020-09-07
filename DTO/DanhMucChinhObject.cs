using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DanhMucChinhObject
    {
        private string maDanhMuc;
        private string tenDanhMuc;
        private string moTaNgan;
        private string moTaDai;
        public DanhMucChinhObject()
        {

        }
        public DanhMucChinhObject(string maDanhMuc, string tenDanhMuc, string moTaNgan, string moTaDai)
        {
            this.MaDanhMuc = maDanhMuc;
            this.TenDanhMuc = tenDanhMuc;
            this.MoTaNgan = moTaNgan;
            this.MoTaDai = moTaDai;
        }
        public string MaDanhMuc { get => maDanhMuc; set => maDanhMuc = value; }
        public string TenDanhMuc { get => tenDanhMuc; set => tenDanhMuc = value; }
        public string MoTaNgan { get => moTaNgan; set => moTaNgan = value; }
        public string MoTaDai { get => moTaDai; set => moTaDai = value; }
    }
}
