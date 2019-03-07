using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyPhongMach.CSDL
{
    public class HocVi
    {
        [Key] [StringLength(4)] public string MaHocVi { get; set; }
        [StringLength(30)] public string TenHocVi { get; set; }

        public HocVi()
        {
        }

        public HocVi(string maHocVi, string tenHocVi)
        {
            MaHocVi = maHocVi;
            TenHocVi = tenHocVi;
        }
    }
}
