using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Security.Policy;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyPhongMach.CSDL
{
    public class PhieuKhamBenh
    {
        [Key, Column(Order = 0)] [StringLength(4)] public string MaPK { get; set; }
        [Key, Column(Order = 1)] public string MaBenh { get; set; }
        public virtual PhieuKham PhieuKham { get; set; }
        public virtual Benh Benh { get; set; }
        public PhieuKhamBenh()
        {

        }

        public PhieuKhamBenh(string maPk, string maBenh)
        {
            MaPK = maPk;
            MaBenh = maBenh;
        }
    }
}
