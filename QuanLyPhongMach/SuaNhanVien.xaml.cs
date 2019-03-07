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
using QuanLyPhongMach.CSDL;

namespace QuanLyPhongMach
{
    /// <summary>
    /// Interaction logic for SuaNhanVien.xaml
    /// </summary>
    public partial class SuaNhanVien : Window
    {
        private NhanVien b = new NhanVien();

        public SuaNhanVien(NhanVien a)
        {
            InitializeComponent();
            try
            {
                ImageSource imageSourceLogo = new BitmapImage(new Uri(@"C:\Users\thuyl\OneDrive\Education\Nam III\Cong nghe phan mem\QuanLyPhongMach\1920x1080_1479958960-ava-ituyensinh-320-180.JPG"));
                hinhSuaNhanVien.ImageSource = imageSourceLogo;
                hinhSuaNhanVien.Opacity = 0.3;
            }
            catch (Exception)
            {


            }
            b = a;
            MyEntity db = new MyEntity();
            cbHocVi.ItemsSource = db.THocVis.ToList();
            cbHocVi.SelectedValuePath = "MaHocVi";
            cbHocVi.DisplayMemberPath = "TenHocVi";
            tbHoTen.Text = a.HoTenNV;
            tbSDT.Text = a.SDTNV;
            tbDiaChi.Text = a.DiaChiNV;
            tbQueQuan.Text = a.QueQuanNV;
            dpNgaySinh.Text = a.NamSinhNV.ToString();
            tbCMND.Text = a.CMNDNV;

            if (a.GioiTinhNV)
            {
                rbnNam.IsChecked = true;
            }
            else
            {
                rbnNu.IsChecked = true;
            }

            
            var hocVi = from cacHocVi in db.THocVis
                        where cacHocVi.MaHocVi == a.MaHocViNV
                        select cacHocVi;
            List<HocVi> hocVis = hocVi.ToList();
            cbHocVi.Text = hocVis[0].TenHocVi;

            if (a.MaNV.Substring(0, 2) == "BS")
            {
                cbChucVu.Text = "Bác sĩ";
            }
            else
            {
                cbChucVu.Text = "Y tá";

            }

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

        private void BtDongY_Click(object sender, RoutedEventArgs e)
        {
            if (tbHoTen.Text != "" && tbSDT.Text != "" && tbDiaChi.Text != "" && tbQueQuan.Text != "" &&
                dpNgaySinh.Text != "" && cbHocVi.Text != "" && tbCMND.Text != "" && cbChucVu.Text != "")
            {
                MyEntity db = new MyEntity();
                bool gioiTinh = true;
                if (rbnNu.IsChecked == true)
                {
                    gioiTinh = false;
                }

                var hocVi = from tenHocVi in db.THocVis
                            where cbHocVi.Text == tenHocVi.TenHocVi
                            select tenHocVi;
                List<HocVi> hocVis = hocVi.ToList();

                var nhanVien = from nhanVienNao in db.TNhanViens
                               where b.MaNV == nhanVienNao.MaNV
                               select nhanVienNao;
                List<NhanVien> nhanVienCanSua = nhanVien.ToList();

                NhanVien nhanVienMoi = new NhanVien(nhanVienCanSua[0].MaNV, hocVis[0].MaHocVi, tbHoTen.Text, gioiTinh, DateTime.Parse(dpNgaySinh.Text), tbDiaChi.Text, tbQueQuan.Text, tbSDT.Text, tbCMND.Text);
                db.TNhanViens.Attach(nhanVienCanSua[0]);
                db.TNhanViens.Remove(nhanVienCanSua[0]);
                db.TNhanViens.Add(nhanVienMoi);
                db.SaveChanges();
                Close();

                MessageBox.Show("Sửa thành công!", "Thành công", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            else
            {
                MessageBox.Show("Nhớ nhập hết đừng để trống ô nào nhé!", "Có lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

    }
}
