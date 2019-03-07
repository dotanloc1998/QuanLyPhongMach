namespace QuanLyPhongMach.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class createdb : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.BenhNhans",
                c => new
                    {
                        MaBN = c.String(nullable: false, maxLength: 4),
                        HoTenBN = c.String(maxLength: 30),
                        GioiTinhBN = c.Boolean(nullable: false),
                        NamSinhBN = c.DateTime(nullable: false),
                        DiaChiBenhNhan = c.String(maxLength: 50),
                        QueQuanBenhNhan = c.String(maxLength: 30),
                        SDTBN = c.String(maxLength: 20),
                        CMNDBN = c.String(maxLength: 20),
                    })
                .PrimaryKey(t => t.MaBN);
            
            CreateTable(
                "dbo.Benhs",
                c => new
                    {
                        MaBenh = c.Int(nullable: false, identity: true),
                        TenBenh = c.String(maxLength: 30),
                        TrieuChung = c.String(maxLength: 30),
                    })
                .PrimaryKey(t => t.MaBenh);
            
            CreateTable(
                "dbo.PhieuKhamBenhs",
                c => new
                    {
                        MaPK = c.String(nullable: false, maxLength: 4),
                        MaBenh = c.String(nullable: false, maxLength: 128),
                        Benh_MaBenh = c.Int(),
                    })
                .PrimaryKey(t => new { t.MaPK, t.MaBenh })
                .ForeignKey("dbo.Benhs", t => t.Benh_MaBenh)
                .ForeignKey("dbo.PhieuKhams", t => t.MaPK, cascadeDelete: true)
                .Index(t => t.MaPK)
                .Index(t => t.Benh_MaBenh);
            
            CreateTable(
                "dbo.PhieuKhams",
                c => new
                    {
                        MaPK = c.String(nullable: false, maxLength: 4),
                        MaBenhNhan = c.String(),
                        MaPhanCong = c.String(),
                        NgayKham = c.DateTime(nullable: false),
                        TienKham = c.Int(nullable: false),
                        TienThuoc = c.Int(nullable: false),
                        BenhNhan_MaBN = c.String(maxLength: 4),
                        PhanCong_MaPC = c.String(maxLength: 4),
                    })
                .PrimaryKey(t => t.MaPK)
                .ForeignKey("dbo.BenhNhans", t => t.BenhNhan_MaBN)
                .ForeignKey("dbo.PhanCongs", t => t.PhanCong_MaPC)
                .Index(t => t.BenhNhan_MaBN)
                .Index(t => t.PhanCong_MaPC);
            
            CreateTable(
                "dbo.PhanCongs",
                c => new
                    {
                        MaPC = c.String(nullable: false, maxLength: 4),
                        MaBacSi = c.String(),
                        MaPhong = c.String(maxLength: 4),
                        MaKhoa = c.String(),
                        MaYTa = c.String(),
                        NgayTruc = c.DateTime(nullable: false),
                        BacSi_MaNV = c.String(maxLength: 4),
                        Khoa_MaKhoa = c.Int(),
                        YTa_MaNV = c.String(maxLength: 4),
                    })
                .PrimaryKey(t => t.MaPC)
                .ForeignKey("dbo.NhanViens", t => t.BacSi_MaNV)
                .ForeignKey("dbo.Khoas", t => t.Khoa_MaKhoa)
                .ForeignKey("dbo.Phongs", t => t.MaPhong)
                .ForeignKey("dbo.NhanViens", t => t.YTa_MaNV)
                .Index(t => t.MaPhong)
                .Index(t => t.BacSi_MaNV)
                .Index(t => t.Khoa_MaKhoa)
                .Index(t => t.YTa_MaNV);
            
            CreateTable(
                "dbo.NhanViens",
                c => new
                    {
                        MaNV = c.String(nullable: false, maxLength: 4),
                        MaHocViNV = c.String(),
                        HoTenNV = c.String(maxLength: 30),
                        GioiTinhNV = c.Boolean(nullable: false),
                        NamSinhNV = c.DateTime(nullable: false),
                        DiaChiNV = c.String(maxLength: 50),
                        QueQuanNV = c.String(maxLength: 30),
                        SDTNV = c.String(maxLength: 20),
                        CMNDNV = c.String(maxLength: 20),
                        MaHocVi_MaHocVi = c.String(maxLength: 4),
                    })
                .PrimaryKey(t => t.MaNV)
                .ForeignKey("dbo.HocVis", t => t.MaHocVi_MaHocVi)
                .Index(t => t.MaHocVi_MaHocVi);
            
            CreateTable(
                "dbo.HocVis",
                c => new
                    {
                        MaHocVi = c.String(nullable: false, maxLength: 4),
                        TenHocVi = c.String(maxLength: 30),
                    })
                .PrimaryKey(t => t.MaHocVi);
            
            CreateTable(
                "dbo.Khoas",
                c => new
                    {
                        MaKhoa = c.Int(nullable: false, identity: true),
                        TenKhoa = c.String(maxLength: 30),
                    })
                .PrimaryKey(t => t.MaKhoa);
            
            CreateTable(
                "dbo.Phongs",
                c => new
                    {
                        MaPhong = c.String(nullable: false, maxLength: 4),
                        MaKhoa = c.String(),
                        Khoa_MaKhoa = c.Int(),
                    })
                .PrimaryKey(t => t.MaPhong)
                .ForeignKey("dbo.Khoas", t => t.Khoa_MaKhoa)
                .Index(t => t.Khoa_MaKhoa);
            
            CreateTable(
                "dbo.PhieuKhamThuocs",
                c => new
                    {
                        MaPK = c.String(nullable: false, maxLength: 4),
                        MaThuoc = c.String(nullable: false, maxLength: 128),
                        Thuoc_MaThuoc = c.Int(),
                    })
                .PrimaryKey(t => new { t.MaPK, t.MaThuoc })
                .ForeignKey("dbo.PhieuKhams", t => t.MaPK, cascadeDelete: true)
                .ForeignKey("dbo.Thuocs", t => t.Thuoc_MaThuoc)
                .Index(t => t.MaPK)
                .Index(t => t.Thuoc_MaThuoc);
            
            CreateTable(
                "dbo.Thuocs",
                c => new
                    {
                        MaThuoc = c.Int(nullable: false, identity: true),
                        TenThuoc = c.String(maxLength: 30),
                        SoLuongTon = c.Int(nullable: false),
                        CachDung = c.String(maxLength: 30),
                        DonVi = c.String(maxLength: 30),
                        Gia = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.MaThuoc);
            
            CreateTable(
                "dbo.ChucVus",
                c => new
                    {
                        MaChucVu = c.Int(nullable: false, identity: true),
                        TenChucVu = c.String(maxLength: 30),
                    })
                .PrimaryKey(t => t.MaChucVu);
            
            CreateTable(
                "dbo.ThamSoes",
                c => new
                    {
                        MaTS = c.String(nullable: false, maxLength: 4),
                        GiaTri = c.Int(nullable: false),
                        GhiChu = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.MaTS);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.PhieuKhamThuocs", "Thuoc_MaThuoc", "dbo.Thuocs");
            DropForeignKey("dbo.PhieuKhamThuocs", "MaPK", "dbo.PhieuKhams");
            DropForeignKey("dbo.PhieuKhamBenhs", "MaPK", "dbo.PhieuKhams");
            DropForeignKey("dbo.PhieuKhams", "PhanCong_MaPC", "dbo.PhanCongs");
            DropForeignKey("dbo.PhanCongs", "YTa_MaNV", "dbo.NhanViens");
            DropForeignKey("dbo.PhanCongs", "MaPhong", "dbo.Phongs");
            DropForeignKey("dbo.Phongs", "Khoa_MaKhoa", "dbo.Khoas");
            DropForeignKey("dbo.PhanCongs", "Khoa_MaKhoa", "dbo.Khoas");
            DropForeignKey("dbo.PhanCongs", "BacSi_MaNV", "dbo.NhanViens");
            DropForeignKey("dbo.NhanViens", "MaHocVi_MaHocVi", "dbo.HocVis");
            DropForeignKey("dbo.PhieuKhams", "BenhNhan_MaBN", "dbo.BenhNhans");
            DropForeignKey("dbo.PhieuKhamBenhs", "Benh_MaBenh", "dbo.Benhs");
            DropIndex("dbo.PhieuKhamThuocs", new[] { "Thuoc_MaThuoc" });
            DropIndex("dbo.PhieuKhamThuocs", new[] { "MaPK" });
            DropIndex("dbo.Phongs", new[] { "Khoa_MaKhoa" });
            DropIndex("dbo.NhanViens", new[] { "MaHocVi_MaHocVi" });
            DropIndex("dbo.PhanCongs", new[] { "YTa_MaNV" });
            DropIndex("dbo.PhanCongs", new[] { "Khoa_MaKhoa" });
            DropIndex("dbo.PhanCongs", new[] { "BacSi_MaNV" });
            DropIndex("dbo.PhanCongs", new[] { "MaPhong" });
            DropIndex("dbo.PhieuKhams", new[] { "PhanCong_MaPC" });
            DropIndex("dbo.PhieuKhams", new[] { "BenhNhan_MaBN" });
            DropIndex("dbo.PhieuKhamBenhs", new[] { "Benh_MaBenh" });
            DropIndex("dbo.PhieuKhamBenhs", new[] { "MaPK" });
            DropTable("dbo.ThamSoes");
            DropTable("dbo.ChucVus");
            DropTable("dbo.Thuocs");
            DropTable("dbo.PhieuKhamThuocs");
            DropTable("dbo.Phongs");
            DropTable("dbo.Khoas");
            DropTable("dbo.HocVis");
            DropTable("dbo.NhanViens");
            DropTable("dbo.PhanCongs");
            DropTable("dbo.PhieuKhams");
            DropTable("dbo.PhieuKhamBenhs");
            DropTable("dbo.Benhs");
            DropTable("dbo.BenhNhans");
        }
    }
}
