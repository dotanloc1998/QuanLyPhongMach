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
    /// Interaction logic for SuaThuoc.xaml
    /// </summary>
    public partial class SuaThuoc : Window
    {
        private Thuoc b = new Thuoc();
        public SuaThuoc(Thuoc a)
        {
            InitializeComponent();
            try
            {
                ImageSource imageSourceLogo = new BitmapImage(new Uri(@"C:\Users\thuyl\OneDrive\Education\Nam III\Cong nghe phan mem\QuanLyPhongMach\1920x1080_1479958960-ava-ituyensinh-320-180.JPG"));
                hinhSuaThuoc.ImageSource = imageSourceLogo;
                hinhSuaThuoc.Opacity = 0.3;
            }
            catch (Exception)
            {


            }
            b = a;
            tbTenThuoc.Text = a.TenThuoc;
            cbCachDung.Text = a.CachDung;
            cbDonVi.Text = a.DonVi;
            tbGia.Text = a.Gia.ToString();
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
            MyEntity db = new MyEntity();
            Thuoc thuocMoi = new Thuoc(b.MaThuoc, tbTenThuoc.Text, b.SoLuongTon, cbCachDung.Text, cbDonVi.Text, int.Parse(tbGia.Text));
            var thuoc = from thuocNao in db.Thuocs
                        where thuocNao.MaThuoc == b.MaThuoc
                        select thuocNao;
            List<Thuoc> thuocs = thuoc.ToList();
            db.Thuocs.Attach(thuocs[0]);
            db.Thuocs.Remove(thuocs[0]);
            db.Thuocs.Add(thuocMoi);
            db.SaveChanges();
            MessageBox.Show("Sửa thành công!", "Thành công", MessageBoxButton.OK, MessageBoxImage.Information);
            Close();
        }
    }
}
