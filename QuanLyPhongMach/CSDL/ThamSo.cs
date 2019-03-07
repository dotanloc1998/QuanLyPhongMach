using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyPhongMach.CSDL
{
    public class ThamSo
    {
        [Key] [StringLength(4)] public string MaTS { get; set; }
        public int GiaTri { get; set; }
        [StringLength(50)] public string GhiChu { get; set; }

        public ThamSo()
        {
            
        }

        public ThamSo(string maTs, int giaTri, string ghiChu)
        {
            MaTS = maTs;
            GiaTri = giaTri;
            GhiChu = ghiChu;
        }
    }
}
