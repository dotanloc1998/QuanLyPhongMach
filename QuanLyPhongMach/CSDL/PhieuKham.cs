using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Security.Policy;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyPhongMach.CSDL
{
    public class PhieuKham
    {
        [Key] [StringLength(4)] public string MaPK { get; set; }
        public string MaBenhNhan { get; set; }
        public string MaPhanCong { get; set; }
        public DateTime NgayKham { get; set; }
        public int TienKham { get; set; }
        public int TienThuoc { get; set; }
        public BenhNhan BenhNhan { get; set; }
        public PhanCong PhanCong { get; set; }
        public virtual ICollection<PhieuKhamBenh> PhieuKhamBenh { get; set; }
        public virtual ICollection<PhieuKhamThuoc> PhieuKhamThuoc { get; set; }

        public PhieuKham()
        {

        }

        public PhieuKham(string maPK, string maBenhNhan, string maPhanCong, DateTime ngayKham, int tienKham, int tienThuoc)
        {
            MaPK = maPK;
            MaBenhNhan = maBenhNhan;
            MaPhanCong = maPhanCong;
            NgayKham = ngayKham;
            TienKham = tienKham;
            TienThuoc = tienThuoc;
        }
    }
}
