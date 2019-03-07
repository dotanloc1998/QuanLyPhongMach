using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace QuanLyPhongMach
{
    /// <summary>
    /// Interaction logic for CuaSoChinh.xaml
    /// </summary>
    public partial class CuaSoChinh : Window
    {
        public CuaSoChinh()
        {
            InitializeComponent();
            GridThongTin.Children.Clear();
            GiaoDienNhanVien a = new GiaoDienNhanVien();
            GridThongTin.Children.Add(a);
            try
            {
                ImageSource imageSourceLogo = new BitmapImage(new Uri(@"C:\Users\thuyl\OneDrive\Education\Nam III\Cong nghe phan mem\QuanLyPhongMach\item-s12509-1453434523206.JPG"));
                hinh2.ImageSource = imageSourceLogo;
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

        private void btPhongTo_Click(object sender, RoutedEventArgs e)
        {
            if (Left != 0 && Top != 0)
            {
                Height = SystemParameters.MaximizedPrimaryScreenHeight;
                Width = SystemParameters.MaximizedPrimaryScreenWidth;
                Left = 0;
                Top = 0;
            }
            else
            {
                WindowState = WindowState.Normal;
                Height = 770; Width = 1050;
                double screenWidth = SystemParameters.PrimaryScreenWidth;
                double screenHeight = SystemParameters.PrimaryScreenHeight;
                double windowWidth = Width;
                double windowHeight = Height;
                Left = (screenWidth / 2) - (windowWidth / 2);
                Top = (screenHeight / 2) - (windowHeight / 2);
            }

        }

        private void btThuNho_Click(object sender, RoutedEventArgs e)
        {
            WindowState = WindowState.Minimized;
        }
        private void TitleBar_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {

            if (e.ClickCount == 2)
            {
                if (Left != 0 && Top != 0)
                {
                    Height = SystemParameters.MaximizedPrimaryScreenHeight;
                    Width = SystemParameters.MaximizedPrimaryScreenWidth;
                    Left = 0;
                    Top = 0;
                }
                else
                {
                    WindowState = WindowState.Normal;
                    Height = 770; Width = 1050;
                    double screenWidth = SystemParameters.PrimaryScreenWidth;
                    double screenHeight = SystemParameters.PrimaryScreenHeight;
                    double windowWidth = Width;
                    double windowHeight = Height;
                    Left = (screenWidth / 2) - (windowWidth / 2);
                    Top = (screenHeight / 2) - (windowHeight / 2);
                }

            }
            else
            {
                if (Left == 0 && Top == 0)
                {
                    WindowState = WindowState.Normal;
                    Height = 770; Width = 1050;
                    double screenWidth = SystemParameters.PrimaryScreenWidth;
                    double screenHeight = SystemParameters.PrimaryScreenHeight;
                    double windowWidth = Width;
                    double windowHeight = Height;
                    Left = (screenWidth / 2) - (windowWidth / 2);
                    Top = (screenHeight / 2) - (windowHeight / 2);
                    DragMove();
                }
                else
                {
                    WindowState = WindowState.Normal;
                    Height = 770; Width = 1050;
                    DragMove();
                }
            }
        }


        private void Grid_MouseLeave(object sender, MouseEventArgs e)
        {

            ButtonClose.RaiseEvent(new RoutedEventArgs(ButtonBase.ClickEvent));

        }


        private void ButtonClose_Click(object sender, RoutedEventArgs e)
        {
            GridThongTin.IsEnabled = true;
        }

        private void ButtonOpen_Click(object sender, RoutedEventArgs e)
        {

            GridThongTin.IsEnabled = false;
        }

        private void btThuNho_MouseEnter(object sender, MouseEventArgs e)
        {
            btThuNho.Background = Brushes.LightGray;
        }

        private void btThuNho_MouseLeave(object sender, MouseEventArgs e)
        {
            btThuNho.Background = Brushes.Black;
        }

        private void btPhongTo_MouseEnter(object sender, MouseEventArgs e)
        {
            btPhongTo.Background = Brushes.LightGray;
        }

        private void btPhongTo_MouseLeave(object sender, MouseEventArgs e)
        {
            btPhongTo.Background = Brushes.Black;
        }

        private void btDong_MouseEnter(object sender, MouseEventArgs e)
        {
            btDong.Background = Brushes.DarkRed;
        }

        private void btDong_MouseLeave(object sender, MouseEventArgs e)
        {
            btDong.Background = Brushes.Black;
        }

        private void btDangXuat_Click(object sender, RoutedEventArgs e)
        {
            if (MessageBox.Show("Đồng ý đăng xuất?", "Thông báo!!!", MessageBoxButton.YesNo, MessageBoxImage.Question, MessageBoxResult.Yes) == MessageBoxResult.Yes)
            {
                MainWindow a = new MainWindow();
                Close();
                a.ShowDialog();
            }
        }

        private void btNhanVien_Click(object sender, RoutedEventArgs e)
        {
            GiaoDienNhanVien a = new GiaoDienNhanVien();
            GridThongTin.Children.Clear();
            GridThongTin.Children.Add(a);
            tbForChange.Text = "Nhân viên";
        }

        private void BtPhieuKham_Click(object sender, RoutedEventArgs e)
        {
            GiaoDienPhieuKham a = new GiaoDienPhieuKham();
            GridThongTin.Children.Clear();
            GridThongTin.Children.Add(a);
            tbForChange.Text = "Phiếu khám";
        }

        private void BtPhanCong_Click(object sender, RoutedEventArgs e)
        {
            GiaoDienPhanCong a = new GiaoDienPhanCong();
            GridThongTin.Children.Clear();
            GridThongTin.Children.Add(a);
        }

        private void BtThuoc_Click(object sender, RoutedEventArgs e)
        {
            GiaoDienThuoc a = new GiaoDienThuoc();
            GridThongTin.Children.Clear();
            GridThongTin.Children.Add(a);
        }

        private void BtDoanhThu_Click(object sender, RoutedEventArgs e)
        {
            GiaoDienDoanhThu a = new GiaoDienDoanhThu();
            GridThongTin.Children.Clear();
            GridThongTin.Children.Add(a);
        }

        private void BtAdmin_Click(object sender, RoutedEventArgs e)
        {
            GiaoDienAdmin a = new GiaoDienAdmin();
            GridThongTin.Children.Clear();
            GridThongTin.Children.Add(a);
        }
    }
}
