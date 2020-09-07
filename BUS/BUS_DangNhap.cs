using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using DTO;

namespace BUS
{
    public class BUS_DangNhap
    {
        KetNoi data = new KetNoi();
        TaiKhoanObject tk = new TaiKhoanObject();
        public DataTable checktaikhoan(string tentaikhoan, string matKhau)
        {
            string sql = "Select * From TaiKhoan where tenTaiKhoan = N'"+ tentaikhoan + "' and matKhau = N'" + matKhau + "'";
            return data.GetTable(sql);
        }
    }
}
