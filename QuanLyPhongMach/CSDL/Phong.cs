using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyPhongMach.CSDL
{
    public class Phong
    {
       [Key] [StringLength(4)] public string MaPhong { get; set;}
        public string MaKhoa { get; set; }
        public Khoa Khoa { get; set; }

        public Phong()
        {
            
        }

        public Phong(string maPhong, string makKhoa)
        {
            MaPhong = maPhong;
            MaKhoa = makKhoa;
        }
    }
}
