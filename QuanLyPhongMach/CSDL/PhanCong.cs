using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyPhongMach.CSDL
{
    public class PhanCong
    {
        [Key] [StringLength(4)] public string MaPC { get; set; }
        public string MaBacSi { get; set; }
        public string MaPhong { get; set; }
        public string MaKhoa { get; set; }
        public string MaYTa { get; set; }
        public DateTime NgayTruc { get; set; }
        public NhanVien BacSi { get; set; }
        public Phong Phong { get; set; }
        public Khoa Khoa { get; set; }
        public NhanVien YTa { get; set; }

        public PhanCong()
        {

        }

        public PhanCong(string phancong, string maBacSi, string maPhong, string maKhoa, string maYTa, DateTime ngayTruc)
        {
            MaPC = phancong;
            MaBacSi = maBacSi;
            MaPhong = maPhong;
            MaKhoa = maKhoa;
            MaYTa = maYTa;
            NgayTruc = ngayTruc;
        }
    }
}
