   M S B A M L   `   `   `  ���� J  FQuanLyPhongMach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:QuanLyPhongMachQuanLyPhongMach  #    QuanLyPhongMach.GiaoDienThuoc   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     /localclr-namespace:QuanLyPhongMach     V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes     MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�   TextRenderingMode$
 Auto=�  MaterialDesignPaper#���    MaterialDesignFont#���  .��� ���� -   hinhGiaoDienThuoc��.+�#  MaterialDesignThemes.Wpf.Card  $��Stretch=�$��Stretch=�$��20q� J� Opacity$
 0.84Q�.���  � RowDefinitions �� $��0.08* ��� $��1* ��� $
��1.2* �.+��� $��Center=�$��Center=�   MaterialDesignTitleTextBlock#��[ Thông Tin Thuốc� $��1�� �� $��1* ��� �� $
��2.5* �.+��� $��Center=�$��Center=�$��0�� # MaterialDesignDisplay2TextBlock#��[ Thống kê thuốc�� $��1��$��Right=�$��Center=� �� Orientation$ 
Horizontal=�.+��� -   $��tbTimThongKe��$��0,0,10,0q�$	 0.7Q�
�������$��Center=�$	��200���� -   $��btTimThongKe��
�������$��0,0,10,0q�$��Center=���Z� .���� $��Center=�$��24��$��18��$��image/magnify.png�� J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect     	Direction$ 25Q�   Color$ 	#FFB6C2CB��   ShadowDepth$ 2Q�	   
BlurRadius$	 1Q�� $��2��.+�&   System.Windows.Controls.DataGrid  -   $��dtThongKeThuoc��$��1q�
���   �$
 0.84Q�$��Stretch=�$��	10,0,10,0q�
   CanUserSortColumns
 .    CanUserAddRows .     AutoGenerateColumns .  -  'MaterialDesignThemes.Wpf.DataGridAssist   CellPadding$ 13 8 8 8q�   ColumnHeaderPadding$ 8q����� *	TThuocs+   RowStyle ��  �� 
TargetType)  #System.Windows.Controls.DataGridRow"  .���  �� Property �@ 
IsSelected �� Value �� *
IsSelected+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�   Columns 9  3MaterialDesignThemes.Wpf.MaterialDataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   HeaderStyle �� =	  7System.Windows.Controls.Primitives.DataGridColumnHeader" 	  & "MaterialDesignDataGridColumnHeader �� BasedOn# [ .���  � ��$ Center=�1
  +System.Windows.Controls.DataGridBoundColumn 
  ElementStyle �� " ��.���  � ��$ Center=�     Width5  /System.Windows.Controls.DataGridLengthConverter$	 200    Header$ Tên thuốc�� 0 ,MaterialDesignDataGridTextColumnEditingStyle 
  EditingElementStyle# [  
  Binding �� *
TenThuoc+  $	 200 $ 
Đơn vị�� 5 1MaterialDesignDataGridTextColumnPopupEditingStyle# [  �� *DonVi+  $	 200 $ Số lượng tồn��# [  �� *
SoLuongTon+� $��2�� �� $��1* ��� �� $
��2.5* �.+��� $��Center=�$��Center=�$��0��#��[ Danh sách thuốc� $��1�� � ColumnDefinitions �� $��2* ��� $
��0.6* ��� $��1* �.+��� $��10,0,0,0q�$��Center=�$��Center=�$ 
Horizontal=�.+��� -   $��
tbTenThuoc��$	��150��)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tên thuốc�� % !MaterialDesignFloatingHintTextBox#��[ �� -   $��
cbCachDung��$	��150��$ Cách dùng��$��10,0,0,0q� &	 "MaterialDesignFloatingHintComboBox#��[	 .@��� .��Sáng�� .��Trưa�� .��	Chiều�� .��Tối�� -   $��cbDonVi��$	��100��$��10,0,0,0q�$ 
Đơn vị��#��[	 .@��� .��Viên�� .��Chai�� -   $��tbGia��$	��100��$��10,0,0,0q�$
 Giá��#��[ �� $��Right=�$ 
Horizontal=�$��1��.+��� -	   $��btThemThuoc�� /
 +MaterialDesignFloatingActionMiniLightButton#��[
  � ToolTip$ Thêm thuốc��.��'  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]    Kind$
  Plus=�$��24��$��24���� -
   $��
btXoaThuoc��$��10,0,0,0q�#��[
 $ Xóa thuốc��.��  $  Trash=�$��24��$��24���� -   $��
btSuaThuoc��$��10,0,0,0q�#��[
 $ Sửa thuốc��.��  $  Pencil=�$��24��$��24���� $��2��$��Right=�$��Center=�$ 
Horizontal=�.+��� -   $��
tbTimThuoc��$��0,0,10,0q�$	 0.7Q�
�������$��Center=�$	��200���� -   $��
btTimThuoc��
�������$��0,0,10,0q�$��Center=���Z� .���� $��Center=�$��24��$��18��$��image/magnify.png��   $ 25Q�$ 	#FFB6C2CB��$ 2Q�$	 1Q�� $��2��.+�  -   $��dtDanhSachThuoc��$��1q�
���   �$
 0.84Q�$��Stretch=�$��	10,0,10,0q�
 .  .   .  $ 13 8 8 8q�$ 8q����� *	TThuocs+ �� "  .���  �@ 
IsSelected �� *
IsSelected+$ TwoWay=�$ PropertyChanged=�    �� " 	 # [ .���  � ��$ Center=� �� " ��.���  � ��$ Center=�  $	 150 $ Tên thuốc��# [  �� *
TenThuoc+  $	 150 $ Cách dùng��# [  �� *
CachDung+  $	 150 $ 
Đơn vị��# [  �� *DonVi+  $
 Giá��$	 150 # [  �� *Gia+