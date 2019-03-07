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
    /// Interaction logic for QuenMatKhau.xaml
    /// </summary>
    public partial class QuenMatKhau : Window
    {
        public QuenMatKhau()
        {
            InitializeComponent();
        }
        private void btHuy_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }
        private void btThuNho_MouseEnter(object sender, MouseEventArgs e)
        {
            btThuNho.Background = Brushes.LightGray;
        }

        private void btThuNho_MouseLeave(object sender, MouseEventArgs e)
        {
            btThuNho.Background = Brushes.Black;
        }

        private void TitleBar_OnMouseDown(object sender, MouseButtonEventArgs e)
        {

            DragMove();
        }

        private void btDong_Click(object sender, RoutedEventArgs e)
        {

            Close();

        }

        private void btThuNho_Click(object sender, RoutedEventArgs e)
        {
            WindowState = WindowState.Minimized;
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
