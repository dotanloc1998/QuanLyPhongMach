   M S B A M L   `   `   `  ����J  FQuanLyPhongMach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:QuanLyPhongMachQuanLyPhongMach  5   	   !    QuanLyPhongMach.SuaNhanVien   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:QuanLyPhongMach     5   	   V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	     � WindowStartupLocation$  CenterScreen=�5   	    � Title$ SuaNhanVien��6.   $	��770��6B   $
��1050��6O      MaterialDesignBody#���   5
   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	    � 
ResizeMode$ NoResize=�60    � WindowStyle$
 None=�6F      TextRenderingMode$
 Auto=�5   	   $��5q�6.   
���   �  MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	   .��5      � ��5   
   �� 5      -   5        hinhSuaNhanVien��5   5    � RowDefinitions 5   
   �� 5      6   �� 5      $	��12* �6   6+   .+�5   
   (  "MaterialDesignThemes.Wpf.ColorZone  -   5        $��TitleBar��5   V   $��0��6f      Mode$ Inverted=�5   #   $��50��63   .��5      �  � ColumnDefinitions 5      �� 5      6)   �� 5      6)   �� 5      6)   .+�5!      �� $��Center=�6   $��30,0,0,0q�67   $��0��6K    # MaterialDesignHeadlineTextBlock#��[ 5"      Sửa nhân viên5$      �� 5%      $��2��6   $��Right=�6-   $��Center=�6I   $��30��6d   	 �� Orientation$	 
Horizontal=�5&      .+�5(      �� -   5        $��btThuNho��5(      +  %MaterialDesignThemes.Wpf.RippleAssist
   
IsDisabled
 . 
���   �
���   � � ToolTip$ 	Thu nhỏ��6�   $��0,0,5,0q�6�   $��Right=�6�   .��5)      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]   Kind$ WindowMinimize=�62   6J   5*      �� 5+      -   5        $��btDong��5+      
 . 
���   �
���   �$ Đóng��6�   $��0,0,5,0q�6�   $��Right=�6�   .��5,        $ WindowClose=�62   6G   5-      5.      5/      50      � 52   
   $��1��6   $��10q�6    53      �� 54      6"   �� 55      6"   �� 56      6"   �� 57      6"   �� 58      6"   �� 59      6"   .+�5<      � $��0��6   .+�5=      �� -   5        $��tbHoTen��5=   *   $��0��6   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Họ và tên��5>      $��Center=�6.    % !MaterialDesignFloatingHintTextBox#��[ 5?      5@      � 5B      $��1��6   .+�5C      �� $	 
Horizontal=�6   $
��Left=�66   .+�5D      �� -   5        $��cbHocVi��5D      $	��150��6.   $��0,0,10,0q�6:   $��0��6L   $ 
Học vị��5E      $��Center=�6+    & "MaterialDesignFloatingHintComboBox#��[ 5F      5G      �� 5H      -   5        $��cbChucVu��5H      {�.  $	��150��6A   $��1��6M   $ Chức vụ��5I      $��Center=�6,   #��[ 5J      .@�5K      �� .��6'   
Bác sĩ5M      �� 5N      .��6'   Y tá5P      5Q      5R      5T      � 5V      $��2��6   .+�5W      �� $	 
Horizontal=�6   $
��Left=�66   .+�5X      (  "System.Windows.Controls.DatePicker  -   5        $��
dpNgaySinh��5X   !   $��0,0,10,0q�63   $	��150��5Y      $��40��6   $ 
Ngày sinh��5Z       ( $MaterialDesignFloatingHintDatePicker#��[ 5[      	� 5\      -	   5        $��rbnNam��5\   3    d� 	IsChecked$
 TrueY�6"   $��Center=�6B     MaterialDesignRadioButton#��[ 5]      .��68   Nam5_      	� 5`      -
   5        $��rbnNu��5`   4   $��10,0,0,0q�6"   $��Center=�6A   #��[ 5a      .��68   Nữ5c      5d      5e      � 5g      $��3��6   .+�5h      �� -   5        $��tbDiaChi��5h   *   $��0��6   $ Địa chỉ��5i      $��Center=�6,   #��[ 5j      5k      � 5m      $��4��6    5n      �� 5o      6)   �� 5p      6)   �� 5q      6)   .+�5s      �� -   5        $��	tbQueQuan��5s   =   $��0��6   $��0,0,10,0q�6*   $ 
Quê quán��5t      $��Center=�6-   #��[ 5u      �� 5v      -   5        $��tbSDT��5v   =   $��1��6   $��0,0,10,0q�6*   $ Số điện thoại��5w      $��Center=�62   #��[ 5x      �� 5y      -   5        $��tbCMND��5y   +   $��2��6   $
 CMND��5z      $��Center=�6)   #��[ 5{      5|      � 5~      $��5��6    5      �� 5�      6)   �� 5�      6)   .+�5�      �� -   5        $��btDongY��5�   )   $��0��6    $  MaterialDesignRaisedAccentButton#��[ 5�      $	��100��5�      $��60��6!   $��Center=�6-   $��Center=�6H   $" Đồng ý sửa nhân viên��5�      .��6J   
Đồng ý5�      �� 5�      -   5        $��btHuy��5�      $��1��6&   
���  ��
���  ��
�������#��[ 5�      $	��100��5�      $��60��6%   $��Center=�61   $��Center=�6L   $ Hủy sửa nhân viên��5�      .��6J   
Hủy bỏ5�      5�      5�      5�      5�      