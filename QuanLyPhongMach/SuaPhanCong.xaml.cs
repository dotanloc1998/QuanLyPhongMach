using QuanLyPhongMach.CSDL;
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
using System.Windows.Shapes;

namespace QuanLyPhongMach
{
    /// <summary>
    /// Interaction logic for SuaPhanCong.xaml
    /// </summary>
    public partial class SuaPhanCong : Window
    {
        private PhanCong b = new PhanCong();
        public SuaPhanCong(PhanCong a)
        {
            InitializeComponent();
            try
            {
                ImageSource imageSourceLogo = new BitmapImage(new Uri(@"C:\Users\thuyl\OneDrive\Education\Nam III\Cong nghe phan mem\QuanLyPhongMach\1920x1080_1479958960-ava-ituyensinh-320-180.JPG"));
                hinhSuaPhieuKham.ImageSource = imageSourceLogo;
                hinhSuaPhieuKham.Opacity = 0.3;
            }
            catch (Exception)
            {


            }
            b = a;
            MyEntity db = new MyEntity();
            cbKhoa.ItemsSource = db.TKhoas.ToList();
            cbKhoa.SelectedValuePath = "MaKhoa";
            cbKhoa.DisplayMemberPath = "TenKhoa";
            

            var bacSi = from bacSiNao in db.TNhanViens
                        where bacSiNao.MaNV.Substring(0, 2) == "BS"
                        select bacSiNao;
            List<NhanVien> cacBacSi = bacSi.ToList();
            cbBacSi.ItemsSource = cacBacSi;
            cbBacSi.SelectedValuePath = "MaNV";
            cbBacSi.DisplayMemberPath = "HoTenNV";
            var yTa = from yTaNao in db.TNhanViens
                      where yTaNao.MaNV.Substring(0, 2) == "YT"
                      select yTaNao;
            List<NhanVien> cacYTa = yTa.ToList();
            cbYta.ItemsSource = cacYTa;
            cbYta.SelectedValuePath = "MaNV";
            cbYta.DisplayMemberPath = "HoTenNV";

            dpNgayTruc.Text = a.NgayTruc.ToString();

            //Tim Khoa tu MaKhoa
            var khoa = from khoaNao in db.TKhoas
                       where khoaNao.MaKhoa.ToString() == a.MaKhoa
                       select khoaNao;
            List<Khoa> khoaTimDuoc = khoa.ToList();
            cbKhoa.SelectedItem = khoaTimDuoc[0];
            //Tim Phong tu MaPhong
            string maKhoa = khoaTimDuoc[0].MaKhoa.ToString();
            var timTenPhong = from phongNao in db.TPhongs
                              where phongNao.MaKhoa == maKhoa
                              select phongNao;
            List<Phong> dsPhongCuaKhoa = timTenPhong.ToList();
            cbPhong.ItemsSource = dsPhongCuaKhoa;
            cbPhong.SelectedValuePath = "MaKhoa";
            cbPhong.DisplayMemberPath = "MaPhong";
            var phong = from phongNao in db.TPhongs
                        where phongNao.MaPhong == a.MaPhong
                        select phongNao;
            List<Phong> phongTimDuoc = phong.ToList();
            cbPhong.SelectedItem = phongTimDuoc[0];
            //Tim Bac si tu MaBS
            bacSi = from bacSiNao in db.TNhanViens
                    where bacSiNao.MaNV == a.MaBacSi
                    select bacSiNao;
            List<NhanVien> bacSiTimDuoc = bacSi.ToList();
            cbBacSi.SelectedItem = bacSiTimDuoc[0];
            //Tim Y ta tu Ma y ta
            yTa = from yTaNao in db.TNhanViens
                  where yTaNao.MaNV == a.MaYTa
                  select yTaNao;
            List<NhanVien> yTaTimDuoc = yTa.ToList();
            cbYta.SelectedItem = yTaTimDuoc[0];
        }
        private void btDong_Click(object sender, RoutedEventArgs e)
        {
            if (MessageBox.Show("Bạn thực sự muốn thoát ?", "Thông báo", MessageBoxButton.OKCancel, MessageBoxImage.Warning, MessageBoxResult.OK) == MessageBoxResult.OK)
            {
                Close();
            }
        }
        private void btThuNho_Click(object sender, RoutedEventArgs e)
        {
            WindowState = WindowState.Minimized;
        }
        private void TitleBar_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            WindowState = WindowState.Normal;
            DragMove();
        }

