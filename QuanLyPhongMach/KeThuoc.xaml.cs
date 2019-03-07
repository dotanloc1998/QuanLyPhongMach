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
using System.Windows.Shapes;

namespace QuanLyPhongMach
{
    /// <summary>
    /// Interaction logic for KeThuoc.xaml
    /// </summary>
    public partial class KeThuoc : Window
    {
        private int tongTienThuoc = 0;
        private List<ThuocView> dsThuoc = new List<ThuocView>();
        private string MaPK = "";
        private bool btDongYClick = false;
        public bool IsDongY()
        {
            return btDongYClick;
        }
        public KeThuoc(List<ThuocView> a, int tienThuoc, string mapk)
        {
            InitializeComponent();
            try
            {
                ImageSource imageSourceLogo = new BitmapImage(new Uri(@"C:\Users\thuyl\OneDrive\Education\Nam III\Cong nghe phan mem\QuanLyPhongMach\1920x1080_1479958960-ava-ituyensinh-320-180.JPG"));
                hinhKeThuoc.ImageSource = imageSourceLogo;
                hinhKeThuoc.Opacity = 0.3;
            }
            catch (Exception)
            {


            }
            MyEntity db = new MyEntity();
            cbThuoc.ItemsSource = db.Thuocs.ToList();
            cbThuoc.SelectedValuePath = "MaThuoc";
            cbThuoc.DisplayMemberPath = "TenThuoc";
            if (a.Count > 0)
            {
                dtKeThuoc.ItemsSource = a;
            }
            dsThuoc = a;
            tongTienThuoc = tienThuoc;
            MaPK = mapk;
        }
        public List<ThuocView> ReturnListThuoc()
        {
            return dsThuoc;
        }
        public int ReturnTienThuoc()
        {
            return tongTienThuoc;
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

        private void BtThemThuoc_Click(object sender, RoutedEventArgs e)
        {
            if (cbThuoc.Text != "" && dpSL.Text != "0")
            {
                MyEntity db = new MyEntity();
                Thuoc thuocChon = (Thuoc)cbThuoc.SelectedItem;
                ThuocView thuocMoi = new ThuocView(thuocChon.TenThuoc, int.Parse(dpSL.Text), thuocChon.DonVi, thuocChon.CachDung, int.Parse(dpSL.Text) * thuocChon.Gia);
                dsThuoc.Add(thuocMoi);
                tongTienThuoc += thuocMoi.Gia;

                //PhieuKhamThuoc phieuKhamThuocMoi = new PhieuKhamThuoc(MaPK, thuocChon.MaThuoc.ToString());
                //db.TPhieuKhamThuocs.Add(phieuKhamThuocMoi);
                //db.SaveChanges();
                dtKeThuoc.ItemsSource = null;
                dtKeThuoc.ItemsSource = dsThuoc;
            }
            else
            {
                MessageBox.Show("Nhớ chọn thuốc và số lượng lớn hơn 0!", "Có lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void BtDongY_Click(object sender, RoutedEventArgs e)
        {
            btDongYClick = true;
            Close();
            MessageBox.Show("Thêm thuốc thành công!", "Thông báo!", MessageBoxButton.OK, MessageBoxImage.Information);
        }

        private void CbThuoc_DropDownClosed(object sender, EventArgs e)
        {
            Thuoc thuocChon = (Thuoc)cbThuoc.SelectedItem;
            tbDonVi.Text = thuocChon.DonVi;
            tbCachDung.Text = thuocChon.CachDung;
        }
    }
}
