   M S B A M L   `   `   `  ����J  FQuanLyPhongMach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:QuanLyPhongMachQuanLyPhongMach  5   	   "    QuanLyPhongMach.SuaPhieuKham   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:QuanLyPhongMach     5   	   V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	     � WindowStartupLocation$  CenterScreen=�5   	    � Title$ SuaPhieuKham��6.   $	��770��6C   $
��1050��6P      MaterialDesignBody#���   5
   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	    � 
ResizeMode$ NoResize=�60    � WindowStyle$
 None=�6F      TextRenderingMode$
 Auto=�5   	   $��5q�6.   
���   �  MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	   .��5      � ��5   
   �� 5      -   5        hinhSuaPhieuKham��5   6    � RowDefinitions 5   
   �� 5      6   �� 5      $	��12* �6   6+   .+�5   
   (  "MaterialDesignThemes.Wpf.ColorZone  -   5        $��TitleBar��5   V   $��0��6f      Mode$ Inverted=�5   #   $��50��63   .��5      �  � ColumnDefinitions 5      �� 5      6)   �� 5      6)   �� 5      6)   .+�5!      �� $��Center=�6   $��30,0,0,0q�67   $��0��6K    # MaterialDesignHeadlineTextBlock#��[ 5"      Sửa phiếu khám5$      �� 5%      $��2��6   $��Right=�6-   $��Center=�6I   $��30��6d   	 �� Orientation$	 
Horizontal=�5&      .+�5(      �� -   5        $��btThuNho��5(      +  %MaterialDesignThemes.Wpf.RippleAssist
   
IsDisabled
 . 
���   �
���   � � ToolTip$ 	Thu nhỏ��6�   $��0,0,5,0q�6�   $��Right=�6�   .��5)      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]   Kind$ WindowMinimize=�62   6J   5*      �� 5+      -   5        $��btDong��5+      
 . 
���   �
���   �$ Đóng��6�   $��0,0,5,0q�6�   $��Right=�6�   .��5,        $ WindowClose=�62   6G   5-      5.      5/      50      � 52   
   $��	10,0,10,0q�6   $��1��6"    53      �� 54      6"   �� 55      6"   �� 56      6"   �� 57      6"   �� 58      $��5* �6    6.   .+�5:      � $��Center=�6   $��0��6.    5;      �� 5<      6)   �� 5=      6)   .+�5?      �� -   5        $��tbTenBenhNhan��5?   *   $��0��6   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Họ tên bệnh nhân��5@   "    % !MaterialDesignFloatingHintTextBox#��[ 5A   "   �� 5B      -   5        $��tbDCBenhNhan��5B   *   $��1��6   $��10,0,0,0q�6>   $ Địa chỉ bệnh nhân��5C   "   #��[ 5D   "   5E      � 5F      $��Center=�6   $��1��6.   .+�5G      �� $	 
Horizontal=�6   .+�5H      (  "System.Windows.Controls.DatePicker  -   5        $��
dpNgaySinh��5H   !   $��0,0,20,0q�63   $	��150��5I   )   $��40��65   $ 
Ngày sinh��5J   )    ( $MaterialDesignFloatingHintDatePicker#��[ 5K   )   �� 5L      $��0,20,0,0q�6   $��Center=�6/   .��6J   Giới tính:6V   	� 5M      -   5        $��rbnNam��5M   4   $��0,20,0,0q�6"    d� 	IsChecked$
 TrueY�6B   $��Center=�6T     MaterialDesignRadioButton#��[ 5N   +   .��6^   Nam5P      	� 5Q      -	   5        $��rbnNu��5Q   5   $��	10,20,0,0q�6"   $��Center=�6B   #��[ 5R   *   .��6]   Nữ5T      �� 5U      -
   5        $��tbSDTBN��5U   *   $	��150��6   $��20,0,0,0q�69   $ SĐT bệnh nhân��5V   "   #��[ 5W   "   �� 5X      -   5        $��tbCMND��5X   *   $	��150��6   $��20,0,0,0q�68   $ CMND bệnh nhân��5Y   "   #��[ 5Z   "   5[      5]      � 5^      $��Center=�6   $��2��6.   .+�5_      �� -   5        $��cbBacSi��5_      $ Bác sĩ��5`       �� 
