using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using DTO;

namespace BUS
{
    public class BUS_TaiKhoan
    {
        KetNoi data = new KetNoi();
        public DataTable gettable()
        {
            string sql = "Select * From TaiKhoan";
            return data.GetTable(sql);
        }

        public DataTable lookup(string dieukien)
        {
            string sql = "Select * From TaiKhoan where tentaikhkoan like '%"+dieukien+"%'";
            return data.GetTable(sql);
        }
        public bool checktentaikhoan(string dieukien)
        {
            string sql = "Select * From TaiKhoan where tentaikhkoan = '" + dieukien + "'";
            DataTable t = data.GetTable(sql);
            return (t.Rows.Count>0);
        }

        public void insert(TaiKhoanObject b)
        {
            string sql = "insert into taikhoan values('"+b.TenTaiKhoan.Trim()+ "','" + b.MatKhau.Trim() + "','" + b.LoaiTaiKhoan.Trim() + "')";
            data.ExecuteSQL(sql);
        }
        public void update(TaiKhoanObject b)
        {
            string sql = "update taikhoan set MatKhau = '" + b.MatKhau.Trim() + "',LoaiTaiKhoan = N'" + b.LoaiTaiKhoan.Trim() + "' where TenTaiKhoan = '" + b.TenTaiKhoan.Trim() + "'";
            data.ExecuteSQL(sql);
        }
        public void Delete(TaiKhoanObject b)
        {
            string sql = "Delete from taikhoan  where TenTaiKhoan = '" + b.TenTaiKhoan.Trim() + "'";
            data.ExecuteSQL(sql);
        }
    }
}
