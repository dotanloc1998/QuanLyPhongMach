   M S B A M L   `   `   `  ���� J  FQuanLyPhongMach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:QuanLyPhongMachQuanLyPhongMach      QuanLyPhongMach.SuaThuoc   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     /localclr-namespace:QuanLyPhongMach     V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes    � WindowStartupLocation$  CenterScreen=� � Title$ SuaThuoc��$	��770��$
��1050��   MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=� � 
ResizeMode$ NoResize=� � WindowStyle$
 None=�   TextRenderingMode$
 Auto=�$��5q�
���   �  MaterialDesignPaper#���    MaterialDesignFont#���  .��� ���� -   hinhSuaThuoc�� � RowDefinitions �� �� $	��12* �.+�(  "MaterialDesignThemes.Wpf.ColorZone  -   $��TitleBar��$��0��   Mode$ Inverted=�$��50��.���  � ColumnDefinitions �� �� �� .+��� $��Center=�$��30,0,0,0q�$��0�� # MaterialDesignHeadlineTextBlock#��[ Sửa thuốc�� $��2��$��Right=�$��Center=�$��30��	 �� Orientation$	 
Horizontal=�.+��� -   $��btThuNho��+  %MaterialDesignThemes.Wpf.RippleAssist
   
IsDisabled
 . 
���   �
���   � � ToolTip$ 	Thu nhỏ��$��0,0,5,0q�$��Right=�.��'  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]   Kind$ WindowMinimize=��� -   $��btDong��
 . 
���   �
���   �$ Đóng��$��0,0,5,0q�$��Right=�.��  $ WindowClose=�� $��1�� �� $��6* ��� .+��� $	��250��$	��500��$��Center=�$��Center=�.+��� -   $��
tbTenThuoc��$��30(�)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tên thuốc�� % !MaterialDesignFloatingHintTextBox#��[ �� -   $��
cbCachDung��$��30(�$ Cách dùng�� & "MaterialDesignFloatingHintComboBox#��[ .@��� .��Sáng�� .��Trưa�� .��	Chiều�� .��Tối�� -   $��cbDonVi��$��30(�$ 
Đơn vị��#��[ .@��� .��Viên�� .��Chai�� -   $��tbGia��$��30(�$
 Giá��#��[ � $��1�� �� �� .+��� -	   $��btDongY��$��0�� $  MaterialDesignRaisedAccentButton#��[ $	��100��$��60��$��Center=�$��Center=�$ Đồng ý sửa thuốc��.��
Đồng ý�� -
   $��btHuy��$��1��
���  ��
���  ��
�������#��[ $	��100��$��60��$��Center=�$��Center=�$ Hủy sửa thuốc��.��
Hủy bỏ