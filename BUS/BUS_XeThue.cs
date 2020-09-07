using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using DAL;
using System.Data;
using System.Text.RegularExpressions;

namespace BUS
{
    public class BUS_XeThue
    {
        KetNoi da = new KetNoi();
        XeThueObject L = new XeThueObject();
        public DataTable ShowXeThue()
        {
            string sql = "select* from xethue";
            DataTable dt = new DataTable();
            dt = da.GetTable(sql);
            return dt;
        }
        public bool checkso(string so)
        {
            bool check;
            string regex = "^[0-9]*$";
            if (so.Trim().Length < 12 && Regex.IsMatch(so, regex))
            {
                check = true;
            }
            else
                check = false;
            return check;
        }
        public void InsertXeThue(string maxt, string madmp, string tenxt,int socho, int dongia, string lanh, string mtngan, string mtdai)
        {
            string sql = "insert into xethue values('" + maxt + "', '" + madmp + "', N'" + tenxt + "', '" + socho + "','" + dongia + "','" + "~/img/xethue/" + lanh + "',N'" + mtngan + "',N'" + mtdai + "')";
            da.ExecuteSQL(sql);
        }
        public void UpdateXeThue(string maxt, string madmp,  string tenxt, int socho, int dongia, string lanh, string mtngan, string mtdai)
        {
            string sql = "update  xethue set maDanhMucPhu= '" + madmp + "', tenXeThue= N'" + tenxt + "',soCho= '" + socho + "',donGia= '" + dongia + "', linkAnh= '" + "~/img/xethue/" + lanh + "', moTaNgan= N'" + mtngan + "', moTaDai= N'" + mtdai + "' where maXeThue='" + maxt + "'";
            da.ExecuteSQL(sql);
        }
        public void DeleteXeThue(string maxt)
        {
            string sql = "delete  xethue where maXeThue='" + maxt + "'";
            da.ExecuteSQL(sql);
        }
        public DataTable LookXeThue(string dk)
        {
            string sql = "select* from xethue where maXeThue like '%" + dk + "%'";
            return  da.GetTable(sql);
        }
        public int checkma(string ma)
        {
            string sql = "select maXeThue from xethue where maXeThue='" + ma + "'";
            DataTable dt = da.GetTable(sql);
            return dt.Rows.Count;
        }
        public DataTable checklinkanh(string link)
        {
            string sql = "select linkanh from xethue where linkanh='" + link + "'";
            return da.GetTable(sql);
        }

        public DataTable getAllXeThue()
        {
            String sql = "select * from xethue";
            return da.GetTable(sql);
        }

        public DataTable getTop6ThueXe(String maDanhMuc)
        {
            String sql = "select top 6 * " +
                "from xethue inner join danhmucphu on xethue.maDanhMucPhu=danhmucphu.maDanhMucPhu " +
                "inner join danhmucchinh on danhmucchinh.maDanhMuc=danhmucphu.maDanhMuc " +
                "where danhmucchinh.maDanhMuc='" + maDanhMuc + "'";
            return da.GetTable(sql);
        }

        public DataTable getXeThueByMa(String maxethue)
        {
            String sql = "select * from xethue where maxethue='" + maxethue + "'";
            return da.GetTable(sql);
        }

        public DataTable getXetThueByDanhMuc(String madanhmucphu)
        {
            String sql = "select * from xethue where madanhmucphu='" + madanhmucphu + "'";
            return da.GetTable(sql);
        }
    }
}
