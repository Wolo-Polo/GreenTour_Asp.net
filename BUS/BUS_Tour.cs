using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using DTO;
using System.Text.RegularExpressions;

namespace BUS
{
    public class BUS_Tour
    {
        KetNoi data = new KetNoi();
        public DataTable getTable()
        {
            string sql = "Select * From tour";
            return data.GetTable(sql);
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
        public DataTable Lookup(string dieukien)
        {
            string sql = "Select * From tour where maTour LIKE '%" + dieukien + "%' OR tentour LIKE N'%" + dieukien + "%'";
            return data.GetTable(sql);
        }
        public DataTable checkma(string dieukien)
        {
            string sql = "Select maTour from tour where matour = '" + dieukien + "'";
            return data.GetTable(sql);
        }
        public void insert(string MaTour, string MaDanhMucPhu, string TenTour, string DiemXuatPhat, string DiemDenCuoi, string DichVu, string ThoiGianTour, string NgayKhoiHanh, string LinkAnh, string MoTaNgan, string MoTaDai,int GiaTour)
        {
            string sql = "insert into tour values(N'" + MaTour.Trim() + "',N'" + MaDanhMucPhu.Trim() + "', N'" + TenTour.Trim() + "',N'" + DiemXuatPhat.Trim() + "',N'" + DiemDenCuoi.Trim() + "',N'" + DichVu.Trim() + "',N'" + ThoiGianTour.Trim() + "',N'" + NgayKhoiHanh.Trim() + "',N'" + LinkAnh.Trim() + "',N'" + MoTaNgan.Trim() + "',N'" + MoTaDai.Trim() + "'," + GiaTour + ")";
            data.ExecuteSQL(sql);
        }
        public void update(string MaTour, string MaDanhMucPhu, string TenTour, string DiemXuatPhat, string DiemDenCuoi, string DichVu, string ThoiGianTour, string NgayKhoiHanh, string LinkAnh, string MoTaNgan, string MoTaDai, int GiaTour)
        {
            string sql = "update tour set madanhmucphu = N'" + MaDanhMucPhu.Trim()+ "',TenTour = N'" + TenTour.Trim() + "',DiemXuatPhat = N'" + DiemXuatPhat.Trim() + "',DiemDenCuoi = N'" + DiemDenCuoi.Trim() + "',DichVu = N'" + DichVu.Trim() + "',ThoiGianTour = N'" + ThoiGianTour.Trim() + "',NgayKhoiHanh = N'" + NgayKhoiHanh.Trim() + "',LinkAnh = N'" + LinkAnh.Trim() + "',MoTaNgan = N'" + MoTaNgan.Trim() + "',MoTaDai = N'" + MoTaDai.Trim() + "',GiaTour = " + GiaTour + " where matour = '"+MaTour.Trim()+"'";
            data.ExecuteSQL(sql);
        }
        public void Delete(string matour)
        {
            string sql = "Delete from tour  where maTour = '" + matour + "'";
            data.ExecuteSQL(sql);
        }

        public DataTable getHotTour()
        {
            String sql = "select top 5 count(mabooked) as 'luotbooked', tour.matour, tentour, thoigiantour, giatour from booked inner join tour on booked.matour=tour.matour group by tour.matour, tentour, thoigiantour, giatour";
            return data.GetTable(sql);
        }
        public DataTable getTop6Tour(String maDanhMuc)
        {
            String sql = "select top 6 * " +
                "from tour inner join danhmucphu on tour.maDanhMucPhu=danhmucphu.maDanhMucPhu " +
                "inner join danhmucchinh on danhmucchinh.maDanhMuc=danhmucphu.maDanhMuc " +
                "where danhmucchinh.maDanhMuc='" + maDanhMuc + "'";
            return data.GetTable(sql);
        }

        public DataTable getTourTheoDanhMuc(String maDanhMucPhu)
        {
            String sql = "select * from tour where madanhmucphu='" + maDanhMucPhu + "'";
            return data.GetTable(sql);
        }

        public DataTable getTourTheoDieuKien(String dieuKienTenTour)
        {
            String sql = "select * from tour where tentour='" + dieuKienTenTour + "'";
            return data.GetTable(sql);
        }

        public DataTable getTourByMaTour(String maTour)
        {
            String sql = "select * from tour where matour='" + maTour + "'";
            return data.GetTable(sql);
        }

        public DataTable findTour(String keyword)
        {
            String sql = "select * from tour where tentour like N'%" + keyword + "%' or motangan like N'%" + keyword + "%'" +
                " or motadai like N'%" + keyword + "%'" + " or diemxuatphat like N'%" + keyword + "%'" +
                " or diemdencuoi like N'%" + keyword + "%' or dichvu like N'%" + keyword + "%' or thoigiantour like N'%" + keyword + "%'" +
                " or ngaykhoihanh like N'%" + keyword + "%'";

            try
            {
                int gia = int.Parse(keyword);
                sql += " or giatour=" + gia;
            }
            catch (Exception)
            {
                
            }
            return data.GetTable(sql);
        }

        public DataTable getLichTrinhOfTour(String matour)
        {
            String sql = "select * from lichtrinh where matour='" + matour + "'";
            return data.GetTable(sql);

        }
    }
}
