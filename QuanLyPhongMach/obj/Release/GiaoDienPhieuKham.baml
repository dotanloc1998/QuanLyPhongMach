   M S B A M L   `   `   `  ���� J  FQuanLyPhongMach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:QuanLyPhongMachQuanLyPhongMach  '    !QuanLyPhongMach.GiaoDienPhieuKham   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    X TXceed.Wpf.Toolkit, Version=3.4.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     /localclr-namespace:QuanLyPhongMach     V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes     MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�   TextRenderingMode$
 Auto=�  MaterialDesignPaper#���    MaterialDesignFont#���  .��� ���� -   hinhGiaoDienPhieuKham��.+�#  MaterialDesignThemes.Wpf.Card  $��Stretch=�$��Stretch=�$��20q� J� Opacity$
 0.84Q�.���  � RowDefinitions �� $��0.05* ��� .+��� $��Center=�$��Center=�$��0��   MaterialDesignTitleTextBlock#��[ Thông Tin Phiếu Khám� $��1�� � ColumnDefinitions �� �� $
��1.5* �.+�� $��10,0,0,0q�$��0�� �� �� �� �� �� �� $��3* �.+�� $��Center=�$��0�� �� �� .+��� -   $��tbTenBenhNhan��$��0��)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Họ tên bệnh nhân�� % !MaterialDesignFloatingHintTextBox#��[ �� -   $��tbDCBenhNhan��$��1��$��10,0,0,0q�$ Địa chỉ bệnh nhân��#��[ � $��Center=�$��1�� �� �� .+��� -   $��tbSDTBN��$��0��$ SĐT bệnh nhân��#��[ �� -   $��tbCMND��$��1��$��10,0,0,0q�$ CMND bệnh nhân��#��[ � $��Center=�$��2��.+���  �� Orientation$ 
Horizontal=�.+�(  "System.Windows.Controls.DatePicker  -   $��
dpNgaySinh��$��0,0,20,0q�$	��150��$��40��$ 
Ngày sinh�� ( $MaterialDesignFloatingHintDatePicker#��[ �� $��0,20,0,0q�$��Center=�.��Giới tính:	� -   $��rbnNam��$��0,20,0,0q� d� 	IsChecked$
 TrueY�$��Center=�  MaterialDesignRadioButton#��[ .��Nam	� -   $��rbnNu��$��	10,20,0,0q�$��Center=�#��[ .��Nữ� $��Center=�$��3�� �� �� .+��� -	   $��cbBacSi��$��0��$ Bác sĩ�� �� 
IsEditable .  & "MaterialDesignFloatingHintComboBox#��[ �� -
   $��tbQueQuanBN��$��1��$ Quê quán bệnh nhân��$��10,0,0,0q�#��[ � $��Center=�$��4�� �� �� .+��� -   $��tbTrieuChung��{�.  $��1��$ Triệu chứng��$��10,0,0,0q�#��[ �� -   $��cbBenh��$��0��$��Bottom=�$ Bệnh�� . #��[ � $��5�� �� �� $��3* �.+��� $��Center=�$ 
Horizontal=�$��0��.+��� -   $��	btKeThuoc�� / +MaterialDesignFloatingActionMiniLightButton#��[ 	 � ToolTip$	 Kê thuốc��.��'  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]
   Kind$
 Medicine=�$��24��$��24���� -   $��btThemBenhNhan��$��10,0,0,0q�#��[ $	 Thêm bệnh án��.��  $

 Plus=�$��24��$��24���� -   $��btXoaBenhNhan��$��10,0,0,0q�#��[ $	 Xóa bệnh án��.��  $
 Trash=�$��24��$��24���� -   $��btSuaPhieuKham��$��10,0,0,0q�#��[ {�.  $	 Sửa bệnh án��.��  $
 Pencil=�$��24��$��24��� $��0,0,0,10q�$��1�� �� �� �� .+��� -   $��tbTienThuoc��$
��Bold"�{�.  $��0��$ Tiền thuốc��#��[ .��0�� -   $��
tbTienKham��$
��Bold"�{�.  $��1��$ Tiền khám��#��[ �� -   $��tbTong��$
��Bold"�{�.  $��2��$ Tổng��#��[ � $��1��.+��  �� �� .+�� $��0�� �� $
��0.3* ��� .+��� $��0��$��Right=�$ 
Horizontal=�.+��� -   $��tbTim��$��0,0,10,0q�$	 0.7Q�
�������$��Center=�$	��150���� -   $��btTim��
�������$��0,0,10,0q�$��Center=���Z� .���� $��Center=�$��24��$��18��$��image/magnify.png�� J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect     	Direction$ 25Q�   Color$ 	#FFB6C2CB��   ShadowDepth$ 2Q�   
BlurRadius$ 1Q�&   System.Windows.Controls.DataGrid  -   $��dtPhieuKham��$
 0.84Q�$��Stretch=�$��1��$��	10,0,10,0q�
���   �$��1q�   CanUserSortColumns .    CanUserAddRows .     AutoGenerateColumns .  -	  'MaterialDesignThemes.Wpf.DataGridAssist 	  CellPadding$ 13 8 8 8q� 	  ColumnHeaderPadding$ 8q����� *TPhieuKhams+   RowStyle ��  �� 
TargetType)
  #System.Windows.Controls.DataGridRow" 
 .���  �� Property �@
 
IsSelected �� Value �� *
IsSelected+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�   Columns 9  3MaterialDesignThemes.Wpf.MaterialDataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   HeaderStyle �� =  7System.Windows.Controls.Primitives.DataGridColumnHeader"   &	 "MaterialDesignDataGridColumnHeader �� BasedOn# [	 .���  � ��$ Center=�1  +System.Windows.Controls.DataGridBoundColumn   ElementStyle �� " ��.���  � ��$ Center=�     Header$ Mã PK�� 5
 1MaterialDesignDataGridTextColumnPopupEditingStyle    EditingElementStyle#  [
 !   Binding! �� *MaPK+  $ Mã BN��#  [
 ! �� *
MaBenhNhan+  $ Mã PC��#  [
 ! �� *
MaPhanCong+  $ Ngày khám��#  [
 ! �� *
NgayKham+  $ Tiền khám��#  [
 ! �� *
TienKham+  $ Tiền thuốc��#  [
 ! �� *	TienThuoc+� $��1�� �� $
��0.3* ��� .+��� -   $��
btXoaThuoc��$��0,0,50,0q�$��Right=�#��[ $	 Xóa thuốc��.��  $
 Trash=�$��24��$��24��  -   $��	dtThuocKe��$
 0.84Q�$��Stretch=�$��1��$��
10,0,10,10q�
���   �$��1q� .  .   .  $ 13 8 8 8q�$ 8q� �� " 
 .���  �@
 
IsSelected �� *
IsSelected+$ TwoWay=�$ PropertyChanged=�    �� "  # [	 .���  � ��$ Center=� �� " ��.���  � ��$ Center=�  $ Tên thuốc��#  [
 ! �� *
TenThuoc+  $ Số lượng ��#  [
 ! �� *	SoLuong+  $ 
Đơn vị��#  [
 ! �� *DonVi+  $ Cách dùng��#  [
 ! �� *
CachDung+  $
 Giá��#  [
 ! �� *Gia+