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
    public class BUS_LichTrinh
    {
        KetNoi da = new KetNoi();
        LichTrinhObject L = new LichTrinhObject();
        public DataTable ShowLichTrinh()
        {
            string sql = "select* from lichtrinh";
            DataTable dt = new DataTable();
            dt = da.GetTable(sql);
            return dt;
        }
        public void InsertLichTrinh(string malt,  string mat,  string tennd, string nd)
        {
            string sql = "insert into lichtrinh values('" + malt + "',  '" + mat + "', N'" + tennd + "',N'" + nd + "')";
            da.ExecuteSQL(sql);
        }
        public void UpdateLichTrinh(string malt, string mat, string tennd, string nd)
        {
            string sql = "update  lichtrinh set  maTour= '" + mat + "', tenNoiDung= N'" + tennd + "', noiDung= N'" + nd + "' where maLichTrinh='" + malt + "'";
            da.ExecuteSQL(sql);
        }
        public void DeleteLichTrinh(string malt)
        {
            string sql = "delete  lichtrinh where maLichTrinh='" + malt + "'";
            da.ExecuteSQL(sql);
        }
        public DataTable LookLichTrinh(string dk)
        {
            string sql = "select* from lichtrinh where maLichTrinh like N'%" + dk + "%'";
            DataTable dt = new DataTable();
            dt = da.GetTable(sql);
            return dt;
        }
        public int checkma(string ma)
        {
            string sql = "select maLichTrinh from lichtrinh where maLichTrinh='" + ma + "'";
            DataTable dt = null;
            dt = da.GetTable(sql);
            return dt.Rows.Count;
        }

        public DataTable getAllLichTrinh()
        {
            String sql = "select * from lichtrinh";
            return da.GetTable(sql);
        }

        public DataTable getLichTrinhByMa(String malichtrinh)
        {
            String sql = "select * from lichtrinh inner join tour on tour.matour=lichtrinh.matour where lichtrinh='" + malichtrinh + "'";
            return da.GetTable(sql);
        }

        public DataTable getTop6LichTrinh(String madanhmuc)
        {
            String sql = "select * from lichtrinh " +
                " inner join tour on tour.matour= lichtrinh.matour";
            return da.GetTable(sql);
        }
        public DataTable getLichTrinhCacTour(string tendanhmuc)
        {
            String sql;
            if (tendanhmuc.Equals("Lịch trình nước ngoài"))
                sql = "select * from  tour where tour.madanhmucphu  like 'TOURNN%'";
            else
                sql = "select * from  tour where tour.madanhmucphu not  like 'TOURNN%'";
            return da.GetTable(sql);
        }

    }
}
