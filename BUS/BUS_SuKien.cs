using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using DAL;
using System.Data;

namespace BUS
{
    public class BUS_SuKien
    {
        KetNoi da = new KetNoi();
        SuKienObject L = new SuKienObject();
        public DataTable ShowSuKien()
        {
            string sql = "select* from sukien";
            DataTable dt = new DataTable();
            dt = da.GetTable(sql);
            return dt;
        }
        public void InsertSuKien(string mask, string madmp, string mat, string tensk, string lanh, string mtngan, string mtdai)
        {
            string sql = "insert into sukien values('" + mask + "', '" + madmp + "', '" + mat + "', N'" + tensk + "','"+"~/img/sukien/" + lanh + "',N'" + mtngan + "',N'" + mtdai + "')";
            da.ExecuteSQL(sql);
        }
        public void UpdateSuKien(string mask, string madmp, string mat, string tensk, string lanh, string mtngan, string mtdai)
        {
            string sql = "update  sukien set maDanhMucPhu= '" + madmp + "', maTour= '" + mat + "', tenSuKien= N'" + tensk + "', linkAnh= '" + "~/img/sukien/" + lanh + "', moTaNgan= N'" + mtngan + "', moTaDai= N'" + mtdai + "' where maSuKien='" + mask + "'";
            da.ExecuteSQL(sql);
        }
        public void DeleteSuKien(string mask)
        {
            string sql = "delete  sukien where maSuKien='" + mask + "'";
            da.ExecuteSQL(sql);
        }
        public DataTable LookSuKien(string dk)
        {
            string sql = "select* from sukien where maSuKien like N'%" + dk + "%'";
            DataTable dt = new DataTable();
            dt = da.GetTable(sql);
            return dt;
        }
        public int checkma(string ma)
        {
            string sql = "select maSuKien from sukien where maSuKien='" + ma + "'";
            DataTable dt = null;
            dt = da.GetTable(sql);
            return dt.Rows.Count;
        }

        public DataTable getAllSuKien()
        {
            String sql = "select * from sukien";
            return da.GetTable(sql);
        }

        public DataTable getSuKienByMa(String masukien)
        {
            String sql = "select * from sukien where masukien='" + masukien + "'";
            return da.GetTable(sql);
        }

        public DataTable getTop6SuKien(String maDanhMuc)
        {
            String sql = "select top 6 * " +
               "from sukien inner join danhmucphu on sukien.maDanhMucPhu=danhmucphu.maDanhMucPhu " +
               "inner join danhmucchinh on danhmucchinh.maDanhMuc=danhmucphu.maDanhMuc " +
               "where danhmucchinh.maDanhMuc='" + maDanhMuc + "'";
            return da.GetTable(sql);
        }

        public DataTable getSuKienByDanhMuc(String maDanhMuc)
        {
            String sql = "select * from sukien where madanhmucphu='" + maDanhMuc + "'";
            return da.GetTable(sql);
        }

    }
}
