   M S B A M L   `   `   `  ����J  FQuanLyPhongMach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:QuanLyPhongMachQuanLyPhongMach  5   	   !    QuanLyPhongMach.QuenMatKhau   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:QuanLyPhongMach     5   	   V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	     � WindowStyle$
  None=�5       � 
ResizeMode$ NoResize=�6-   
���   �$��5q�6W    � Title$ QuenMatKhau��5   	   $	��300��6   $	��500��6*      MaterialDesignBody#���   5
      $��Regular"�5      $��13(�5       � WindowStartupLocation$ CenterScreen=�6    &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5         TextRenderingMode$
 Auto=�5        MaterialDesignPaper#���  5        MaterialDesignFont#���  5      .��5      �  � RowDefinitions 5   
   �� 5      6   �� 5      $
��6.5* �6   6,   .+�5   
   (  "MaterialDesignThemes.Wpf.ColorZone  -   5        $��TitleBar��5   W   
���   �$��0��6g      Mode$ Inverted=�5      $��40��6   .��5      �  � ColumnDefinitions 5      �� 5      6)   �� 5      6)   .+�5      �� $��Center=�6   $
��Left=�67   $��0��6R   $��10,0,0,0q�6b    # MaterialDesignHeadlineTextBlock#��[ 5      Quên mật khẩu5!      �� 5"      $��2��6   $��Right=�6-   $��Center=�6I   $��30��6d   	 �� Orientation$	 
Horizontal=�5#      .+�5%      �� -   5        $��btThuNho��5%      +  %MaterialDesignThemes.Wpf.RippleAssist
   
IsDisabled
 . 
���   �
���   � � ToolTip$ 	Thu nhỏ��6�   $��0,0,5,0q�6�   $��Right=�6�   .��5&      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]   Kind$ WindowMinimize=�62   6J   5'      �� 5(      -   5        $��btDong��5(      
 . 
���   �
���   �$ Đóng��6�   $��0,0,5,0q�6�   $��Right=�6�   .��5)        $ WindowClose=�62   6G   5*      5+      5,      5.      � 5/   
   $��1��6   ��50      �� 51      -   5        hinh1QuenMK�� �� Opacity$	 0.4Q�51   2   6B    53      �� 54      6"   �� 55      6"   �� 56      6"   .+�58      �� -   5        $��tbTenTaiKhoan��58   $   $��20(�6   $��10q�69   $��0��6E   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Mã số nhân viên��59       % !MaterialDesignFloatingHintTextBox#��[ 5:      G� 5<      -   5         G�Name$ tbMaPin��5=      $��20(�5<      $��1��6(   $��10q�65   $  Mã Pin của tài khoản��5>      � 5@      $��2��6    5A      �� 5B      6)   �� 5C      6)   .+�5E      �� -   5        $��btDongY��5E      $��0��6(    $  MaterialDesignRaisedAccentButton#��[ 5F      $	��100��5G      $ Tìm mật khẩu��5H      .��6   
Đồng ý5J      �� 5K      -   5        $��btHuy��5K   D   
���  ��
���  ��$��1��6Q   #��[ 5L      $	��100��5M      $ Quay về đăng nhập��5N      .��65   
Hủy bỏ5P      5Q      5R      5S      5T      