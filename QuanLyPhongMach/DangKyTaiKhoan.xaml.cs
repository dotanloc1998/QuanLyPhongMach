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
    /// Interaction logic for DangKyTaiKhoan.xaml
    /// </summary>
    public partial class DangKyTaiKhoan : Window
    {
        public DangKyTaiKhoan()
        {
            InitializeComponent();
            MyEntity db = new MyEntity();
            cbHocVi.ItemsSource = db.THocVis.ToList();
            cbHocVi.SelectedValuePath = "MaHocVi";
            cbHocVi.DisplayMemberPath = "TenHocVi";
            try
            {
                ImageSource imageSourceLogo = new BitmapImage(new Uri(@"C:\Users\thuyl\OneDrive\Education\Nam III\Cong nghe phan mem\QuanLyPhongMach\logo.PNG"));
                hinhLogo.Source = imageSourceLogo;
               
                
            }
            catch (Exception)
            {


            }
            try
            {
                ImageSource imageSourceLogo = new BitmapImage(new Uri(@"C:\Users\thuyl\OneDrive\Education\Nam III\Cong nghe phan mem\QuanLyPhongMach\1920x1080_1479958960-ava-ituyensinh-320-180.JPG"));
                hinh1DangKy.ImageSource = imageSourceLogo;
            }
            catch (Exception)
            {

               
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

        //Họ
        private void txtHoTenNV_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (txtHoTenNV.Text == "" && txtHoTenNV.IsFocused == false)
            {
                txtHoTenNV.Text = "Không được để trống.";
                txtHoTenNV.Foreground = Brushes.Red;
            }
        }

        private void txtHoTenNV_LostFocus(object sender, RoutedEventArgs e)
        {
            if (txtHoTenNV.Text == "" || txtHoTenNV.Text == "Không được để trống.")
            {
                txtHoTenNV.Foreground = Brushes.Red;
                txtHoTenNV.Text = "Không được để trống.";
            }
        }

        private void txtHoTenNV_GotFocus(object sender, RoutedEventArgs e)
        {
            if (txtHoTenNV.Text == "Không được để trống.")
            {
                txtHoTenNV.Text = "";
                txtHoTenNV.Foreground = Brushes.Black;
            }
        }

        //SĐT
        private void txtSDTNV_GotFocus(object sender, RoutedEventArgs e)
        {
            if (txtSDTNV.Text == "Không được để trống.")
            {
                txtSDTNV.Text = "";
                txtSDTNV.Foreground = Brushes.Black;
            }
        }

        private void txtSDTNV_LostFocus(object sender, RoutedEventArgs e)
        {
            if (txtSDTNV.Text == "" || txtSDTNV.Text == "Không được để trống.")
            {
                txtSDTNV.Foreground = Brushes.Red;
                txtSDTNV.Text = "Không được để trống.";
            }
        }

        private void txtSDTNV_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (txtSDTNV.Text == "" && txtSDTNV.IsFocused == false)
            {
                txtSDTNV.Text = "Không được để trống.";
                txtSDTNV.Foreground = Brushes.Red;
            }
        }

        //Địa chỉ
        private void txtDCNV_GotFocus(object sender, RoutedEventArgs e)
        {
            if (txtDCNV.Text == "Không được để trống.")
            {
                txtDCNV.Text = "";
                txtDCNV.Foreground = Brushes.Black;
            }
        }

        private void txtDCNV_LostFocus(object sender, RoutedEventArgs e)
        {
            if (txtDCNV.Text == "" || txtDCNV.Text == "Không được để trống.")
            {
                txtDCNV.Foreground = Brushes.Red;
                txtDCNV.Text = "Không được để trống.";
            }
        }

        private void txtDCNV_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (txtDCNV.Text == "" && txtDCNV.IsFocused == false)
            {
                txtDCNV.Text = "Không được để trống.";
                txtDCNV.Foreground = Brushes.Red;
            }
        }

        //Quê quán
        private void txtQueQuanNV_GotFocus(object sender, RoutedEventArgs e)
        {
            if (txtQueQuanNV.Text == "Không được để trống.")
            {
                txtQueQuanNV.Text = "";
                txtQueQuanNV.Foreground = Brushes.Black;
            }
        }

        private void txtQueQuanNV_LostFocus(object sender, RoutedEventArgs e)
        {
            if (txtQueQuanNV.Text == "" || txtQueQuanNV.Text == "Không được để trống.")
            {
                txtQueQuanNV.Foreground = Brushes.Red;
                txtQueQuanNV.Text = "Không được để trống.";
            }
        }

        private void txtQueQuanNV_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (txtQueQuanNV.Text == "" && txtQueQuanNV.IsFocused == false)
            {
                txtQueQuanNV.Text = "Không được để trống.";
                txtQueQuanNV.Foreground = Brushes.Red;
            }
        }

        //Ngày sinh
        private void dpNgaySinhNV_GotFocus(object sender, RoutedEventArgs e)
        {
            if (dpNgaySinhNV.Text == "")
            {
                dpNgaySinhNV.Text = "";
                dpNgaySinhNV.Foreground = Brushes.Black;
            }
        }

        private void dpNgaySinhNV_LostFocus(object sender, RoutedEventArgs e)
        {
            if (dpNgaySinhNV.Text == "")
            {
                dpNgaySinhNV.Foreground = Brushes.Red;
                dpNgaySinhNV.Text = "";
            }
        }

        private void dpNgaySinhNV_TextInput(object sender, TextCompositionEventArgs e)
        {
            if (dpNgaySinhNV.Text == "" && dpNgaySinhNV.IsFocused == false)
            {
                dpNgaySinhNV.Foreground = Brushes.Red;
            }
        }



        private void btHuyBo_Click(object sender, RoutedEventArgs e)
        {
            if (MessageBox.Show("Bạn thực sự muốn thoát ?", "Thông báo", MessageBoxButton.OKCancel, MessageBoxImage.Warning, MessageBoxResult.OK) == MessageBoxResult.OK)
            {
                Close();
            }
        }

        private void TbCMND_OnGotFocus(object sender, RoutedEventArgs e)
        {
            if (tbCMND.Text == "Không được để trống.")
            {
                tbCMND.Text = "";
                tbCMND.Foreground = Brushes.Black;
            }
        }

        private void TbCMND_OnLostFocus(object sender, RoutedEventArgs e)
        {
            if (tbCMND.Text == "" || tbCMND.Text == "Không được để trống.")
            {
                tbCMND.Foreground = Brushes.Red;
                tbCMND.Text = "Không được để trống.";
            }
        }

        private void TbCMND_OnTextChanged(object sender, TextChangedEventArgs e)
        {
            if (tbCMND.Text == "" && tbCMND.IsFocused == false)
            {
                tbCMND.Text = "Không được để trống.";
                tbCMND.Foreground = Brushes.Red;
            }
        }

        private void BtChapNhan_Click(object sender, RoutedEventArgs e)
        {
            if (txtHoTenNV.Text != "" && txtSDTNV.Text != "" && txtDCNV.Text != "" && txtQueQuanNV.Text != "" && dpNgaySinhNV.Text != "" && cbHocVi.Text != "" && tbCMND.Text != "" && cbChucVu.Text != "")
            {
                MyEntity db = new MyEntity();
                bool gioiTinh = true;
                if (rbnNu.IsChecked == true)
                {
                    gioiTinh = false;
                }

                string chucVu = "";
                if (cbChucVu.Text == "Bác sĩ")
                {
                    chucVu = "BS";
                }
                else
                {
                    chucVu = "YT";
                }
                var hocVi = from tenHocVi in db.THocVis
                            where cbHocVi.Text == tenHocVi.TenHocVi
                            select tenHocVi;
                List<HocVi> hocVis = hocVi.ToList();
                var nhanVien = from cacNhanVien in db.TNhanViens
                               select cacNhanVien;
                List<NhanVien> nhanViens = nhanVien.ToList();
                string maNV = chucVu + nhanViens.Count;
                NhanVien nhanVienMoi = new NhanVien(maNV, hocVis[0].MaHocVi, txtHoTenNV.Text, gioiTinh, DateTime.Parse(dpNgaySinhNV.Text), txtDCNV.Text, txtQueQuanNV.Text, txtSDTNV.Text, tbCMND.Text);
                db.TNhanViens.Add(nhanVienMoi);
                db.SaveChanges();
                if (MessageBox.Show("Đăng ký thành công!", "Thành công", MessageBoxButton.OK, MessageBoxImage.Information,MessageBoxResult.OK)==MessageBoxResult.OK)
                {
                    Close();
                }
                
            }
            else
            {
                MessageBox.Show("Nhớ nhập hết đừng để trống ô nào nhé!", "Có lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}