IsEditable .  & "MaterialDesignFloatingHintComboBox#��[ 5b      5c      5d      � 5e      $��Center=�6   $��3��6.    5f      �� 5g      6)   �� 5h      6)   .+�5j      �� -   5        $��tbTrieuChung��5j   ,   $��10,0,0,0q�6   $��1��6@   $ Triệu chứng��5k   	   #��[ 5l   	   �� 5m      -   5        $��cbBenh��5m      $��0��6*   $��Bottom=�6:   $ Bệnh��5n       . #��[ 5p      5r      5s      � 5t      $��4��6    5u      �� 5w      $��5* �6$   62   �� 5x      $
��1.5* �6$   64   .+�5{      �� $��Center=�6   $��Center=�68   $	 
Horizontal=�6U   $��0��6n   5~      � 5�      $��0,0,0,10q�6   $��0��6)   .+�5�      &   System.Windows.Controls.DataGrid  -   5        $��	dtThuocKe��5�   L    J� Opacity$
 0.84Q�6   $��Stretch=�6.   $��1��6]   $��
10,0,10,10q�5�      
���   �$��1q�5�   +      CanUserSortColumns .    CanUserAddRows .     AutoGenerateColumns .  -	  'MaterialDesignThemes.Wpf.DataGridAssist 	  CellPadding$ 13 8 8 8q�5�       	  ColumnHeaderPadding$ 8q�5�      ��5�      �� *	TThuocKes+   RowStyle 5�      �� 5�       �� 
TargetType)
  #System.Windows.Controls.DataGridRow" 
 6$   .�5�   "   ��  �� Property �@
 
IsSelected �� Value 6?   �� *
IsSelected+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�5�         Columns 5�      9  3MaterialDesignThemes.Wpf.MaterialDataGridTextColumn  5�      ,  &System.Windows.Controls.DataGridColumn   HeaderStyle 5�   "   �� 5�   &   =  7System.Windows.Controls.Primitives.DataGridColumnHeader"  5�       & "MaterialDesignDataGridColumnHeader �� BasedOn# [ 5�      .�5�   *   ��  � ��$ Center=�5�      5�   '   1  +System.Windows.Controls.DataGridBoundColumn   ElementStyle 5�   "   �� 5�   &   " ��5�      .�5�   *   ��  � ��$ Center=�5�      5�   '   5�        5�          Header$  Tên thuốc��5�       5	 1MaterialDesignDataGridTextColumnPopupEditingStyle!   EditingElementStyle#! [	 5�      "   Binding" 5�      �� *
TenThuoc+5�        5�      $  Số lượng ��5�   -   #! [	 5�   -   " 5�   -   �� *	SoLuong+5�   -     5�      $  
Đơn vị��5�      #! [	 5�      " 5�      �� *DonVi+5�        5�      $  Cách dùng��5�      #! [	 5�      " 5�      �� *
CachDung+5�        5�      $
  Giá��5�      #! [	 5�      " 5�      �� *Gia+5�      5�      5�      � 5�      $��1��6    5�      �� 5�      6-   �� 5�      6-   .+�5�      �� -   5        $��btDongY��5�   -   $��0��6    $
  MaterialDesignRaisedAccentButton#��[
 5�      $	��100��5�      $��60��6!   $��Center=�6-   $��Center=�6H   $$ Đồng ý sửa phiếu khám��5�      .��65   
Đồng ý5�      �� 5�      -   5        $��btHuy��5�      $��1��6*   
���  ��
���  ��
�������#��[
 5�      $	��100��5�      $��60��6%   $��Center=�61   $��Center=�6L   $ Hủy sửa phiếu khám��5�      .��6K   
Hủy bỏ5�      5�      5�      5�      5�      5�      