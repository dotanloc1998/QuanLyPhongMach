using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyPhongMach.CSDL
{
    public class NhanVien
    {
        [Key] [StringLength(4)] public string MaNV { get; set; }
        public string MaHocViNV { get; set; }
        [StringLength(30)] public string HoTenNV { get; set; }
        public bool GioiTinhNV { get; set; }
        public DateTime NamSinhNV { get; set; }
        [StringLength(50)] public string DiaChiNV { get; set; }
        [StringLength(30)] public string QueQuanNV { get; set; }
        [StringLength(20)] public string SDTNV { get; set; }
        [StringLength(20)] public string CMNDNV { get; set; }
        public HocVi MaHocVi { get; set; }

        public NhanVien()
        {

        }

        public NhanVien(string maNv, string maHocViNv, string hoTenNv, bool gioiTinhNv, DateTime namSinhNv, string diaChiNv, string queQuanNv, string sdtnv, string cmndnv)
        {
            MaNV = maNv;
            MaHocViNV = maHocViNv;
            HoTenNV = hoTenNv;
            GioiTinhNV = gioiTinhNv;
            NamSinhNV = namSinhNv;
            DiaChiNV = diaChiNv;
            QueQuanNV = queQuanNv;
            SDTNV = sdtnv;
            CMNDNV = cmndnv;
        }
    }
}
