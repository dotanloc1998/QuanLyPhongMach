   M S B A M L   `   `   `  ���� J  FQuanLyPhongMach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:QuanLyPhongMachQuanLyPhongMach       QuanLyPhongMach.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     /localclr-namespace:QuanLyPhongMach     V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes    � Title$  Đăng nhập��$	��300��$	��500��   MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�   TextRenderingMode$
 Auto=�  MaterialDesignPaper#���  $��5q�
���   �  MaterialDesignFont#���   � WindowStartupLocation$ CenterScreen=� � 
ResizeMode$ NoResize=� � WindowStyle$
 None=�.��� ���� -   hinh1DangNhap�� � RowDefinitions �� �� $��6* �.+�(  "MaterialDesignThemes.Wpf.ColorZone  -   $��TitleBar��
���   �$��0��   Mode$ Inverted=�$��40��.���  � ColumnDefinitions �� �� �� .+��� $��Center=�$��Center=�$��0�� # MaterialDesignHeadlineTextBlock#��[ Đăng nhập�� $��2��$��Right=�$��Center=�$��30��	 �� Orientation$	 
Horizontal=�.+��� -   $��btThuNho��+  %MaterialDesignThemes.Wpf.RippleAssist
   
IsDisabled
 . 
���   �
���   � � ToolTip$ 	Thu nhỏ��$��0,0,5,0q�$��Right=�.��'  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]   Kind$ WindowMinimize=��� -   $��btDong��
 . 
���   �
���   �$ Đóng��$��0,0,5,0q�$��Right=�.��  $ WindowClose=�#  MaterialDesignThemes.Wpf.Card   J� Opacity$
 0.84Q�$��5q�$��1��$��Stretch=�$��Stretch=�.���  �� �� �� $
��0.5* ��� .+�� $��15,10,15,10q�$��0�� �� �� $
��9.5* �.+�  $��25��$��25��$ Account=�$��0��$��Bottom=�$��Center=�$��10q��� -   $��txtDangNhap��$��1��)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tài khoản:�� % !MaterialDesignFloatingHintTextBox#��[ � $��15,10,15,10q�$��1�� �� �� $
��9.5* �.+�  $��25��$��25��$	 Key=�$��0��$��Bottom=�$��Center=�$��10q�G� -    G�Name$ 
txtMatKhau��$��1��$ Mật khẩu:�� ) %MaterialDesignFloatingHintPasswordBox#��[ �� $��25,0,0,0q�$	 
Horizontal=�$��2��.+��� -   $��checkDangNhap��  MaterialDesignCheckBox#��[ .��	Ghi nhớ� $��3�� �� �� �� .+�� $��15q�$��0��.+��� -   $��btDangKy��
���2�2�
���2�2�  MaterialDesignRaisedButton#��[ $	��100��$ 
Đăng ký��.��
Đăng ký� $��15q�$��1��.+��� -	   $��btDongY�� $  MaterialDesignRaisedAccentButton#��[ $	��102��$ Đăng nhập��.��Đăng nhập� $��5q�$��2��.+��� -
   $��btQuenMatKhau��
��� ���
��� ��� "	 MaterialDesignRaisedDarkButton#��[	 $	��130��$ Quên mật khẩu��.��Quên mật khẩu