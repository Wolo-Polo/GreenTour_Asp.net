using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class LichTrinhObject
    {
        private string maLichTrinh;
        private string maTour;
        private string tenNoiDung;
        private string noiDung;
        public LichTrinhObject()
        {

        }
        public LichTrinhObject(string maLichTrinh,  string maTour, string tenNoiDung, string noiDung)
        {
            this.MaLichTrinh = maLichTrinh;
            this.MaTour = maTour;
            this.TenNoiDung = tenNoiDung;
            this.NoiDung = noiDung;
        }

        public string MaLichTrinh { get => maLichTrinh; set => maLichTrinh = value; }
        public string MaTour { get => maTour; set => maTour = value; }
        public string NoiDung { get => noiDung; set => noiDung = value; }
        public string TenNoiDung { get => tenNoiDung; set => tenNoiDung = value; }
    }
}
