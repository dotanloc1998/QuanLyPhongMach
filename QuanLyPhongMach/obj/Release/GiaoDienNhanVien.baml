   M S B A M L   `   `   `  ���� J  FQuanLyPhongMach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:QuanLyPhongMachQuanLyPhongMach  &     QuanLyPhongMach.GiaoDienNhanVien   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     /localclr-namespace:QuanLyPhongMach     V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes     MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�   TextRenderingMode$
 Auto=�  MaterialDesignPaper#���    MaterialDesignFont#���  .��� .+�� ���� -   hinhGiaoDienNhanVien��.+�#  MaterialDesignThemes.Wpf.Card  $��Stretch=�$��Stretch=�$��20q� J� Opacity$
 0.84Q�.���  � RowDefinitions �� $��0.08* ��� $��1* ��� $
��1.2* �.+��� $��Center=�$��Center=�   MaterialDesignTitleTextBlock#��[ Thông Tin Nhân Viên� $��1��$��10q� �� �� �� �� �� .+�� $��0��.+��� -   $��tbHoTen��$��0��)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Họ và tên��$��Bottom=� % !MaterialDesignFloatingHintTextBox#��[ � $��1��.+���  �� Orientation$ 
Horizontal=�$
��Left=�.+��� -   $��cbHocVi��$	��150��$��0,0,10,0q�$��0��$ 
Học vị��$��Bottom=� & "MaterialDesignFloatingHintComboBox#��[ �� -   $��cbChucVu��$	��150��$��1��$ Chức vụ��$��Bottom=�#��[ .@��� .��
Bác sĩ�� .��Y tá� $��2��.+��� $ 
Horizontal=�$
��Left=�.+�(  "System.Windows.Controls.DatePicker  -   $��
dpNgaySinh��$��0,0,10,0q�$	��150��$��40��$ 
Ngày sinh�� ( $MaterialDesignFloatingHintDatePicker#��[ 	� -   $��rbnNam�� d� 	IsChecked$
 TrueY�$��Bottom=�  MaterialDesignRadioButton#��[ .��Nam	� -   $��rbnNu��$��10,0,0,0q�$��Bottom=�#��[ .��Nữ� $��3��.+��� -   $��tbDiaChi��$��0��$ Địa chỉ��$��Bottom=�#��[ � $��4�� � ColumnDefinitions �� �� �� .+��� -	   $��	tbQueQuan��$��0��$��0,0,10,0q�$ 
Quê quán��$��Bottom=�#��[ �� -
   $��tbSDT��$��1��$��0,0,10,0q�$ Số điện thoại��$��Bottom=�#��[ �� -   $��tbCMND��$��2��$
 CMND��$��Bottom=�#��[ � $��2�� �� �� $��5* �.+�� $��0�� �� �� �� �� $	��11* �.+��� -   $��btThemNV��$��0��$��30��$��30�� / +MaterialDesignFloatingActionMiniLightButton#��[  � ToolTip$ Thêm nhân viên��$��14,2,4.4,2.4q�.��'  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]	   Kind$		 Add=�$��24��$��24���� -   $��btSuaNhanVien��$��1��$��30��$��30��#��[ $ Sửa nhân viên��$��14,2,4.4,2.4q�.��  $	 Pencil=�$��24��$��24���� -   $��btXoaNhanVien��$��2��$��30��$��30��#��[ $ Xóa nhân viên��$��14,2,4.4,2.4q�.��  $	 Trash=�$��24��$��24���� $��3��$��Right=�$ 
Horizontal=�.+��� -   $��tbTim��$��0,0,10,0q�$	 0.7Q�
�������$��Center=�$	��200���� -   $��btTim��
�������$��0,0,10,0q�$��Center=���Z� .���� $��Center=�$��24��$��18��$��image/magnify.png��
 J� Effect
 3  -System.Windows.Media.Effects.DropShadowEffect     	Direction$ 25Q�   Color$ 	#FFB6C2CB��   ShadowDepth$ 2Q�   
BlurRadius$ 1Q�� $��1��.+�&   System.Windows.Controls.DataGrid  -   $��
dtNhanVien��$
 0.84Q�$��Stretch=�$��	10,0,10,0q�   CanUserSortColumns .    CanUserAddRows .     AutoGenerateColumns .  -	  'MaterialDesignThemes.Wpf.DataGridAssist 	  CellPadding$ 13 8 8 8q� 	  ColumnHeaderPadding$ 8q����� *
TNhanViens+   RowStyle ��  �� 
TargetType)
  #System.Windows.Controls.DataGridRow" 
 .���  �� Property �@
 
IsSelected �� Value �� *
IsSelected+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�   Columns 9  3MaterialDesignThemes.Wpf.MaterialDataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   HeaderStyle �� =  7System.Windows.Controls.Primitives.DataGridColumnHeader"   &	 "MaterialDesignDataGridColumnHeader �� BasedOn# [	 .���  � ��$ Center=�1  +System.Windows.Controls.DataGridBoundColumn   ElementStyle �� " ��.���  � ��$ Center=�     Width5  /System.Windows.Controls.DataGridLengthConverter$	 120    Header$ Mã nhân viên�� 0
 ,MaterialDesignDataGridTextColumnEditingStyle    EditingElementStyle#  [
 !   Binding! �� *MaNV+  $	 120 $ 	Họ tên�� 5 1MaterialDesignDataGridTextColumnPopupEditingStyle#  [ ! �� *	HoTenNV+  $	 120 $ 
Ngày sinh��#  [ ! �� *	NamSinhNV+  $ Địa chỉ��$	 120 #  [ ! �� *
DiaChiNV+  $
 SĐT��$	 120 #  [ ! �� *SDTNV+  $
 CMND��$	 100 #  [ ! �� *CMNDNV+