using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Security.Policy;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyPhongMach.CSDL
{
    public class BenhNhan
    {
        [Key] [StringLength(4)] public string MaBN { get; set; }
        [StringLength(30)] public string HoTenBN { get; set; }
        public bool GioiTinhBN { get; set; }
        public DateTime NamSinhBN { get; set; }
        [StringLength(50)] public string DiaChiBenhNhan { get; set; }
        [StringLength(30)] public string QueQuanBenhNhan { get; set; }
        [StringLength(20)] public string SDTBN { get; set; }
        [StringLength(20)] public string CMNDBN { get; set; }

        public BenhNhan()
        {

        }

        public BenhNhan(string maBn, string hoTenBn, bool gioiTinhBn, DateTime namSinhBn, string diaChiBenhNhan, string queQuanBenhNhan, string sdtbn, string cmndbn)
        {
            MaBN = maBn;
            HoTenBN = hoTenBn;
            GioiTinhBN = gioiTinhBn;
            NamSinhBN = namSinhBn;
            DiaChiBenhNhan = diaChiBenhNhan;
            QueQuanBenhNhan = queQuanBenhNhan;
            SDTBN = sdtbn;
            CMNDBN = cmndbn;
        }
    }
}
