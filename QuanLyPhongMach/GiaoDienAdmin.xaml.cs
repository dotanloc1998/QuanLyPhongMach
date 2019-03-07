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
    /// Interaction logic for GiaoDienAdmin.xaml
    /// </summary>
    public partial class GiaoDienAdmin : UserControl
    {
        public GiaoDienAdmin()
        {
            InitializeComponent();
            try
            {
                ImageSource imageSourceLogo = new BitmapImage(new Uri(@"C:\Users\thuyl\OneDrive\Education\Nam III\Cong nghe phan mem\QuanLyPhongMach\1920x1080_1479958960-ava-ituyensinh-320-180.JPG"));
                hinhAdmin.ImageSource = imageSourceLogo;
                hinhAdmin.Opacity = 0.3;
            }
            catch (Exception)
            {


            }
            MyEntity db = new MyEntity();
            dtNguoiDung.ItemsSource = db.TNhanViens.ToList();
            List<ThamSo> thamSos = db.TThamSos.ToList();
            foreach (var item in thamSos)
            {
                if (item.MaTS == "SK")
                {
                    tbSoKhoa.Text = item.GiaTri.ToString();
                }
                else if (item.MaTS == "SLB")
                {
                    tbSoBenh.Text = item.GiaTri.ToString();
                }
                else if (item.MaTS == "SLBN")
                {
                    tbSoLuongBenhNhan.Text = item.GiaTri.ToString();
                }
                else if (item.MaTS == "SLT")
                {
                    tbSoLoaiThuoc.Text = item.GiaTri.ToString();
                }
                else if (item.MaTS == "SPMK")
                {
                    tbSoPhongMoiKhoa.Text = item.GiaTri.ToString();
                }
                else
                {
                    tbTienKham.Text = item.GiaTri.ToString();
                }
            }
        }

        private void BtSoLuongBenhNhan_Click(object sender, RoutedEventArgs e)
        {
            MyEntity db = new MyEntity();
            var thamSo = from thamSoNao in db.TThamSos
                         where thamSoNao.MaTS == "SLBN"
                         select thamSoNao;
            List<ThamSo> thamSos = thamSo.ToList();
            ThamSo thamSoMoi = new ThamSo(thamSos[0].MaTS, int.Parse(tbSoLuongBenhNhan.Text), "");
            db.TThamSos.Attach(thamSos[0]);
            db.TThamSos.Remove(thamSos[0]);
            db.TThamSos.Add(thamSoMoi);
            db.SaveChanges();
        }

        private void BtSoBenh_Click(object sender, RoutedEventArgs e)
        {
            MyEntity db = new MyEntity();
            var thamSo = from thamSoNao in db.TThamSos
                         where thamSoNao.MaTS == "SLB"
                         select thamSoNao;
            List<ThamSo> thamSos = thamSo.ToList();
            ThamSo thamSoMoi = new ThamSo(thamSos[0].MaTS, int.Parse(tbSoBenh.Text), "");
            db.TThamSos.Attach(thamSos[0]);
            db.TThamSos.Remove(thamSos[0]);
            db.TThamSos.Add(thamSoMoi);
            db.SaveChanges();
        }

        private void BtSoLoaiThuoc_Click(object sender, RoutedEventArgs e)
        {
            MyEntity db = new MyEntity();
            var thamSo = from thamSoNao in db.TThamSos
                         where thamSoNao.MaTS == "SLT"
                         select thamSoNao;
            List<ThamSo> thamSos = thamSo.ToList();
            ThamSo thamSoMoi = new ThamSo(thamSos[0].MaTS, int.Parse(tbSoLoaiThuoc.Text), "");
            db.TThamSos.Attach(thamSos[0]);
            db.TThamSos.Remove(thamSos[0]);
            db.TThamSos.Add(thamSoMoi);
            db.SaveChanges();
        }

        private void BtTienKham_Click(object sender, RoutedEventArgs e)
        {
            MyEntity db = new MyEntity();
            var thamSo = from thamSoNao in db.TThamSos
                         where thamSoNao.MaTS == "STK"
                         select thamSoNao;
            List<ThamSo> thamSos = thamSo.ToList();
            ThamSo thamSoMoi = new ThamSo(thamSos[0].MaTS, int.Parse(tbTienKham.Text), "");
            db.TThamSos.Attach(thamSos[0]);
            db.TThamSos.Remove(thamSos[0]);
            db.TThamSos.Add(thamSoMoi);
            db.SaveChanges();
        }

        private void BtSoKhoa_Click(object sender, RoutedEventArgs e)
        {
            MyEntity db = new MyEntity();
            var thamSo = from thamSoNao in db.TThamSos
                         where thamSoNao.MaTS == "SK"
                         select thamSoNao;
            List<ThamSo> thamSos = thamSo.ToList();
            ThamSo thamSoMoi = new ThamSo(thamSos[0].MaTS, int.Parse(tbSoKhoa.Text), "");
            db.TThamSos.Attach(thamSos[0]);
            db.TThamSos.Remove(thamSos[0]);
            db.TThamSos.Add(thamSoMoi);
            db.SaveChanges();
        }

        private void BtSoPhongMoiKhoa_Click(object sender, RoutedEventArgs e)
        {
            MyEntity db = new MyEntity();
            var thamSo = from thamSoNao in db.TThamSos
                         where thamSoNao.MaTS == "SLBN"
                         select thamSoNao;
            List<ThamSo> thamSos = thamSo.ToList();
            ThamSo thamSoMoi = new ThamSo(thamSos[0].MaTS, int.Parse(tbSoPhongMoiKhoa.Text), "");
            db.TThamSos.Attach(thamSos[0]);
            db.TThamSos.Remove(thamSos[0]);
            db.TThamSos.Add(thamSoMoi);
            db.SaveChanges();
        }
    }
}
