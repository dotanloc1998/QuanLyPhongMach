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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace QuanLyPhongMach
{
    /// <summary>
    /// Interaction logic for GiaoDienThuoc.xaml
    /// </summary>
    public partial class GiaoDienThuoc : UserControl
    {
        public GiaoDienThuoc()
        {
            InitializeComponent();
            try
            {
                ImageSource imageSourceLogo = new BitmapImage(new Uri(@"C:\Users\thuyl\OneDrive\Education\Nam III\Cong nghe phan mem\QuanLyPhongMach\1920x1080_1479958960-ava-ituyensinh-320-180.JPG"));
                hinhGiaoDienThuoc.ImageSource = imageSourceLogo;

            }
            catch (Exception)
            {


            }
            MyEntity db = new MyEntity();
            dtThongKeThuoc.ItemsSource = db.Thuocs.ToList();
            dtDanhSachThuoc.ItemsSource = db.Thuocs.ToList();
        }

        private void BtSuaThuoc_Click(object sender, RoutedEventArgs e)
        {
            List<Thuoc> danhSachThuocSua = dtDanhSachThuoc.SelectedItems.Cast<Thuoc>().ToList();
            if (danhSachThuocSua.Count > 1)
            {
                MessageBox.Show("Bạn chỉ được chọn 1 thuốc để sửa!", "Lỗi!", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            else if (danhSachThuocSua.Count == 0)
            {
                MessageBox.Show("Bạn phải chọn thuốc để sửa!", "Lỗi!", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            else
            {
                SuaThuoc a = new SuaThuoc(danhSachThuocSua[0]);
                a.ShowDialog();
                if (!a.IsActive)
                {
                    MyEntity db = new MyEntity();
                    dtDanhSachThuoc.ItemsSource = db.Thuocs.ToList();
                    dtDanhSachThuoc.UnselectAll();
                }
            }
        }

        private void BtThemThuoc_Click(object sender, RoutedEventArgs e)
        {
            if (tbTenThuoc.Text != "" && cbCachDung.Text != "" && cbDonVi.Text != "" && tbGia.Text != "")
            {

                MyEntity db = new MyEntity();
                var thuoc = from thuocNao in db.Thuocs
                            select thuocNao;
                List<Thuoc> soLuong = thuoc.ToList();
                var thamSo = from thamSoNao in db.TThamSos
                             where thamSoNao.MaTS == "SLT"
                             select thamSoNao;
                List<ThamSo> thamSos = thamSo.ToList();
                if (soLuong.Count == thamSos[0].GiaTri)
                {
                    MessageBox.Show("Số lượng thuốc đã đạt tối đa!", "Có lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                else
                {
                    Thuoc thuocMoi = new Thuoc(soLuong.Count, tbTenThuoc.Text, 100, cbCachDung.Text, cbDonVi.Text, int.Parse(tbGia.Text));
                    db.Thuocs.Add(thuocMoi);
                    db.SaveChanges();
                    dtThongKeThuoc.ItemsSource = db.Thuocs.ToList();
                    dtDanhSachThuoc.ItemsSource = db.Thuocs.ToList();
                    tbTenThuoc.Text = ""; cbCachDung.Text = ""; cbDonVi.Text = ""; tbGia.Text = "";
                }
            }
            else
            {
                MessageBox.Show("Nhớ nhập hết đừng để trống ô nào nhé!", "Có lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void BtXoaThuoc_Click(object sender, RoutedEventArgs e)
        {
            MyEntity db = new MyEntity();
            List<Thuoc> danhSachThuocXoa = dtDanhSachThuoc.SelectedItems.Cast<Thuoc>().ToList();
            if (danhSachThuocXoa.Count == 0)
            {
                MessageBox.Show("Bạn phải chọn thuốc để xóa!", "Lỗi!", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            else
            {
                if (MessageBox.Show("Bạn chắc chắn muốn xóa các thuốc đã chọn?", "Thông báo!!!", MessageBoxButton.OKCancel, MessageBoxImage.Question) == MessageBoxResult.OK)
                {
                    foreach (var item in danhSachThuocXoa)
                    {
                        db.Thuocs.Attach(item);
                        db.Thuocs.Remove(item);
                    }
                    db.SaveChanges();
                    dtDanhSachThuoc.ItemsSource = db.Thuocs.ToList();
                    dtDanhSachThuoc.UnselectAll();
                }
            }
        }

        
    }
}
