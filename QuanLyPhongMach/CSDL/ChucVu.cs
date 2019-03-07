using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyPhongMach.CSDL
{
    public class ChucVu
    {
        [Key] public int MaChucVu { get; set; }
        [StringLength(30)] public string TenChucVu { get; set; }

        public ChucVu()
        {

        }

        public ChucVu(int maChucVu, string tenChucVu)
        {
            MaChucVu = maChucVu;
            TenChucVu = tenChucVu;
        }
    }
}
