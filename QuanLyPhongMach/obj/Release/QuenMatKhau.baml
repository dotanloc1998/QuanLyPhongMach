   M S B A M L   `   `   `  ���� J  FQuanLyPhongMach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:QuanLyPhongMachQuanLyPhongMach  !    QuanLyPhongMach.QuenMatKhau   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     /localclr-namespace:QuanLyPhongMach     V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes    � WindowStyle$
  None=� � 
ResizeMode$ NoResize=�
���   �$��5q� � Title$ QuenMatKhau��$	��300��$	��500��   MaterialDesignBody#���   $��Regular"�$��13(� � WindowStartupLocation$ CenterScreen=�&   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�   TextRenderingMode$
 Auto=�  MaterialDesignPaper#���    MaterialDesignFont#���  .���  � RowDefinitions �� �� $
��6.5* �.+�(  "MaterialDesignThemes.Wpf.ColorZone  -   $��TitleBar��
���   �$��0��   Mode$ Inverted=�$��40��.���  � ColumnDefinitions �� �� .+��� $��Center=�$
��Left=�$��0��$��10,0,0,0q� # MaterialDesignHeadlineTextBlock#��[ Quên mật khẩu�� $��2��$��Right=�$��Center=�$��30��	 �� Orientation$	 
Horizontal=�.+��� -   $��btThuNho��+  %MaterialDesignThemes.Wpf.RippleAssist
   
IsDisabled
 . 
���   �
���   � � ToolTip$ 	Thu nhỏ��$��0,0,5,0q�$��Right=�.��'  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]   Kind$ WindowMinimize=��� -   $��btDong��
 . 
���   �
���   �$ Đóng��$��0,0,5,0q�$��Right=�.��  $ WindowClose=�� $��1������ -   hinh1QuenMK�� �� Opacity$	 0.4Q� �� �� �� .+��� -   $��tbTenTaiKhoan��$��20(�$��10q�$��0��)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Mã số nhân viên�� % !MaterialDesignFloatingHintTextBox#��[ G� -    G�Name$ tbMaPin��$��20(�$��1��$��10q�$  Mã Pin của tài khoản��� $��2�� �� �� .+��� -   $��btDongY��$��0�� $  MaterialDesignRaisedAccentButton#��[ $	��100��$ Tìm mật khẩu��.��
Đồng ý�� -   $��btHuy��
���  ��
���  ��$��1��#��[ $	��100��$ Quay về đăng nhập��.��
Hủy bỏ