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
    public class BUS_DanhMucChinh
    {
        KetNoi da = new KetNoi();
        DanhMucChinhObject L = new DanhMucChinhObject();
        public DataTable ShowDanhMucChinh()
        {
            string sql = "select* from danhmucchinh";
            DataTable dt = new DataTable();
            dt = da.GetTable(sql);
            return dt;
        }
        public void InsertDanhMucChinh(string madm, string tendm,string mtngan, string mtdai)
        {
            string sql = "insert into danhmucchinh values( '" + madm + "', N'" + tendm + "',N'" + mtngan + "',N'" + mtdai + "')";
            da.ExecuteSQL(sql);
        }
        public void UpdateDanhMucChinh(string madm, string tendm, string mtngan, string mtdai)
        {
            string sql = "update  danhmucchinh set  tenDanhMuc= N'" + tendm + "', moTaNgan= N'" + mtngan + "', moTaDai= N'" + mtdai + "' where maDanhMuc='" + madm + "'";
            da.ExecuteSQL(sql);
        }
        public void DeleteDanhMucChinh(string madm)
        {
            string sql = "delete  danhmucchinh where maDanhMuc='" + madm + "'";
            da.ExecuteSQL(sql);
        }
        public DataTable LookDanhMucChinh(string dk)
        {
            string sql = "select* from danhmucchinh where maDanhMuc like '%" + dk + "%'";
            return da.GetTable(sql);
        }
        public int checkma(string ma)
        {
            string sql = "select maDanhMuc from danhmucchinh where maDanhMuc='" + ma + "'";
            DataTable dt = da.GetTable(sql);
            return dt.Rows.Count;
        }
    }
}
