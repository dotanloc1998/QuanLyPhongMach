   M S B A M L   `   `   `  ����J  FQuanLyPhongMach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:QuanLyPhongMachQuanLyPhongMach  5   	       QuanLyPhongMach.SuaThuoc   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:QuanLyPhongMach     5   	   V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	     � WindowStartupLocation$  CenterScreen=�5   	    � Title$ SuaThuoc��6.   $	��770��6?   $
��1050��6L      MaterialDesignBody#���   5
   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	    � 
ResizeMode$ NoResize=�60    � WindowStyle$
 None=�6F      TextRenderingMode$
 Auto=�5   	   $��5q�6.   
���   �  MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	   .��5      � ��5   
   �� 5      -   5        hinhSuaThuoc��5   2    � RowDefinitions 5   
   �� 5      6   �� 5      $	��12* �6   6+   .+�5   
   (  "MaterialDesignThemes.Wpf.ColorZone  -   5        $��TitleBar��5   V   $��0��6f      Mode$ Inverted=�5   #   $��50��63   .��5      �  � ColumnDefinitions 5      �� 5      6)   �� 5      6)   �� 5      6)   .+�5!      �� $��Center=�6   $��30,0,0,0q�67   $��0��6K    # MaterialDesignHeadlineTextBlock#��[ 5"      Sửa thuốc5$      �� 5%      $��2��6   $��Right=�6-   $��Center=�6I   $��30��6d   	 �� Orientation$	 
Horizontal=�5&      .+�5(      �� -   5        $��btThuNho��5(      +  %MaterialDesignThemes.Wpf.RippleAssist
   
IsDisabled
 . 
���   �
���   � � ToolTip$ 	Thu nhỏ��6�   $��0,0,5,0q�6�   $��Right=�6�   .��5)      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]   Kind$ WindowMinimize=�62   6J   5*      �� 5+      -   5        $��btDong��5+      
 . 
���   �
���   �$ Đóng��6�   $��0,0,5,0q�6�   $��Right=�6�   .��5,        $ WindowClose=�62   6G   5-      5.      5/      50      � 51   
   $��1��6    52      �� 53      $��6* �6    6.   �� 54      6"   .+�56      �� $	��250��6   $	��500��6&   $��Center=�62   $��Center=�6M   .+�57      �� -   5        $��
tbTenThuoc��57   )   $��30(�6   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tên thuốc��58   !    % !MaterialDesignFloatingHintTextBox#��[ 59   !   �� 5:      -   5        $��
cbCachDung��5:   )   $��30(�6   $ Cách dùng��5;       & "MaterialDesignFloatingHintComboBox#��[ 5<      .@�5=      �� .��6#   Sáng5?      �� 5@      .��6#   Trưa5B      �� 5C      .��6#   	Chiều5E      �� 5F      .��6#   Tối5H      5I      �� 5J      -   5        $��cbDonVi��5J   )   $��30(�6   $ 
Đơn vị��5K   !   #��[ 5L   !   .@�5M      �� .��6#   Viên5O      �� 5P      .��6#   Chai5R      5S      �� 5T      -   5        $��tbGia��5T   )   $��30(�6   $
 Giá��5U   !   #��[ 5V   !   5W      � 5X      $��1��6    5Y      �� 5Z      6)   �� 5[      6)   .+�5]      �� -	   5        $��btDongY��5]   )   $��0��6    $  MaterialDesignRaisedAccentButton#��[ 5^      $	��100��5_      $��60��6!   $��Center=�6-   $��Center=�6H   $ Đồng ý sửa thuốc��5`      .��6F   
Đồng ý5b      �� 5d      -
   5        $��btHuy��5d      $��1��6&   
���  ��
���  ��
�������#��[ 5e      $	��100��5f      $��60��6%   $��Center=�61   $��Center=�6L   $ Hủy sửa thuốc��5g      .��6F   
Hủy bỏ5i      5j      5k      5l      5m      