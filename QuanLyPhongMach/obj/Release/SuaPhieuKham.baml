   M S B A M L   `   `   `  ���� J  FQuanLyPhongMach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:QuanLyPhongMachQuanLyPhongMach  "    QuanLyPhongMach.SuaPhieuKham   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     /localclr-namespace:QuanLyPhongMach     V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes    � WindowStartupLocation$  CenterScreen=� � Title$ SuaPhieuKham��$	��770��$
��1050��   MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=� � 
ResizeMode$ NoResize=� � WindowStyle$
 None=�   TextRenderingMode$
 Auto=�$��5q�
���   �  MaterialDesignPaper#���    MaterialDesignFont#���  .��� ���� -   hinhSuaPhieuKham�� � RowDefinitions �� �� $	��12* �.+�(  "MaterialDesignThemes.Wpf.ColorZone  -   $��TitleBar��$��0��   Mode$ Inverted=�$��50��.���  � ColumnDefinitions �� �� �� .+��� $��Center=�$��30,0,0,0q�$��0�� # MaterialDesignHeadlineTextBlock#��[ Sửa phiếu khám�� $��2��$��Right=�$��Center=�$��30��	 �� Orientation$	 
Horizontal=�.+��� -   $��btThuNho��+  %MaterialDesignThemes.Wpf.RippleAssist
   
IsDisabled
 . 
���   �
���   � � ToolTip$ 	Thu nhỏ��$��0,0,5,0q�$��Right=�.��'  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]   Kind$ WindowMinimize=��� -   $��btDong��
 . 
���   �
���   �$ Đóng��$��0,0,5,0q�$��Right=�.��  $ WindowClose=�� $��	10,0,10,0q�$��1�� �� �� �� �� �� $��5* �.+�� $��Center=�$��0�� �� �� .+��� -   $��tbTenBenhNhan��$��0��)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Họ tên bệnh nhân�� % !MaterialDesignFloatingHintTextBox#��[ �� -   $��tbDCBenhNhan��$��1��$��10,0,0,0q�$ Địa chỉ bệnh nhân��#��[ � $��Center=�$��1��.+��� $	 
Horizontal=�.+�(  "System.Windows.Controls.DatePicker  -   $��
dpNgaySinh��$��0,0,20,0q�$	��150��$��40��$ 
Ngày sinh�� ( $MaterialDesignFloatingHintDatePicker#��[ �� $��0,20,0,0q�$��Center=�.��Giới tính:	� -   $��rbnNam��$��0,20,0,0q� d� 	IsChecked$
 TrueY�$��Center=�  MaterialDesignRadioButton#��[ .��Nam	� -	   $��rbnNu��$��	10,20,0,0q�$��Center=�#��[ .��Nữ�� -
   $��tbSDTBN��$	��150��$��20,0,0,0q�$ SĐT bệnh nhân��#��[ �� -   $��tbCMND��$	��150��$��20,0,0,0q�$ CMND bệnh nhân��#��[ � $��Center=�$��2��.+��� -   $��cbBacSi��$ Bác sĩ�� �� 
IsEditable .  & "MaterialDesignFloatingHintComboBox#��[ � $��Center=�$��3�� �� �� .+��� -   $��tbTrieuChung��$��10,0,0,0q�$��1��$ Triệu chứng��#��[ �� -   $��cbBenh��$��0��$��Bottom=�$ Bệnh�� . #��[ � $��4�� �� $��5* ��� $
��1.5* �.+��� $��Center=�$��Center=�$	 
Horizontal=�$��0��� $��0,0,0,10q�$��0��.+�&   System.Windows.Controls.DataGrid  -   $��	dtThuocKe�� J� Opacity$
 0.84Q�$��Stretch=�$��1��$��
10,0,10,10q�
���   �$��1q�   CanUserSortColumns .    CanUserAddRows .     AutoGenerateColumns .  -	  'MaterialDesignThemes.Wpf.DataGridAssist 	  CellPadding$ 13 8 8 8q� 	  ColumnHeaderPadding$ 8q����� *	TThuocKes+   RowStyle ��  �� 
TargetType)
  #System.Windows.Controls.DataGridRow" 
 .���  �� Property �@
 
IsSelected �� Value �� *
IsSelected+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�   Columns 9  3MaterialDesignThemes.Wpf.MaterialDataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   HeaderStyle �� =  7System.Windows.Controls.Primitives.DataGridColumnHeader"   & "MaterialDesignDataGridColumnHeader �� BasedOn# [ .���  � ��$ Center=�1  +System.Windows.Controls.DataGridBoundColumn   ElementStyle �� " ��.���  � ��$ Center=�      Header$  Tên thuốc�� 5	 1MaterialDesignDataGridTextColumnPopupEditingStyle!   EditingElementStyle#! [	 "   Binding" �� *
TenThuoc+  $  Số lượng ��#! [	 " �� *	SoLuong+  $  
Đơn vị��#! [	 " �� *DonVi+  $  Cách dùng��#! [	 " �� *
CachDung+  $
  Giá��#! [	 " �� *Gia+� $��1�� �� �� .+��� -   $��btDongY��$��0�� $
  MaterialDesignRaisedAccentButton#��[
 $	��100��$��60��$��Center=�$��Center=�$$ Đồng ý sửa phiếu khám��.��
Đồng ý�� -   $��btHuy��$��1��
���  ��
���  ��
�������#��[
 $	��100��$��60��$��Center=�$��Center=�$ Hủy sửa phiếu khám��.��
Hủy bỏ