   M S B A M L   `   `   `  ����J  FQuanLyPhongMach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:QuanLyPhongMachQuanLyPhongMach  5   	        QuanLyPhongMach.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:QuanLyPhongMach     5   	   V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	     � Title$  Đăng nhập��5   	   $	��300��6   $	��500��6(      MaterialDesignBody#���   5
   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	   $��5q�6<   
���   �  MaterialDesignFont#���  5   	    � WindowStartupLocation$ CenterScreen=�6;    � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	   .��5      � ��5   
   �� 5      -   5        hinh1DangNhap��5   3    � RowDefinitions 5   
   �� 5      6   �� 5      $��6* �6   6*   .+�5   
   (  "MaterialDesignThemes.Wpf.ColorZone  -   5        $��TitleBar��5   W   
���   �$��0��6g      Mode$ Inverted=�5      $��40��6   .��5      �  � ColumnDefinitions 5       �� 5!      6)   �� 5"      6)   �� 5#      6)   .+�5%      �� $��Center=�6   $��Center=�67   $��0��6T    # MaterialDesignHeadlineTextBlock#��[ 5&      Đăng nhập5(      �� 5)      $��2��6   $��Right=�6-   $��Center=�6I   $��30��6d   	 �� Orientation$	 
Horizontal=�5*      .+�5,      �� -   5        $��btThuNho��5,      +  %MaterialDesignThemes.Wpf.RippleAssist
   
IsDisabled
 . 
���   �
���   � � ToolTip$ 	Thu nhỏ��6�   $��0,0,5,0q�6�   $��Right=�6�   .��5-      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]   Kind$ WindowMinimize=�62   6J   5.      �� 5/      -   5        $��btDong��5/      
 . 
���   �
���   �$ Đóng��6�   $��0,0,5,0q�6�   $��Right=�6�   .��50        $ WindowClose=�62   6G   51      52      53      55      #  MaterialDesignThemes.Wpf.Card  57   
    J� Opacity$
 0.84Q�6   $��5q�6-   $��1��68   $��Stretch=�6E   $��Stretch=�6a   .��58      �  5:      �� 5;      6&   �� 5<      6&   �� 5=      $
��0.5* �6$   64   �� 5>      6&   .+�5@      � $��15,10,15,10q�6   $��0��6,    5A      �� 5B      6-   �� 5C      $
��9.5* �6+   6:   .+�5E        $��25��6.   $��25��69   $ Account=�6E   $��0��6U   $��Bottom=�6e   $��Center=�6�   $��10q�6�   �� 5F      -   5        $��txtDangNhap��5F      $��1��61   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tài khoản:��5G       % !MaterialDesignFloatingHintTextBox#��[ 5H      5I      � 5J      $��15,10,15,10q�6   $��1��6,    5K      �� 5L      6-   �� 5M      $
��9.5* �6+   6:   .+�5O        $��25��6.   $��25��69   $	 Key=�6E   $��0��6Q   $��Bottom=�6a   $��Center=�6|   $��10q�6�   G� 5P      -   5         G�Name$ 
txtMatKhau��5Q      $��1��5P   #   $ Mật khẩu:��5R       ) %MaterialDesignFloatingHintPasswordBox#��[ 5S      5T      �� 5V      $��25,0,0,0q�6   $	 
Horizontal=�6/   $��2��6H   .+�5W      �� -   5        $��checkDangNhap��5W        MaterialDesignCheckBox#��[ 5X      .��65   	Ghi nhớ5Z      5[      � 5]      $��3��6    5^      �� 5_      6-   �� 5`      6-   �� 5a      6-   .+�5c      � $��15q�6   $��0��6'   .+�5d      �� -   5        $��btDangKy��5d   !   
���2�2�
���2�2�  MaterialDesignRaisedButton#��[ 5e      $	��100��5f      $ 
Đăng ký��5g      .��6H   
Đăng ký5i      5j      � 5k      $��15q�6   $��1��6'   .+�5l      �� -	   5        $��btDongY��5l   !    $  MaterialDesignRaisedAccentButton#��[ 5m      $	��102��5n      $ Đăng nhập��5o      .��6G   Đăng nhập5q      5r      � 5s      $��5q�6   $��2��6&   .+�5t      �� -
   5        $��btQuenMatKhau��5t   !   
��� ���
��� ��� "	 MaterialDesignRaisedDarkButton#��[	 5u      $	��130��5v      $ Quên mật khẩu��5w      .��6Q   Quên mật khẩu5y      5z      5{      5|      5}      5~      5      