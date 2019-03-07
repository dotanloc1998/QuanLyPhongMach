using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyPhongMach.CSDL
{
     public class Khoa
    {
        [Key] public int MaKhoa { get; set; }
        [StringLength(30)] public string TenKhoa { get; set; }

        public Khoa()
        {

        }

        public Khoa(int maKhoa, string tenKhoa)
        {
            MaKhoa = maKhoa;
            TenKhoa = tenKhoa;
        }
    }
}
