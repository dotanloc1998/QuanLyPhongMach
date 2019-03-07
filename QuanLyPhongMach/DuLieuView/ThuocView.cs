using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyPhongMach.DuLieuView
{
   public class ThuocView
    {
        public string TenThuoc { get; set; }
        public  int SoLuong { get; set; }
        public string DonVi { get; set; }
        public string CachDung { get; set; }
        public int Gia { get; set; }
        public ThuocView()
        {

        }
        public ThuocView(string tenThuoc , int soLuong , string donVi , string cachDung , int gia)
        {
            TenThuoc = tenThuoc;
            SoLuong = soLuong;
            DonVi = donVi;
            CachDung = cachDung;
            Gia = gia;
        }
    }
}
