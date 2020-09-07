using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BUS
{
    public class BUS_DanhMuc
    {
        KetNoi ketNoi = new KetNoi();
        public DataTable getTop5DanhMucPhu(String maDanhMuc)
        {
            String sql = "select top 5 * from danhmucphu where madanhmuc='" + maDanhMuc + "'";
            DataTable dt= ketNoi.GetTable(sql);
            return dt;
        }

        public DataTable getChiTietDanhMuc(String maDanhMuc)
        {
            String sql = "select * from danhmucchinh where madanhmuc='" + maDanhMuc + "'";
            return ketNoi.GetTable(sql);
        }

        public DataTable getChiTietDanhMucPhu(String maDanhMucPhu)
        {
            String sql = "select * from danhmucphu where madanhmucphu='" + maDanhMucPhu + "'";
            return ketNoi.GetTable(sql);
        }

    }
}
