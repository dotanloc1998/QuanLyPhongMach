using QuanLyPhongMach.CSDL;
using QuanLyPhongMach.DuLieuView;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace QuanLyPhongMach
{
    /// <summary>
    /// Interaction logic for GiaoDienPhieuKham.xaml
    /// </summary>
    public partial class GiaoDienPhieuKham : UserControl
    {
        private static List<ThuocView> dsThuoc = new List<ThuocView>();
        private static int tongTienThuoc = 0;
        public GiaoDienPhieuKham()
        {
            InitializeComponent();
            try
            {
                ImageSource imageSourceLogo = new BitmapImage(new Uri(@"C:\Users\thuyl\OneDrive\Education\Nam III\Cong nghe phan mem\QuanLyPhongMach\1920x1080_1479958960-ava-ituyensinh-320-180.JPG"));
                hinhGiaoDienPhieuKham.ImageSource = imageSourceLogo;
                
            }
            catch (Exception)
            {


            }
            MyEntity db = new MyEntity();
            dtPhieuKham.ItemsSource = db.TPhieuKhams.ToList();
            var thamSo = from thamSoNao in db.TThamSos
                         where thamSoNao.MaTS == "STK"
                         select thamSoNao;
            List<ThamSo> thamSos = thamSo.ToList();
            tbTienKham.Text = thamSos[0].GiaTri.ToString();

            cbBenh.ItemsSource = db.TBenhs.ToList();
            cbBenh.SelectedValuePath = "MaBenh";
            cbBenh.DisplayMemberPath = "TenBenh";

            DateTime ngayHienTai = DateTime.Now;
            var bacSi = from bacSiNao in db.TPhanCongs
                        where bacSiNao.NgayTruc.Day == ngayHienTai.Day && bacSiNao.NgayTruc.Month == ngayHienTai.Month && bacSiNao.NgayTruc.Year == ngayHienTai.Year
                        select bacSiNao;
            List<PhanCong> phanCongs = bacSi.ToList();

            //Tim cac bac si tu cac phan cong do 
            List<NhanVien> cacBacSi = new List<NhanVien>();
            foreach (var cacPhanCong in phanCongs)
            {
                var timBacSi = from bacSiNao in db.TNhanViens
                               where cacPhanCong.MaBacSi == bacSiNao.MaNV
                               select bacSiNao;
                List<NhanVien> bacSiTimDuoc = timBacSi.ToList();
                cacBacSi.Add(bacSiTimDuoc[0]);
            }
            cbBacSi.ItemsSource = cacBacSi;
            cbBacSi.SelectedValuePath = "MaNV";
            cbBacSi.DisplayMemberPath = "HoTenNV";

            int tongTienKham = int.Parse(tbTienThuoc.Text) + int.Parse(tbTienKham.Text);
            tbTong.Text = tongTienKham.ToString();
        }

        private void BtKeThuoc_Click(object sender, RoutedEventArgs e)
        {
            MyEntity db = new MyEntity();
            var phieuKham = from phieuKhamNao in db.TPhieuKhams
                            select phieuKhamNao;
            List<PhieuKham> phieuKhams = phieuKham.ToList();
            KeThuoc a = new KeThuoc(dsThuoc, tongTienThuoc, "PK" + phieuKhams.Count);
            a.ShowDialog();
            if (!a.IsActive)
            {
                if (a.IsDongY())
                {
                    dsThuoc = a.ReturnListThuoc();
                    dtThuocKe.ItemsSource = null;
                    dtThuocKe.ItemsSource = dsThuoc;
                    tongTienThuoc = a.ReturnTienThuoc();
                    tbTienThuoc.Text = tongTienThuoc.ToString();
                    int tongTienKham = int.Parse(tbTienThuoc.Text) + int.Parse(tbTienKham.Text);
                    tbTong.Text = tongTienKham.ToString();
                }
            }
        }

        private void btSuaPhieuKham_Click(object sender, RoutedEventArgs e)
        {
            SuaPhieuKham a = new SuaPhieuKham();
            a.ShowDialog();
        }

        private void CbBenh_DropDownClosed(object sender, EventArgs e)
        {
            Benh duocChon = (Benh)cbBenh.SelectedItem;
            tbTrieuChung.Text = duocChon.TrieuChung;
        }

        private void BtThemBenhNhan_Click(object sender, RoutedEventArgs e)
        {
            if (tbTenBenhNhan.Text != "" && tbDCBenhNhan.Text != "" && dpNgaySinh.Text != "" && cbBacSi.Text != "" && cbBenh.Text != "" && tbCMND.Text != "" && tbQueQuanBN.Text != "" && tbSDTBN.Text != "")
            {
                MyEntity db = new MyEntity();
                var thamSo = from thamSoNao in db.TThamSos
                             where thamSoNao.MaTS == "SLBN"
                             select thamSoNao;
                List<ThamSo> thamSos = thamSo.ToList();
                var phieuKhamHomNay = from phieuNao in db.TPhieuKhams
                                      where phieuNao.NgayKham.Day == DateTime.Now.Day && phieuNao.NgayKham.Month == DateTime.Now.Month && phieuNao.NgayKham.Year == DateTime.Now.Year
                                      select phieuNao;
                List<PhieuKham> soLuongPhieuKhams = phieuKhamHomNay.ToList();
                if (soLuongPhieuKhams.Count == thamSos[0].GiaTri)
                {
                    MessageBox.Show("Hôm nay đã đủ số bệnh nhân quy định!", "Có lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                else
                {
                    var benhNhan = from benhNhanNao in db.TBenhNhans
                                   select benhNhanNao;
                    List<BenhNhan> benhNhans = benhNhan.ToList();
                    bool gioiTinh = true;
                    if (rbnNu.IsChecked == true)
                    {
                        gioiTinh = false;
                    }
                    BenhNhan benhNhanMoi = new BenhNhan("BN" + benhNhans.Count, tbTenBenhNhan.Text, gioiTinh, DateTime.Parse(dpNgaySinh.Text), tbDCBenhNhan.Text, tbQueQuanBN.Text, tbSDTBN.Text, tbCMND.Text);
                    db.TBenhNhans.Add(benhNhanMoi);

                    //Tim cac phan cong ngay hom nay
                    DateTime ngayHienTai = DateTime.Now;
                    var bacSi = from bacSiNao in db.TPhanCongs
                                where bacSiNao.NgayTruc.Day == ngayHienTai.Day && bacSiNao.NgayTruc.Month == ngayHienTai.Month && bacSiNao.NgayTruc.Year == ngayHienTai.Year
                                select bacSiNao;
                    List<PhanCong> phanCongs = bacSi.ToList();
                    //Dang chon Bac Si Nao 
                    NhanVien bacSiChon = (NhanVien)cbBacSi.SelectedItem;
                    string maPhanCong = "";
                    foreach (var item in phanCongs)
                    {
                        if (item.MaBacSi == bacSiChon.MaNV)
                        {
                            maPhanCong = item.MaPC;
                        }
                    }
                    var phieuKham = from phieuKhamNao in db.TPhieuKhams
                                    select phieuKhamNao;
                    List<PhieuKham> phieuKhams = phieuKham.ToList();
                    PhieuKham phieuKhamMoi = new PhieuKham("PK" + phieuKhams.Count, benhNhanMoi.MaBN, maPhanCong, DateTime.Now, int.Parse(tbTienKham.Text), int.Parse(tbTienThuoc.Text));
                    db.TPhieuKhams.Add(phieuKhamMoi);
                    db.SaveChanges();
                    dtPhieuKham.ItemsSource = null;
                    dtPhieuKham.ItemsSource = db.TPhieuKhams.ToList();
                    tbTenBenhNhan.Text = ""; tbDCBenhNhan.Text = ""; dpNgaySinh.Text = ""; cbBacSi.Text = ""; cbBenh.Text = ""; tbCMND.Text = ""; tbQueQuanBN.Text = ""; tbSDTBN.Text = "";
                    dtThuocKe.ItemsSource = null;
                    dsThuoc.Clear();
                    tbTienThuoc.Text = "0";
                    tbTong.Text = Convert.ToString(int.Parse(tbTienThuoc.Text) + int.Parse(tbTienKham.Text));
                    MessageBox.Show("Thêm mới thành công!", "Thành công", MessageBoxButton.OK, MessageBoxImage.Information);
                }
            }
            else
            {
                MessageBox.Show("Nhớ nhập hết đừng để trống ô nào nhé!", "Có lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void TbTienThuoc_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void BtXoaBenhNhan_Click(object sender, RoutedEventArgs e)
        {
            MyEntity db = new MyEntity();
            List<PhieuKham> danhSachPhieuKhamXoa = dtPhieuKham.SelectedItems.Cast<PhieuKham>().ToList();
            if (danhSachPhieuKhamXoa.Count == 0)
            {
                MessageBox.Show("Bạn phải chọn phiếu khám để xóa!", "Lỗi!", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            else
            {
                if (MessageBox.Show("Bạn chắc chắn muốn xóa phiếu khám đã chọn?", "Thông báo!!!", MessageBoxButton.OKCancel, MessageBoxImage.Question) == MessageBoxResult.OK)
                {
                    foreach (var item in danhSachPhieuKhamXoa)
                    {
                        var phieuKham = from phieuNao in db.TPhieuKhams
                                        where phieuNao.MaPK == item.MaPK
                                        select phieuNao;
                        List<PhieuKham> timDuoc = phieuKham.ToList();
                        db.TPhieuKhams.Attach(timDuoc[0]);
                        db.TPhieuKhams.Remove(timDuoc[0]);
                    }
                    db.SaveChanges();
                    dtPhieuKham.ItemsSource = null;
                    dtPhieuKham.ItemsSource = db.TPhieuKhams.ToList();
                    dtPhieuKham.UnselectAll();
                }
            }
        }

        private void BtXoaThuoc_Click(object sender, RoutedEventArgs e)
        {
            List<ThuocView> danhSachThuocViewXoa = dtThuocKe.SelectedItems.Cast<ThuocView>().ToList();
            if (danhSachThuocViewXoa.Count == 0)
            {
                MessageBox.Show("Bạn phải chọn thuốc để xóa!", "Lỗi!", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            else
            {
                if (MessageBox.Show("Bạn chắc chắn muốn xóa thuốc đã chọn?", "Thông báo!!!", MessageBoxButton.OKCancel, MessageBoxImage.Question) == MessageBoxResult.OK)
                {
                    foreach (var item in danhSachThuocViewXoa)
                    {
                        dsThuoc.Remove(item);
                        tongTienThuoc -= item.Gia;
                    }

                    dtThuocKe.ItemsSource = null;
                    dtThuocKe.ItemsSource = dsThuoc;
                    tbTienThuoc.Text = tongTienThuoc.ToString();
                    int tongTienKham = int.Parse(tbTienThuoc.Text) + int.Parse(tbTienKham.Text);
                    tbTong.Text = tongTienKham.ToString();
                    dtThuocKe.UnselectAll();
                }
            }
        }
    }
}
