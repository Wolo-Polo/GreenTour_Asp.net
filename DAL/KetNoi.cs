using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class KetNoi
    {
        public static String connString = @"Data Source=PC-TRUONG\SQLEXPRESS;Initial Catalog=DuLichASP;Integrated Security=True";
        public SqlConnection conn = null;
        public DataTable GetTable(string sql)
        {
            conn = new SqlConnection(connString);
            DataTable table = new DataTable();
            if (conn.State == ConnectionState.Closed)
                conn.Open();
            SqlDataAdapter data = new SqlDataAdapter(sql, conn);
            data.Fill(table);
            if (conn.State == ConnectionState.Open)
                conn.Close();
            return table;
        }
        public void ExecuteSQL(String sql)
        {
            SqlConnection conn2 = new SqlConnection(connString);
            conn2.Open();
            SqlCommand cmd = new SqlCommand(sql, conn2);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            cmd.Clone();
            conn2.Close();
        }
        public int ExecuteSQLcheck(String sql)
        {
            int x;
            SqlConnection conn2 = new SqlConnection(connString);
            conn2.Open();
            SqlCommand cmd = new SqlCommand(sql, conn2);
            x = cmd.ExecuteNonQuery();
            cmd.Dispose();
            cmd.Clone();
            conn2.Close();
            return x;
        }
    }
}
