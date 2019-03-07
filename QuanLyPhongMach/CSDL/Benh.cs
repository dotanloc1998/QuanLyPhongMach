using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyPhongMach.CSDL
{
    public class Benh
    {
        [Key] public int MaBenh { get; set; }
        [StringLength(30)] public string TenBenh { get; set; }
        [StringLength(30)] public string TrieuChung { get; set; }
        public virtual ICollection<PhieuKhamBenh> PhieuKhamBenh { get; set; }
        public Benh()
        {

        }

        public Benh(int maBenh, string tenBenh, string trieuChung)
        {
            MaBenh = maBenh;
            TenBenh = tenBenh;
            TrieuChung = trieuChung;
        }
    }
}
