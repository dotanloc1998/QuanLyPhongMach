   M S B A M L   `   `   `  ���� J  FQuanLyPhongMach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:QuanLyPhongMachQuanLyPhongMach  #    QuanLyPhongMach.GiaoDienAdmin   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     /localclr-namespace:QuanLyPhongMach     V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes     MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�   TextRenderingMode$
 Auto=�  MaterialDesignPaper#���    MaterialDesignFont#���  .��� ���� -   	hinhAdmin�� � RowDefinitions �� $
��0.1* ��� �� .+��� $��0��$��Center=�$��Center=�   MaterialDesignTitleTextBlock#��[ Administrator� $��1�� � ColumnDefinitions �� �� .+�� $��10,0,0,0q�$��0�� �� �� �� �� .+��� $��0��)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Mã người dùng�� & "MaterialDesignFloatingHintComboBox#��[ �� $��1��$��20(�{�.  $ Tên người dùng�� % !MaterialDesignFloatingHintTextBox#��[ �� $��2��$ Quyền��#��[ �� $��3��$ Chức vụ��#��[ � $��1�� �� �� $��9* �.+��� $��0��$��Right=�$��Center=� �� Orientation$ 
Horizontal=�.+��� -   $��
tbTimThuoc��$��0,0,10,0q� J� Opacity$	 0.7Q�
�������$��Center=�$	��200���� -   $��
btTimThuoc��
�������$��0,0,10,0q�$��Center=���Z� .���� $��Center=�$��24��$��18��$��image/magnify.png�� J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect     	Direction$ 25Q�	   Color$	 	#FFB6C2CB��
   ShadowDepth$
 2Q�   
BlurRadius$ 1Q�&   System.Windows.Controls.DataGrid  -   $��dtNguoiDung��$��1��$
 0.84Q�$��Stretch=�$��10,5,5,5q�
���   �$��1q�   CanUserSortColumns .    CanUserAddRows .     AutoGenerateColumns .  -  'MaterialDesignThemes.Wpf.DataGridAssist   CellPadding$ 13 8 8 8q�   ColumnHeaderPadding$ 8q����� *
TNhanViens+   RowStyle ��  �� 
TargetType)  #System.Windows.Controls.DataGridRow"  .���  �� Property �@ 
IsSelected �� Value �� *
IsSelected+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�   Columns 9  3MaterialDesignThemes.Wpf.MaterialDataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   HeaderStyle �� =	  7System.Windows.Controls.Primitives.DataGridColumnHeader" 	  & "MaterialDesignDataGridColumnHeader �� BasedOn# [ .���  � ��$ Center=�1
  +System.Windows.Controls.DataGridBoundColumn 
  ElementStyle �� " ��.���  � ��$ Center=�     Width5  /System.Windows.Controls.DataGridLengthConverter$	 150    Header$ Mã người dùng�� 5 1MaterialDesignDataGridTextColumnPopupEditingStyle 
  EditingElementStyle# [  
  Binding �� *MaNV+  $ Tên ��$	 100 # [  �� *	HoTenNV+  $ Quyền��$	 100 # [  �� *Quyen+  $ Chức vụ��$	 150 # [  �� *ChucVu+� $��2�� �� �� $��7* �.+��� $��0,0,50,0q�$��Right=�$��Center=�$ 
Horizontal=�$��0��.+��� -   $��btXoaNguoiDung��$��10,0,0,0q� / +MaterialDesignFloatingActionMiniLightButton#��[  � ToolTip$ Xóa thuốc��.��'  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]    Kind$  Trash=�$��24��$��24���� -   $��btSuaNguoiDung��$��10,0,0,0q�#��[ $ Sửa thuốc��.��  $  Pencil=�$��24��$��24��� $��10,0,0,0q�$
��Left=�$��1�� �� �� �� �� �� �� .+��� $��0��$ 
Horizontal=�$��Center=�$��Center=�.+��� -   $��tbSoLuongBenhNhan��$��0,0,10,0q�$  Số lượng bệnh nhân��$	��150��#��[ �� -   $��btSoLuongBenhNhan��.��  $  Settings=�$��24��$��24���� $��1��$ 
Horizontal=�$��Center=�$��Center=�.+��� -	   $��tbSoBenh��$��0,0,10,0q�$ Số bệnh��$	��150��#��[ �� -
   $��btSoBenh��.��  $  Settings=�$��24��$��24���� $��2��$ 
Horizontal=�$��Center=�$��Center=�.+��� -   $��tbSoLoaiThuoc��$��0,0,10,0q�$ Số loại thuốc��$	��150��#��[ �� -   $��btSoLoaiThuoc��.��  $  Settings=�$��24��$��24���� $��3��$ 
Horizontal=�$��Center=�$��Center=�.+��� -   $��
tbTienKham��$��0,0,10,0q�$ Tiền khám��$	��150��#��[ �� -   $��
btTienKham��.��  $  Settings=�$��24��$��24���� $��4��$ 
Horizontal=�$��Center=�$��Center=�.+��� -   $��tbSoKhoa��$��0,0,10,0q�$ 	Số khoa��$	��150��#��[ �� -   $��btSoKhoa��.��  $  Settings=�$��24��$��24���� $��5��$ 
Horizontal=�$��Center=�$��Center=�.+��� -   $��tbSoPhongMoiKhoa��$��0,0,10,0q�$ Số phòng mỗi khoa��$	��150��#��[ �� -   $��btSoPhongMoiKhoa��.��  $  Settings=�$��24��$��24��