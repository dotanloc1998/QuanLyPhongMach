   M S B A M L   `   `   `  ����J  FQuanLyPhongMach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:QuanLyPhongMachQuanLyPhongMach  5   	   !    QuanLyPhongMach.SuaPhanCong   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:QuanLyPhongMach     5   	   V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	     � WindowStartupLocation$  CenterScreen=�5   	    � Title$ SuaPhanCong��6.   $	��770��6B   $
��1050��6O      MaterialDesignBody#���   5
   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	    � 
ResizeMode$ NoResize=�60    � WindowStyle$
 None=�6F      TextRenderingMode$
 Auto=�5   	   $��5q�6.   
���   �  MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	   .��5      � ��5   
   �� 5      -   5        hinhSuaPhieuKham��5   6    � RowDefinitions 5   
   �� 5      6   �� 5      $	��12* �6   6+   .+�5   
   (  "MaterialDesignThemes.Wpf.ColorZone  -   5        $��TitleBar��5   V   $��0��6f      Mode$ Inverted=�5   #   $��50��63   .��5      �  � ColumnDefinitions 5      �� 5      6)   �� 5      6)   �� 5      6)   .+�5!      �� $��Center=�6   $��30,0,0,0q�67   $��0��6K    # MaterialDesignHeadlineTextBlock#��[ 5"      Sửa phân công5$      �� 5%      $��2��6   $��Right=�6-   $��Center=�6I   $��30��6d   	 �� Orientation$	 
Horizontal=�5&      .+�5(      �� -   5        $��btThuNho��5(      +  %MaterialDesignThemes.Wpf.RippleAssist
   
IsDisabled
 . 
���   �
���   � � ToolTip$ 	Thu nhỏ��6�   $��0,0,5,0q�6�   $��Right=�6�   .��5)      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]   Kind$ WindowMinimize=�62   6J   5*      �� 5+      -   5        $��btDong��5+      
 . 
���   �
���   �$ Đóng��6�   $��0,0,5,0q�6�   $��Right=�6�   .��5,        $ WindowClose=�62   6G   5-      5.      5/      50      � 52   
   $��	10,0,10,0q�6   $��1��6"    53      �� 54      6"   �� 55      6"   �� 56      6"   �� 57      6"   .+�59      � $��0��6   .+�5:      (  "System.Windows.Controls.DatePicker  -   5        $��
dpNgayTruc��5;      $��20(�6   $��50��6#   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Ngày trực��5<       ( $MaterialDesignFloatingHintDatePicker#��[ 5=      5>      � 5?      $��1��6    5@      �� 5A      6)   �� 5B      6)   .+�5D      �� -   5        $��cbPhong��5E   *   $��1��5D      $��10,0,0,0q�6+   $ Phòng��5E       �� 
IsEditable . $��20(�5F       & "MaterialDesignFloatingHintComboBox#��[ 5G      5I      �� 5J      -   5        $��cbKhoa��5K   )   $��0��5J      $
 Khoa��5K       . $��20(�5L      #��[ 5M      5O      5P      � 5Q      $��2��6    5R      �� 5S      6)   �� 5T      6)   .+�5V      �� -   5        $��cbBacSi��5W   +   $��0��5V      $ Bác sĩ��5W       . $��20(�5X      #��[ 5Y      5[      �� 5\      -	   5        $��cbYta��5]   )   $��10,0,0,0q�5\      $��1��6-   $ Y tá��5]       . $��20(�5^      #��[ 5_      5a      5b      � 5c      $��3��6    5d      �� 5e      6)   �� 5f      6)   .+�5h      �� -
   5        $��btDongY��5h   )   $��0��6    $  MaterialDesignRaisedAccentButton#��[ 5i      $	��100��5j      $��60��6!   $��Center=�6-   $��Center=�6H   $" Đồng ý sửa phân công��5k      .��6J   
Đồng ý5m      �� 5o      -   5        $��btHuy��5o      $��1��6&   
���  ��
���  ��
�������#��[ 5p      $	��100��5q      $��60��6%   $��Center=�61   $��Center=�6L   $ Hủy sửa phân công��5r      .��6J   
Hủy bỏ5t      5u      5w      5x      5y      