using QuanLyPhongMach.CSDL;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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
using System.Configuration;
using System.Data;

namespace QuanLyPhongMach
{
    /// <summary>
    /// Interaction logic for GiaoDienPhanCong.xaml
    /// </summary>
    public partial class GiaoDienPhanCong : UserControl
    {
        public GiaoDienPhanCong()
        {
            InitializeComponent();
            try
            {
                ImageSource imageSourceLogo = new BitmapImage(new Uri(@"C:\Users\thuyl\OneDrive\Education\Nam III\Cong nghe phan mem\QuanLyPhongMach\1920x1080_1479958960-ava-ituyensinh-320-180.JPG"));
                hinhGiaoDienPhanCong.ImageSource = imageSourceLogo;
                
            }
            catch (Exception)
            {


            }
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

            dtPhanCong.ItemsSource = db.TPhanCongs.ToList();
        }
        private void BtSuaPhanCong_Click(object sender, RoutedEventArgs e)
        {
            List<PhanCong> danhSachPhanCongSua = dtPhanCong.SelectedItems.Cast<PhanCong>().ToList();
            if (danhSachPhanCongSua.Count > 1)
            {
                MessageBox.Show("Bạn chỉ được chọn 1 phân công để sửa!", "Lỗi!", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            else if (danhSachPhanCongSua.Count == 0)
            {
                MessageBox.Show("Bạn phải chọn phân công để sửa!", "Lỗi!", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            else
            {
                if (MessageBox.Show("Bạn chắc chắn muốn sửa phân công đã chọn?", "Thông báo!!!",
                        MessageBoxButton.OKCancel, MessageBoxImage.Question) == MessageBoxResult.OK)
                {
                    SuaPhanCong a = new SuaPhanCong(danhSachPhanCongSua[0]);
                    a.ShowDialog();
                    if (!a.IsActive)
                    {
                        MyEntity db = new MyEntity();
                        dtPhanCong.ItemsSource = db.TPhanCongs.ToList();
                        dtPhanCong.UnselectAll();
                    }
                }
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

        private void BtThemPhanCong_Click(object sender, RoutedEventArgs e)
        {
            if (dpNgayTruc.Text != "" && cbKhoa.Text != "" && cbBacSi.Text != "" && cbPhong.Text != "" && cbYta.Text != "")
            {

                Khoa khoaComboBox = (Khoa)cbKhoa.SelectedItem;
                Phong phongComboBox = (Phong)cbPhong.SelectedItem;
                NhanVien bacSiComboBox = (NhanVien)cbBacSi.SelectedItem;
                NhanVien yTaComboBox = (NhanVien)cbYta.SelectedItem;

                MyEntity db = new MyEntity();
                var phanCong = from phanCongNao in db.TPhanCongs
                               select phanCongNao;
                List<PhanCong> phanCongs = phanCong.ToList();

                PhanCong phanCongMoi = new PhanCong("PC" + phanCongs.Count, bacSiComboBox.MaNV, phongComboBox.MaPhong, khoaComboBox.MaKhoa.ToString(), yTaComboBox.MaNV, DateTime.Parse(dpNgayTruc.Text));
                db.TPhanCongs.Add(phanCongMoi);
                db.SaveChanges();
                dtPhanCong.ItemsSource = db.TPhanCongs.ToList();

                dpNgayTruc.Text = "";
                cbKhoa.Text = "";
                cbBacSi.Text = "";
                cbPhong.Text = "";
                cbYta.Text = "";
                MessageBox.Show("Thêm mới thành công!", "Thành công", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            else
            {
                MessageBox.Show("Nhớ nhập hết đừng để trống ô nào nhé!", "Có lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void BtXoaPhanCong_Click(object sender, RoutedEventArgs e)
        {
            MyEntity db = new MyEntity();
            List<PhanCong> danhSachPhanCongXoa = dtPhanCong.SelectedItems.Cast<PhanCong>().ToList();
            if (danhSachPhanCongXoa.Count == 0)
            {
                MessageBox.Show("Bạn phải chọn phân công để xóa!", "Lỗi!", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            else
            {
                if (MessageBox.Show("Bạn chắc chắn muốn xóa các phân công đã chọn?", "Thông báo!!!", MessageBoxButton.OKCancel, MessageBoxImage.Question) == MessageBoxResult.OK)
                {
                    foreach (var VARIABLE in danhSachPhanCongXoa)
                    {
                        db.TPhanCongs.Attach(VARIABLE);
                        db.TPhanCongs.Remove(VARIABLE);
                    }
                    db.SaveChanges();
                    dtPhanCong.ItemsSource = db.TPhanCongs.ToList();
                    dtPhanCong.UnselectAll();
                }
            }
        }
    }
}