        private void btThuNho_MouseEnter(object sender, MouseEventArgs e)
        {
            btThuNho.Background = Brushes.LightGray;
        }

        private void btThuNho_MouseLeave(object sender, MouseEventArgs e)
        {
            btThuNho.Background = Brushes.Black;
        }

        private void btDong_MouseEnter(object sender, MouseEventArgs e)
        {
            btDong.Background = Brushes.DarkRed;
        }

        private void btDong_MouseLeave(object sender, MouseEventArgs e)
        {
            btDong.Background = Brushes.Black;
        }

        private void BtHuy_Click(object sender, RoutedEventArgs e)
        {
            if (MessageBox.Show("Bạn thực sự muốn thoát ?", "Thông báo", MessageBoxButton.OKCancel, MessageBoxImage.Warning, MessageBoxResult.OK) == MessageBoxResult.OK)
            {
                Close();
            }
        }

        private void CbKhoa_DropDownClosed(object sender, EventArgs e)
        {
            if (cbKhoa.Text != "")
            {
                MyEntity db = new MyEntity();
                var timTen = from tenNao in db.TKhoas
                             where tenNao.TenKhoa == cbKhoa.Text
                             select tenNao;
                List<Khoa> dsKhoa = timTen.ToList();
                string maKhoaTimDuoc = dsKhoa[0].MaKhoa.ToString();

                var timTenPhong = from phongNao in db.TPhongs
                                  where phongNao.MaKhoa == maKhoaTimDuoc
                                  select phongNao;
                List<Phong> dsPhongCuaKhoa = timTenPhong.ToList();

                cbPhong.ItemsSource = dsPhongCuaKhoa;
                cbPhong.SelectedValuePath = "MaKhoa";
                cbPhong.DisplayMemberPath = "MaPhong";
            }
        }

        private void BtDongY_Click(object sender, RoutedEventArgs e)
        {
            if (dpNgayTruc.Text != "" && cbKhoa.Text != "" && cbBacSi.Text != "" && cbPhong.Text != "" && cbYta.Text != "")
            {

                Khoa khoaComboBox = (Khoa)cbKhoa.SelectedItem;
                Phong phongComboBox = (Phong)cbPhong.SelectedItem;
                NhanVien bacSiComboBox = (NhanVien)cbBacSi.SelectedItem;
                NhanVien yTaComboBox = (NhanVien)cbYta.SelectedItem;

                MyEntity db = new MyEntity();
                var phanCong = from phanCongNao in db.TPhanCongs
                               where phanCongNao.MaPC == b.MaPC
                               select phanCongNao;
                List<PhanCong> phanCongs = phanCong.ToList();

                PhanCong phanCongMoi = new PhanCong(phanCongs[0].MaPC, bacSiComboBox.MaNV, phongComboBox.MaPhong, khoaComboBox.MaKhoa.ToString(), yTaComboBox.MaNV, DateTime.Parse(dpNgayTruc.Text));
                db.TPhanCongs.Attach(phanCongs[0]);
                db.TPhanCongs.Remove(phanCongs[0]);
                db.TPhanCongs.Add(phanCongMoi);
                db.SaveChanges();
                MessageBox.Show("Sửa thành công!", "Thành công", MessageBoxButton.OK, MessageBoxImage.Information);
                Close();
            }
            else
            {
                MessageBox.Show("Nhớ nhập hết đừng để trống ô nào nhé!", "Có lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}
