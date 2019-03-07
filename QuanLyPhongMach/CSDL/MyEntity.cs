using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;

namespace QuanLyPhongMach.CSDL
{
    public class MyEntity : DbContext
    {
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            Database.SetInitializer<MyEntity>(null);
            base.OnModelCreating(modelBuilder);
        }
        public MyEntity() : base("QuanLyPhongMach")
        {

        }
        public DbSet<PhieuKhamThuoc> TPhieuKhamThuocs { get; set; }
        public DbSet<Thuoc> Thuocs { get; set; }
        public DbSet<PhieuKhamBenh> TPhieuKhamBenhs { get; set; }
        public DbSet<PhieuKham> TPhieuKhams { get; set; }
        public DbSet<Benh> TBenhs { get; set; }
        public DbSet<ChucVu> TChucVus { get; set; }
        public DbSet<ThamSo> TThamSos { get; set; }
        public DbSet<Phong> TPhongs { get; set; }
        public DbSet<NhanVien> TNhanViens { get; set; }
        public DbSet<HocVi> THocVis { get; set; }
        public DbSet<Khoa> TKhoas { get; set; }
        public DbSet<BenhNhan> TBenhNhans { get; set; }
        public DbSet<PhanCong> TPhanCongs { get; set; }
    }
}
