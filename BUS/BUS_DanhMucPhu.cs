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
    public class BUS_DanhMucPhu
    {
        KetNoi da = new KetNoi();
        DanhMucPhuObject L = new DanhMucPhuObject();
        public DataTable ShowDanhMucPhu()
        {
            string sql = "select* from danhmucphu";
            DataTable dt = new DataTable();
            dt = da.GetTable(sql);
            return dt;
        }
        public void InsertDanhMucPhu(string madmp, string madm, string tendmp, string lanh, string mtngan, string mtdai)
        {
            string sql = "insert into danhmucphu values( '" + madmp + "', '" + madm + "', N'" + tendmp + "','" + "~/img/danhmucphu/" + lanh + "',N'" + mtngan + "',N'" + mtdai + "')";
            da.ExecuteSQL(sql);
        }
        public void UpdateDanhMucPhu(string madmp, string madm, string tendmp, string lanh, string mtngan, string mtdai)
        {
            string sql = "update  danhmucphu set  maDanhMuc= N'" + madm + "',tenDanhMucPhu= N'" + tendmp + "',linkAnh= '" + "~/img/danhmucphu/" + lanh + "', moTaNgan= N'" + mtngan + "', moTaDai= N'" + mtdai + "' where maDanhMucPhu='" + madmp + "'";
            da.ExecuteSQL(sql);
        }
        public void DeleteDanhMucPhu(string madmp)
        {
            string sql = "delete  danhmucphu where maDanhMucPhu='" + madmp + "'";
            da.ExecuteSQL(sql);
        }
        public DataTable LookDanhMucPhu(string dk)
        {
            string sql = "select* from danhmucphu where maDanhMucPhu like '%" + dk + "%'";
            return da.GetTable(sql);
        }
        public int checkma(string ma)
        {
            string sql = "select maDanhMucPhu from danhmucphu where maDanhMucPhu='" + ma + "'";
            DataTable dt = da.GetTable(sql);
            return dt.Rows.Count;
        }
    }
}
