using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using DAL;
using System.Text.RegularExpressions;

namespace BUS
{
    public class BUS_Booked
    {
        KetNoi data = new KetNoi();
        BookedObject tk = new BookedObject();
        public DataTable getTable()
        {
            string sql = "Select * From booked";
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
            string sql = "Select * From booked where maTour LIKE '%"+ dieukien + "%' OR tenKhachHang LIKE N'%" + dieukien + "%'";
            return data.GetTable(sql);
        }
        public DataTable getgiaTour(string dieukien)
        {
            string sql = "Select giaTour from Tour where matour = '"+dieukien+"'";
            return data.GetTable(sql);
        }
        public DataTable checkmabooked(string dieukien)
        {
            string sql = "Select mabooked from booked where matour = '" + dieukien + "'";
            return data.GetTable(sql);
        }
        public void update(BookedObject b)
        {
            string sql = "update booked set MaTour = '" + b.MaTour.Trim() + "',TenKhachHang = N'" + b.TenKhachHang + "',NgaySinh = '" + b.NgaySinh + "',GioiTinh = N'" + b.GioiTinh + "',SoDienThoai = '" + b.SoDienThoai + "',Gmail = '" + b.Gmail + "',DiaChi = N'" + b.DiaChi + "',SoVe = " + b.SoVe + ",TongTien = " + b.TongTien + " where maBooked = '"+ b.MaBooked + "'";
            data.ExecuteSQL(sql);
        }
        public void Delete(BookedObject b)
        {
            string sql = "Delete from booked  where maBooked = '" + b.MaBooked + "'";
            data.ExecuteSQL(sql);
        }
        public void insertBooked(BookedObject bookedObject)
        {
            String sql = "insert into booked values(N'" + bookedObject.MaTour + "', N'" + bookedObject.TenKhachHang + "', " +
                "'" + bookedObject.NgaySinh + "', N'" + bookedObject.GioiTinh + "', '" + bookedObject.SoDienThoai + "', " +
                "N'" + bookedObject.Gmail + "', N'" + bookedObject.DiaChi + "', '" + bookedObject.NgayDatTour + "', " +
                "'" + bookedObject.NgayKhoiHanh + "', " + bookedObject.SoVe + ", " + bookedObject.TongTien + ")";
            data.ExecuteSQL(sql);
        }
    }
}
