using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyPhongMach.CSDL
{
   public class PhieuKhamThuoc
    {
        [Key, Column(Order = 0)] [StringLength(4)] public string MaPK { get; set; }
        [Key, Column(Order = 1)] public string MaThuoc { get; set; }
        public virtual PhieuKham PhieuKham { get; set; }
        public virtual Thuoc Thuoc { get; set; }

        public PhieuKhamThuoc()
        {
            
        }

        public PhieuKhamThuoc(string maPk, string maThuoc)
        {
            MaPK = maPk;
            MaThuoc = maThuoc;
        }
    }
}
