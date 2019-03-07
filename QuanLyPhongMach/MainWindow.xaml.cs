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
using QuanLyPhongMach.CSDL;

namespace QuanLyPhongMach
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            try
            {
                ImageSource imageSourceLogo = new BitmapImage(new Uri(@"C:\Users\thuyl\OneDrive\Education\Nam III\Cong nghe phan mem\QuanLyPhongMach\1920x1080_1479958960-ava-ituyensinh-320-180.JPG"));
                hinh1DangNhap.ImageSource = imageSourceLogo;
                
            }
            catch (Exception)
            {


            }
        }

        private void BtDangKy_OnClick(object sender, RoutedEventArgs e)
        {
            DangKyTaiKhoan a = new DangKyTaiKhoan();
            a.ShowDialog();
        }

        private void btDongY_Click(object sender, RoutedEventArgs e)
        {
            CuaSoChinh a = new CuaSoChinh();
            Close();
            a.ShowDialog();
        }

        private void btQuenMatKhau_Click(object sender, RoutedEventArgs e)
        {
            QuenMatKhau a = new QuenMatKhau();
            a.ShowDialog();
        }
        private void TitleBar_OnMouseDown(object sender, MouseButtonEventArgs e)
        {

            Application.Current.MainWindow.DragMove();
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



    }
}
