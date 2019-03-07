using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyPhongMach.CSDL
{
    public class Thuoc
    {
        [Key] public int MaThuoc { get; set; }
        [StringLength(30)] public string TenThuoc { get; set; }
        public int SoLuongTon { get; set; }
        [StringLength(30)] public string CachDung { get; set; }
        [StringLength(30)] public string DonVi { get; set; }
        public int Gia { get; set; }
        public virtual  ICollection<PhieuKhamThuoc> PhieuKhamThuoc { get; set; }
        public Thuoc()
        {

        }

        public Thuoc(int maThuoc, string tenThuoc, int soLuongTon, string cachDung, string donVi, int gia)
        {
            MaThuoc = maThuoc;
            TenThuoc = tenThuoc;
            SoLuongTon = soLuongTon;
            CachDung = cachDung;
            DonVi = donVi;
            Gia = gia;
        }
    }
}
