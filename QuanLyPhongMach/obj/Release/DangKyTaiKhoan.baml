   M S B A M L   `   `   `  ���� J  FQuanLyPhongMach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:QuanLyPhongMachQuanLyPhongMach  $    QuanLyPhongMach.DangKyTaiKhoan   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     /localclr-namespace:QuanLyPhongMach     V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes    � Title$  
Đăng ký��$	��800��$	��950��   MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�   TextRenderingMode$
 Auto=�  MaterialDesignPaper#���  $��5q�
���   �  MaterialDesignFont#���   � 
ResizeMode$ NoResize=� � WindowStyle$
 None=� � WindowStartupLocation$ CenterScreen=�.��� ���� -   hinh1DangKy�� � RowDefinitions �� �� $	��12* �.+�(  "MaterialDesignThemes.Wpf.ColorZone  -   $��TitleBar��$��0��   Mode$ Inverted=�$��50��.���  � ColumnDefinitions �� �� �� .+��� $��Center=�$��30,0,0,0q�$��0�� # MaterialDesignHeadlineTextBlock#��[ 
Đăng ký�� $��2��$��Right=�$��Center=�$��30��	 �� Orientation$	 
Horizontal=�.+��� -   $��btThuNho��+  %MaterialDesignThemes.Wpf.RippleAssist
   
IsDisabled
 . 
���   �
���   � � ToolTip$ 	Thu nhỏ��$��0,0,5,0q�$��Right=�.��'  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]   Kind$ WindowMinimize=��� -   $��btDong��
 . 
���   �
���   �$ Đóng��$��0,0,5,0q�$��Right=�.��  $ WindowClose=�� $��1��.+�#  MaterialDesignThemes.Wpf.Card   J� Opacity$
 0.84Q�$��10q�$��Stretch=�$��Stretch=�.���  �� �� $��2* �.+��  �� �� $��3* �.+��� -   $��hinhLogo��$��0��$
��Left=�$��10,10,0,9.6q�$	��170��� $��1�� �� �� .+��� $��0��$��Bottom=�$��Center=� # MaterialDesignDisplay2TextBlock#��[ Đăng ký tài khoản�� $��1��$	��Top=�$��Center=�#��[ Phòng khám CNPM� $��1�� �� �� �� �� ��  �� �� .+�� $��0��$��0�� �� �� $	��10* �.+��� -   $��
txtHoTenNV��$��1��$��0��$��20(�$��10q�)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Họ và tên�� % !MaterialDesignFloatingHintTextBox#��[ .��  $��35��$��45��$ 	RenameBox=�$��0��$��Center=�$��Center=�$��
13,42,0,10q�� $��1��$��0�� �� �� $	��10* �.+��� -   $��txtSDTNV��$��1��$��1��$��20(�$��10q�$ Số điện thoại��#��[   $��35��$��45��$ 	Cellphone=�$��0��$��Center=�$��Center=�$��
13,42,0,10q�� $��0��$��1�� �� �� $	��10* �.+��� -   $��txtDCNV��$��1��$��2��$��20(�$��10q�$ Địa chỉ��#��[ �� $��image/map-marker.png��$��35��$��45��$��0��$��Center=�$��Center=�$��
13,42,0,10q�� $��1��$��1�� �� �� $	��10* �.+��� -	   $��txtQueQuanNV��$��1��$��3��$��20(�$��10q�$ 
Quê quán��#��[   $��35��$��45��$
 Home=�$��0��$��Center=�$��Center=�$��
13,42,0,10q�� $��2��$��0�� �� �� $	��10* �.+�(  "System.Windows.Controls.DatePicker  -
   $��dpNgaySinhNV��$��10q�$��50��$��Bottom=�$��4��$��20(�$ 
Ngày sinh��$��1�� ( $MaterialDesignFloatingHintDatePicker#��[ �� $��image/calendar-blank.png��$��35��$��45��$��0��$��Center=�$��Center=�$��
13,42,0,10q�� $��2��$��1�� �� �� $	��10* �.+�  $��Center=�$��Center=�$��35��$��45��$��0��$ GenderMaleFemale=��� $��1��$��Center=�$	 
Horizontal=�$��Center=�.+��� $��25(�.��Giới tính :	� -   $��rbnNam��$��25(� d� 	IsChecked$
 TrueY�$��Center=�  MaterialDesignRadioButton#��[ .��Nam	� -   $��rbnNu��$��25(�$��10,0,0,0q�$��Center=�#��[ .��Nữ� $��3��$��20,0,0,0q�$��0�� �� �� .+��� -   $��cbHocVi��$��10q�$��Bottom=�$��1��$��20(�$��6��$ 
Học vị�� & "MaterialDesignFloatingHintComboBox#��[ �� -   $��cbChucVu��$��
0,10,10,10q�$��Bottom=�$��0��$��20(�$��6��$ Chức vụ��#��[ .@��� .��
Bác sĩ�� .��Y tá� $��3��$��1�� �� �� $	��10* �.+��� -   $��tbCMND��$��1��$��7��$��20(�$��10q�$ Chứng minh nhân dân��#��[   $��30��$��45��$ Person=�$��0��$��Center=�$��Center=�$��
13,42,0,10q��� -   $��
btChapNhan��$��8��$��0��$��4��$��Center=�$��Center=� $	  MaterialDesignRaisedAccentButton#��[	 $	��185��$��55��$��10q�$ Hoàn thành đăng ký��.��Chấp nhận�� -   $��btHuyBo��
���  ��$��9��$��1��$��4��$��Center=�$��Center=� "
 MaterialDesignRaisedDarkButton#��[
 $	��185��$��55��$��10q�$ Hủy bỏ đăng ký��.��
Hủy bỏ