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
    /// Interaction logic for NhanVien.xaml
    /// </summary>
    public partial class GiaoDienNhanVien : UserControl
    {
        public GiaoDienNhanVien()
        {
            InitializeComponent();
            MyEntity db = new MyEntity();
            cbHocVi.ItemsSource = db.THocVis.ToList();
            cbHocVi.SelectedValuePath = "MaHocVi";
            cbHocVi.DisplayMemberPath = "TenHocVi";
            dtNhanVien.ItemsSource = db.TNhanViens.ToList();
            try
            {
                ImageSource imageSourceLogo = new BitmapImage(new Uri(@"C:\Users\thuyl\OneDrive\Education\Nam III\Cong nghe phan mem\QuanLyPhongMach\1920x1080_1479958960-ava-ituyensinh-320-180.JPG"));
                hinhGiaoDienNhanVien.ImageSource = imageSourceLogo;
            }
            catch (Exception)
            {


            }
        }

        private void BtSuaNhanVien_Click(object sender, RoutedEventArgs e)
        {
            List<NhanVien> danhSachNhanVienSua = dtNhanVien.SelectedItems.Cast<NhanVien>().ToList();
            if (danhSachNhanVienSua.Count > 1)
            {
                MessageBox.Show("Bạn chỉ được chọn 1 nhân viên để sửa!", "Lỗi!", MessageBoxButton.OK,MessageBoxImage.Error);
            }
            else if (danhSachNhanVienSua.Count == 0)
            {
                MessageBox.Show("Bạn phải chọn nhân viên để sửa!", "Lỗi!", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            else
            {
                if (MessageBox.Show("Bạn chắc chắn muốn sửa nhân viên đã chọn?", "Thông báo!!!",
                        MessageBoxButton.OKCancel, MessageBoxImage.Question) == MessageBoxResult.OK)
                {
                    SuaNhanVien a = new SuaNhanVien(danhSachNhanVienSua[0]);
                    a.ShowDialog();
                    if (!a.IsActive)
                    {
                        MyEntity db = new MyEntity();
                        dtNhanVien.ItemsSource = db.TNhanViens.ToList();
                        dtNhanVien.UnselectAll();
                    }
                    
                }
            }
            
        }

        private void BtThemNV_Click(object sender, RoutedEventArgs e)
        {
            if (tbHoTen.Text != "" && tbSDT.Text != "" && tbDiaChi.Text != "" && tbQueQuan.Text != "" && dpNgaySinh.Text != "" && cbHocVi.Text != "" && tbCMND.Text != "" && cbChucVu.Text != "")
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
                NhanVien nhanVienMoi = new NhanVien(maNV, hocVis[0].MaHocVi, tbHoTen.Text, gioiTinh, DateTime.Parse(dpNgaySinh.Text), tbDiaChi.Text, tbQueQuan.Text, tbSDT.Text, tbCMND.Text);
                db.TNhanViens.Add(nhanVienMoi);
                db.SaveChanges();
                dtNhanVien.ItemsSource = db.TNhanViens.ToList();
                tbHoTen.Text = "";
                tbSDT.Text = "";
                tbDiaChi.Text = "";
                tbQueQuan.Text = "";
                dpNgaySinh.Text = "";
                cbHocVi.Text = "";
                tbCMND.Text = "";
                cbChucVu.Text = "";
                MessageBox.Show("Thêm mới thành công!", "Thành công", MessageBoxButton.OK, MessageBoxImage.Information);

            }
            else
            {
                MessageBox.Show("Nhớ nhập hết đừng để trống ô nào nhé!", "Có lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void BtXoaNhanVien_Click(object sender, RoutedEventArgs e)
        {
            MyEntity db = new MyEntity();
            List<NhanVien> danhSachNhanVienXoa = dtNhanVien.SelectedItems.Cast<NhanVien>().ToList();
            if (danhSachNhanVienXoa.Count == 0)
            {
                MessageBox.Show("Bạn phải chọn nhân viên để xóa!", "Lỗi!", MessageBoxButton.OK,MessageBoxImage.Error);
            }
            else
            {
                if (MessageBox.Show("Bạn chắc chắn muốn xóa các nhân viên đã chọn?", "Thông báo!!!", MessageBoxButton.OKCancel, MessageBoxImage.Question) == MessageBoxResult.OK)
                {
                    foreach (var VARIABLE in danhSachNhanVienXoa)
                    {
                        db.TNhanViens.Attach(VARIABLE);
                        db.TNhanViens.Remove(VARIABLE);
                    }
                    db.SaveChanges();   
                    dtNhanVien.ItemsSource = null;
                    dtNhanVien.ItemsSource = db.TNhanViens.ToList();
                    dtNhanVien.UnselectAll();
                }
            }
        }
    }
}
