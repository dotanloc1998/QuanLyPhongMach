   M S B A M L   `   `   `  ����J  FQuanLyPhongMach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:QuanLyPhongMachQuanLyPhongMach  5      #    QuanLyPhongMach.GiaoDienThuoc   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      /localclr-namespace:QuanLyPhongMach     5      V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	         MaterialDesignBody#���   5
      $��Regular"�5      $��13(�5      &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5         TextRenderingMode$
 Auto=�5        MaterialDesignPaper#���  5        MaterialDesignFont#���  5      .��5      � ��5   
   �� 5      -   5        hinhGiaoDienThuoc��5   7   .+�5   
   #  MaterialDesignThemes.Wpf.Card  $��Stretch=�6   $��Stretch=�6<   $��20q�6X    J� Opacity$
 0.84Q�6d   .��5      �  � RowDefinitions 5      �� 5      $��0.08* �6$   65   �� 5      $��1* �6$   62   �� 5      $
��1.2* �6$   64   .+�5      �� $��Center=�6   $��Center=�69      MaterialDesignTitleTextBlock#��[ 5      Thông Tin Thuốc5      � 5       $��1��6    5!      �� 5"      $��1* �6(   66   �� 5#      6*   �� 5$      $
��2.5* �6(   68   .+�5&      �� $��Center=�6    $��Center=�6;   $��0��6X    # MaterialDesignDisplay2TextBlock#��[ 5'      Thống kê thuốc5)      �� 5*      $��1��6!   $��Right=�6.   $��Center=�6J    �� Orientation$ 
Horizontal=�6e   .+�5+      �� -   5        $��tbTimThongKe��5+   "   $��0,0,10,0q�66   $	 0.7Q�6H   
�������$��Center=�6i   $	��200��6�   6�   �� 5,      -   5        $��btTimThongKe��5,   O   
�������$��0,0,10,0q�6c   $��Center=�6u   ��6!   Z� .��5-      �� $��Center=�6$   $��24��6A   $��18��6M   $��image/magnify.png��6X    J� Effect 5.   "   3  -System.Windows.Media.Effects.DropShadowEffect  5/   &      	Direction$ 25Q�67      Color$ 	#FFB6C2CB��6F      ShadowDepth$ 2Q�6X   	   
BlurRadius$	 1Q�6h   51      52      53      � 54      $��2��6   .+�55      &   System.Windows.Controls.DataGrid  -   5        $��dtThongKeThuoc��55   x   $��1q�6#   
���   �$
 0.84Q�6K   $��Stretch=�6Z   $��	10,0,10,0q�56      
   CanUserSortColumns
 .    CanUserAddRows .     AutoGenerateColumns .  -  'MaterialDesignThemes.Wpf.DataGridAssist   CellPadding$ 13 8 8 8q�5;         ColumnHeaderPadding$ 8q�5<      ��57      �� *	TThuocs+   RowStyle 5>      �� 5?   "    �� 
TargetType)  #System.Windows.Controls.DataGridRow"  6(   .�5@   &   ��  �� Property �@ 
IsSelected �� Value 6C   �� *
IsSelected+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�5A   #      Columns 5D      9  3MaterialDesignThemes.Wpf.MaterialDataGridTextColumn  5F   "   ,  &System.Windows.Controls.DataGridColumn   HeaderStyle 5G   &   �� 5H   *   =	  7System.Windows.Controls.Primitives.DataGridColumnHeader" 	 5I       & "MaterialDesignDataGridColumnHeader �� BasedOn# [ 5J      .�5K   .   ��  � ��$ Center=�5M      5N   +   1
  +System.Windows.Controls.DataGridBoundColumn 
  ElementStyle 5P   &   �� 5Q   *   " ��5R      .�5S   .   ��  � ��$ Center=�5U      5V   +   5X   #     5Z   "      Width5  /System.Windows.Controls.DataGridLengthConverter$	 200 5[   $      Header$ Tên thuốc��5\       0 ,MaterialDesignDataGridTextColumnEditingStyle 
  EditingElementStyle# [ 5]       
  Binding 5[      �� *
TenThuoc+5]        5_   "   $	 200 5`   !   $ 
Đơn vị��5a       5 1MaterialDesignDataGridTextColumnPopupEditingStyle# [ 5b       5`      �� *DonVi+5b        5d   "   $	 200 5e   &   $ Số lượng tồn��5f      # [ 5g       5e      �� *
SoLuongTon+5g      5k      5m      5n      � 5p      $��2��6    5q      �� 5r      $��1* �6(   66   �� 5s      6*   �� 5t      $
��2.5* �6(   68   .+�5v      �� $��Center=�6    $��Center=�6;   $��0��6X   #��[ 5w      Danh sách thuốc5y      � 5{      $��1��6    � ColumnDefinitions 5|      �� 5}      $��2* �6/   6<   �� 5~      $
��0.6* �6/   6>   �� 5      $��1* �6/   6<   .+�5�      �� $��10,0,0,0q�6%   $��Center=�67   $��Center=�6R   $ 
Horizontal=�6p   .+�5�      �� -   5        $��
tbTenThuoc��5�   2   $	��150��6&   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tên thuốc��5�   !    % !MaterialDesignFloatingHintTextBox#��[ 5�   !   �� 5�      -   5        $��
cbCachDung��5�   3   $	��150��6'   $ Cách dùng��5�      $��10,0,0,0q�6.    &	 "MaterialDesignFloatingHintComboBox#��[	 5�      .@�5�   "   �� .��6/   Sáng5�   #   �� 5�   "   .��6/   Trưa5�   #   �� 5�   "   .��6/   	Chiều5�   #   �� 5�   "   .��6/   Tối5�   #   5�      �� 5�      -   5        $��cbDonVi��5�   E   $	��100��6'   $��10,0,0,0q�63   $ 
Đơn vị��5�   !   #��[	 5�   !   .@�5�   "   �� .��6/   Viên5�   #   �� 5�   "   .��6/   Chai5�   #   5�      �� 5�      -   5        $��tbGia��5�   D   $	��100��6&   $��10,0,0,0q�62   $
 Giá��5�   !   #��[ 5�   !   5�      �� 5�      $��Right=�6%   $ 
Horizontal=�6A   $��1��6Z   .+�5�      �� -	   5        $��btThemThuoc��5�   %    /
 +MaterialDesignFloatingActionMiniLightButton#��[
 5�   !    � ToolTip$ Thêm thuốc��5�   !   .��5�   "   '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]    Kind$
  Plus=�5�   !   $��24��5�   !   $��24��5�   !   5�      �� 5�      -
   5        $��
btXoaThuoc��5�   7   $��10,0,0,0q�6%   #��[
 5�   !   $ Xóa thuốc��5�   !   .��5�   "     $  Trash=�5�   !   $��24��5�   !   $��24��5�   !   5�      �� 5�      -   5        $��
btSuaThuoc��5�   7   $��10,0,0,0q�6%   #��[
 5�   !   $ Sửa thuốc��5�   !   .��5�   "     $  Pencil=�5�   !   $��24��5�   !   $��24��5�   !   5�      5�      �� 5�      $��2��6%   $��Right=�65   $��Center=�6Q   $ 
Horizontal=�6l   .+�5�      �� -   5        $��
tbTimThuoc��5�   &   $��0,0,10,0q�68   $	 0.7Q�6J   
�������$��Center=�6k   $	��200��6�   6�   �� 5�      -   5        $��
btTimThuoc��5�   S   
�������$��0,0,10,0q�6e   $��Center=�6w   ��6%   Z� .��5�   "   �� $��Center=�6(   $��24��6E   $��18��6Q   $��image/magnify.png��6\    5�   &     5�   *   $ 25Q�6;   $ 	#FFB6C2CB��6J   $ 2Q�6\   $	 1Q�6l   5�   #   5�      5�      5�      � 5�      $��2��6   .+�5�        -   5        $��dtDanhSachThuoc��5�   x   $��1q�6#   
���   �$
 0.84Q�6K   $��Stretch=�6Z   $��	10,0,10,0q�5�      
 .  .   .  $ 13 8 8 8q�5�      $ 8q�5�      ��5�      �� *	TThuocs+ 5�      �� 5�   "   "  6(   .�5�   &   ��  �@ 
IsSelected 6C   �� *
IsSelected+$ TwoWay=�$ PropertyChanged=�5�   #    5�        5�   "    5�   &   �� 5�   *   " 	 5�      # [ 5�      .�5�   .   ��  � ��$ Center=�5�      5�   +    5�   &   �� 5�   *   " ��5�      .�5�   .   ��  � ��$ Center=�5�      5�   +   5�   #     5�   "   $	 150 5�   $   $ Tên thuốc��5�      # [ 5�       5�      �� *
TenThuoc+5�        5�   "   $	 150 5�   $   $ Cách dùng��5�      # [ 5�       5�      �� *
CachDung+5�        5�   "   $	 150 5�   !   $ 
Đơn vị��5�      # [ 5       5�      �� *DonVi+5        5  "   $
 Giá��5     $	 150 6   # [ 5      5     �� *Gia+5     5     5
     5     5     5     5     5     