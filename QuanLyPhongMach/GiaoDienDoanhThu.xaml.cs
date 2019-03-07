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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace QuanLyPhongMach
{
    /// <summary>
    /// Interaction logic for GiaoDienDoanhThu.xaml
    /// </summary>
    public partial class GiaoDienDoanhThu : UserControl
    {
        public GiaoDienDoanhThu()
        {
            InitializeComponent();
            try
            {
                ImageSource imageSourceLogo = new BitmapImage(new Uri(@"C:\Users\thuyl\OneDrive\Education\Nam III\Cong nghe phan mem\QuanLyPhongMach\1920x1080_1479958960-ava-ituyensinh-320-180.JPG"));
                hinhDoanhThu.ImageSource = imageSourceLogo;
                hinhDoanhThu.Opacity = 0.3;
            }
            catch (Exception)
            {


            }
        }
        private void DpDoanhThu_SelectedDateChanged(object sender, SelectionChangedEventArgs e)
        {
            DateTime ngayDuocChon = DateTime.Parse(dpDoanhThu.Text);
            MyEntity db = new MyEntity();
            var phieuKham = from phieuKhamNao in db.TPhieuKhams
                            where phieuKhamNao.NgayKham.Month == ngayDuocChon.Month && phieuKhamNao.NgayKham.Year == ngayDuocChon.Year
                            select phieuKhamNao;
            List<DoanhThu> doanhThuTrongThang = new List<DoanhThu>();
            List<PhieuKham> phieuKhams = phieuKham.ToList();
            int tongDoanhThu = 0;
            foreach (var item in phieuKhams)
            {
                tongDoanhThu += (item.TienKham + item.TienThuoc);
            }
            //Tinh doanh thu
            if ((ngayDuocChon.Year % 400 == 0) || (ngayDuocChon.Year % 4 == 0 && ngayDuocChon.Year % 100 != 0))
            {
                //Nam nhuan
                if (ngayDuocChon.Month == 2)
                {
                    for (int i = 1; i <= 29; i++)
                    {
                        DateTime ngayTrongThang = new DateTime(ngayDuocChon.Year, ngayDuocChon.Month, i);
                        phieuKham = from phieuKhamNao in db.TPhieuKhams
                                    where phieuKhamNao.NgayKham.Day == ngayTrongThang.Day && phieuKhamNao.NgayKham.Month == ngayTrongThang.Month && phieuKhamNao.NgayKham.Year == ngayTrongThang.Year
                                    select phieuKhamNao;
                        phieuKhams = phieuKham.ToList();
                        if (phieuKhams.Count != 0)
                        {
                            int tongDoanhThuTrongNgay = 0;
                            foreach (var item in phieuKhams)
                            {
                                tongDoanhThuTrongNgay += (item.TienKham + item.TienThuoc);
                            }
                            DoanhThu doanhThuMoi = new DoanhThu(ngayTrongThang, phieuKhams.Count, tongDoanhThuTrongNgay, (double)(tongDoanhThuTrongNgay * 100 / tongDoanhThu) + "%");
                            doanhThuTrongThang.Add(doanhThuMoi);
                        }
                    }
                }
                else if (ngayDuocChon.Month == 4 || ngayDuocChon.Month == 6 || ngayDuocChon.Month == 9 || ngayDuocChon.Month == 11)
                {
                    //30 ngay
                    for (int i = 1; i <= 30; i++)
                    {
                        DateTime ngayTrongThang = new DateTime(ngayDuocChon.Year, ngayDuocChon.Month, i);
                        phieuKham = from phieuKhamNao in db.TPhieuKhams
                                    where phieuKhamNao.NgayKham.Day == ngayTrongThang.Day && phieuKhamNao.NgayKham.Month == ngayTrongThang.Month && phieuKhamNao.NgayKham.Year == ngayTrongThang.Year
                                    select phieuKhamNao;
                        phieuKhams = phieuKham.ToList();
                        if (phieuKhams.Count != 0)
                        {
                            int tongDoanhThuTrongNgay = 0;
                            foreach (var item in phieuKhams)
                            {
                                tongDoanhThuTrongNgay += (item.TienKham + item.TienThuoc);
                            }
                            DoanhThu doanhThuMoi = new DoanhThu(ngayTrongThang, phieuKhams.Count, tongDoanhThuTrongNgay, (double)(tongDoanhThuTrongNgay * 100 / tongDoanhThu) + "%");
                            doanhThuTrongThang.Add(doanhThuMoi);
                        }
                    }
                }
                else
                {
                    for (int i = 1; i <= 31; i++)
                    {
                        DateTime ngayTrongThang = new DateTime(ngayDuocChon.Year, ngayDuocChon.Month, i);
                        phieuKham = from phieuKhamNao in db.TPhieuKhams
                                    where phieuKhamNao.NgayKham.Day == ngayTrongThang.Day && phieuKhamNao.NgayKham.Month == ngayTrongThang.Month && phieuKhamNao.NgayKham.Year == ngayTrongThang.Year
                                    select phieuKhamNao;
                        phieuKhams = phieuKham.ToList();
                        if (phieuKhams.Count != 0)
                        {
                            int tongDoanhThuTrongNgay = 0;
                            foreach (var item in phieuKhams)
                            {
                                tongDoanhThuTrongNgay += (item.TienKham + item.TienThuoc);
                            }
                            DoanhThu doanhThuMoi = new DoanhThu(ngayTrongThang, phieuKhams.Count, tongDoanhThuTrongNgay, (double)(tongDoanhThuTrongNgay * 100 / tongDoanhThu) + "%");
                            doanhThuTrongThang.Add(doanhThuMoi);
                        }
                    }
                }
            }
            else
            {
                //Nam khong nhuan
                if (ngayDuocChon.Month == 2)
                {
                    for (int i = 1; i <= 28; i++)
                    {
                        DateTime ngayTrongThang = new DateTime(ngayDuocChon.Year, ngayDuocChon.Month, i);
                        phieuKham = from phieuKhamNao in db.TPhieuKhams
                                    where phieuKhamNao.NgayKham.Day == ngayTrongThang.Day && phieuKhamNao.NgayKham.Month == ngayTrongThang.Month && phieuKhamNao.NgayKham.Year == ngayTrongThang.Year
                                    select phieuKhamNao;
                        phieuKhams = phieuKham.ToList();
                        if (phieuKhams.Count != 0)
                        {
                            int tongDoanhThuTrongNgay = 0;
                            foreach (var item in phieuKhams)
                            {
                                tongDoanhThuTrongNgay += (item.TienKham + item.TienThuoc);
                            }
                            DoanhThu doanhThuMoi = new DoanhThu(ngayTrongThang, phieuKhams.Count, tongDoanhThuTrongNgay, (double)(tongDoanhThuTrongNgay * 100 / tongDoanhThu) + "%");
                            doanhThuTrongThang.Add(doanhThuMoi);
                        }
                    }
                }
                else if (ngayDuocChon.Month == 4 || ngayDuocChon.Month == 6 || ngayDuocChon.Month == 9 || ngayDuocChon.Month == 11)
                {
                    //30 ngay
                    for (int i = 1; i <= 30; i++)
                    {
                        DateTime ngayTrongThang = new DateTime(ngayDuocChon.Year, ngayDuocChon.Month, i);
                        phieuKham = from phieuKhamNao in db.TPhieuKhams
                                    where phieuKhamNao.NgayKham.Day == ngayTrongThang.Day && phieuKhamNao.NgayKham.Month == ngayTrongThang.Month && phieuKhamNao.NgayKham.Year == ngayTrongThang.Year
                                    select phieuKhamNao;
                        phieuKhams = phieuKham.ToList();
                        if (phieuKhams.Count != 0)
                        {
                            int tongDoanhThuTrongNgay = 0;
                            foreach (var item in phieuKhams)
                            {
                                tongDoanhThuTrongNgay += (item.TienKham + item.TienThuoc);
                            }
                            DoanhThu doanhThuMoi = new DoanhThu(ngayTrongThang, phieuKhams.Count, tongDoanhThuTrongNgay, (double)(tongDoanhThuTrongNgay * 100 / tongDoanhThu) + "%");
                            doanhThuTrongThang.Add(doanhThuMoi);
                        }
                    }
                }
                else
                {
                    for (int i = 1; i <= 31; i++)
                    {
                        DateTime ngayTrongThang = new DateTime(ngayDuocChon.Year, ngayDuocChon.Month, i);
                        phieuKham = from phieuKhamNao in db.TPhieuKhams
                                    where phieuKhamNao.NgayKham.Day == ngayTrongThang.Day && phieuKhamNao.NgayKham.Month == ngayTrongThang.Month && phieuKhamNao.NgayKham.Year == ngayTrongThang.Year
                                    select phieuKhamNao;
                        phieuKhams = phieuKham.ToList();
                        if (phieuKhams.Count!=0)
                        {
                            int tongDoanhThuTrongNgay = 0;
                            foreach (var item in phieuKhams)
                            {
                                tongDoanhThuTrongNgay += (item.TienKham + item.TienThuoc);
                            }
                            DoanhThu doanhThuMoi = new DoanhThu(ngayTrongThang, phieuKhams.Count, tongDoanhThuTrongNgay, (double)(tongDoanhThuTrongNgay * 100 / tongDoanhThu) + "%");
                            doanhThuTrongThang.Add(doanhThuMoi);
                        }
                    }
                }
            }
            //Xuat ra man hinh
            dtDoanhThu.ItemsSource = doanhThuTrongThang;
        }
    }
}
