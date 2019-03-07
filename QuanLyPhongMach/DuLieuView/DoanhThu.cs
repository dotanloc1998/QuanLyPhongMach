using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyPhongMach.DuLieuView
{
    public class DoanhThu
    {
        public DateTime NgayXem { get; set; }
        public int SoBenhNhan { get; set; }
        public int SoTien { get; set; }
        public string TiLe { get; set; }
        public DoanhThu()
        {

        }
        public DoanhThu(DateTime ngay, int soBN, int tien, string tiLe)
        {
            NgayXem = ngay;
            SoBenhNhan = soBN;
            SoTien = tien;
            TiLe = tiLe;
        }
    }
}
