   M S B A M L   `   `   `  ����J  FQuanLyPhongMach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:QuanLyPhongMachQuanLyPhongMach  5   	       QuanLyPhongMach.KeThuoc   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   X TXceed.Wpf.Toolkit, Version=3.4.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5   	   :d2http://schemas.microsoft.com/expression/blend/2008  5   	   Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5   	   )localclr-namespace:QuanLyPhongMach  5   	   V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
   	     � WindowStartupLocation$  CenterScreen=�5	   	    � Title$ KeThuoc��6.   $	��770��6>   $
��1050��6K      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	    � 
ResizeMode$ NoResize=�60    � WindowStyle$
 None=�6F      TextRenderingMode$
 Auto=�5   	   $��5q�6.   
���   �  MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	   .��5      � ��5   
   �� 5      -   5        hinhKeThuoc��5   1    � RowDefinitions 5   
   �� 5      6   �� 5      $	��12* �6   6+   .+�5   
   (  "MaterialDesignThemes.Wpf.ColorZone  -   5        $��TitleBar��5   V   $��0��6f      Mode$ Inverted=�5   #   $��50��63   .��5      �  � ColumnDefinitions 5      �� 5      6)   �� 5      6)   �� 5       6)   .+�5"      �� $��Center=�6   $��30,0,0,0q�67   $��0��6K    # MaterialDesignHeadlineTextBlock#��[ 5#      Kê thuốc5%      �� 5&      $��2��6   $��Right=�6-   $��Center=�6I   $��30��6d   	 �� Orientation$	 
Horizontal=�5'      .+�5)      �� -   5        $��btThuNho��5)      +  %MaterialDesignThemes.Wpf.RippleAssist
   
IsDisabled
 . 
���   �
���   � � ToolTip$ 	Thu nhỏ��6�   $��0,0,5,0q�6�   $��Right=�6�   .��5*      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]   Kind$ WindowMinimize=�62   6J   5+      �� 5,      -   5        $��btDong��5,      
 . 
���   �
���   �$ Đóng��6�   $��0,0,5,0q�6�   $��Right=�6�   .��5-        $ WindowClose=�62   6G   5.      5/      50      51      � 53   
   $��1��6    54      �� 55      $
��0.5* �6    60   �� 56      6"   �� 57      $��5* �6    6.   �� 58      6"   .+�5:      �� $��0��6   $��Center=�6%   $��Center=�6B      MaterialDesignTitleTextBlock#��[ 5;      Kê thuốc5=      � 5>      $��	10,0,10,0q�6   $��1��6&    5?      �� 5@      6)   �� 5A      $
��0.5* �6'   66   �� 5B      6)   �� 5C      6)   .+�5F      �� -   5        $��cbThuoc��5F   Q   $��25(�6C   $��0��6`   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Thuốc��5G       �� 
IsEditable .  & "MaterialDesignFloatingHintComboBox#��[ 5I      5J      �� 5K      $��1��6   $	 
Horizontal=�6-   $��Center=�6F   .+�5L      �� $��25(�6   $��0,15,0,0q�6*   $��Center=�6<   .��6W   SL:6\   %  Xceed.Wpf.Toolkit.DecimalUpDown  5M      -   5        $
��dpSL��5M   )   �  �Xceed.Wpf.Toolkit.Primitives.UpDownBase`1[[System.Nullable`1[[System.Decimal, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]   Value$ 0X�65      Minimum$ 0X�6?   $��0,10,0,0q�6L   $��Center=�6^   $��40��6y   $��70��6�   6�   5N      �� 5O      -   5        $��tbDonVi��5O   J   $��25(�6   {�.  $��2��6:   $��10,0,0,0q�6Y   $ 
Đơn vị��5P      $��Center=�6+   $��Stretch=�6F    % !MaterialDesignFloatingHintTextBox#��[ 5Q      �� 5R      -   5        $��
tbCachDung��5R   J   $��25(�6   {�.  $��3��6:   $��10,0,0,0q�6\   $ 
Đơn vị��5S      $��Center=�6+   $��Stretch=�6F   #��[ 5T      5U      � 5W      $��2��6    5X      �� 5Y      6&   �� 5Z      $��7* �6$   62   .+�5\      �� -	   5        $��btThemThuoc��5\      $��0��6,   $��Right=�69   $	��Top=�6U    / +MaterialDesignFloatingActionMiniLightButton#��[ 5]      $��0,0,40,0q�6^   $ Thêm thuốc��5^      $��50��6.   $��50��69   .��5_        $ Medicine=�5`      $��30��5a      $��30��5b      5c      &	   System.Windows.Controls.DataGrid	  5d      -
   5        $��	dtKeThuoc��5d   H    J� Opacity$
 0.84Q�6   $��Stretch=�6*   $��1��6Y   $��
10,0,10,10q�5e      
���   �$��1q�5g   +    	  CanUserSortColumns .  	  CanUserAddRows .   	  AutoGenerateColumns .  -
  'MaterialDesignThemes.Wpf.DataGridAssist 
  CellPadding$ 13 8 8 8q�5l       
  ColumnHeaderPadding$ 8q�5m       	  RowStyle 5o      �� 5p       �� 
TargetType)  #System.Windows.Controls.DataGridRow"  6    .�5q      ��  �� Property �@ 
IsSelected �� Value 6;   �� *
IsSelected+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�5r       	  Columns 5u      9  3MaterialDesignThemes.Wpf.MaterialDataGridTextColumn  5w      ,  &System.Windows.Controls.DataGridColumn   HeaderStyle 5x      �� 5y   "   =  7System.Windows.Controls.Primitives.DataGridColumnHeader"  5z       & "MaterialDesignDataGridColumnHeader �� BasedOn# [ 5{      .�5|   &   ��  � ��$ Center=�5~      5   #   1  +System.Windows.Controls.DataGridBoundColumn    ElementStyle  5�      �� 5�   "   " ��5�      .�5�   &   ��  � ��$ Center=�5�      5�   #   5�        5�      !   Width5  /System.Windows.Controls.DataGridLengthConverter$	! 150 5�   $   "   Header$" Tên thuốc��5�       5	 1MaterialDesignDataGridTextColumnPopupEditingStyle#   EditingElementStyle## [	 5�      $   Binding$ 5�      �� *
TenThuoc+5�        5�      $" Số lượng ��5�   -   $	! 150 6@   ## [	 5�   -   $ 5�   -   �� *	SoLuong+5�   -     5�      $" 
Đơn vị��5�      $	! 150 6   ## [	 5�      $ 5�      �� *DonVi+5�        5�      $" Cách dùng��5�      $	! 150 6   ## [	 5�      $ 5�      �� *
CachDung+5�        5�      $
" Giá��5�      $	! 150 6   ## [	 5�      $ 5�      �� *Gia+5�      5�      5�      � 5�      $��3��6    5�      �� 5�      6)   �� 5�      6)   .+�5�      �� -   5        $��btDongY��5�   )   $��0��6    $
  MaterialDesignRaisedAccentButton#��[
 5�      $	��100��5�      $��60��6%   $��Center=�61   $��Center=�6L   $ Đồng ý kê thuốc��5�      .��6I   
Đồng ý5�      �� 5�      -   5        $��btHuy��5�      $��1��6&   
���  ��
���  ��
�������#��[
 5�      $	��100��5�      $��60��6%   $��Center=�61   $��Center=�6L   $ Hủy kê thuốc��5�      .��6E   
Hủy bỏ5�      5�      5�      5�      5�      