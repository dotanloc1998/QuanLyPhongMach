   M S B A M L   `   `   `  ���� J  FQuanLyPhongMach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:QuanLyPhongMachQuanLyPhongMach  &     QuanLyPhongMach.GiaoDienPhanCong   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     /localclr-namespace:QuanLyPhongMach     V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes     MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�   TextRenderingMode$
 Auto=�  MaterialDesignPaper#���    MaterialDesignFont#���  .��� .+�� ���� -   hinhGiaoDienPhanCong��.+�#  MaterialDesignThemes.Wpf.Card  $��Stretch=�$��Stretch=�$��20q� J� Opacity$
 0.84Q�.��� $��	10,0,10,0q� � RowDefinitions �� $��0.08* ��� $��1* ��� $
��1.2* �.+��� $��0��$��Center=�$��Center=�   MaterialDesignTitleTextBlock#��[ Thông Tin Phân Công� $��1�� �� �� �� �� .+�� $��0��.+�(  "System.Windows.Controls.DatePicker  -   $��
dpNgayTruc��$��20(�$��50��)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Ngày trực�� ( $MaterialDesignFloatingHintDatePicker#��[ � $��1�� � ColumnDefinitions �� �� .+��� -   $��cbPhong��$��10,0,0,0q�$��1��$ Phòng�� �� 
IsEditable .  & "MaterialDesignFloatingHintComboBox#��[ �� -   $��cbKhoa��$��0��$
 Khoa�� . #��[ � $��2�� �� �� .+��� -   $��cbBacSi��$��0��$ Bác sĩ�� . #��[ �� -   $��cbYta��$��10,0,0,0q�$��1��$ Y tá�� . #��[ � $��3��.+��� $��Center=� �� Orientation$ 
Horizontal=�$��0��.+��� -   $��btThemPhanCong��$��10,0,0,0q� / +MaterialDesignFloatingActionMiniLightButton#��[  � ToolTip$ Thêm phân công��.��'  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]	   Kind$
	 Plus=�$��24��$��24���� -   $��btXoaPhanCong��$��10,0,0,0q�#��[ $ Xóa phân công��.��  $	 Trash=�$��24��$��24���� -	   $��btSuaPhanCong��$��10,0,0,0q�#��[ $ Sửa phân công��.��  $	 Pencil=�$��24��$��24��� $��2��.+�&   System.Windows.Controls.DataGrid  -
   $��
dtPhanCong��$
 0.84Q�$��Stretch=�$��1��$��
10,0,10,10q�
���   �$��1q�
   CanUserSortColumns
 .    CanUserAddRows .     AutoGenerateColumns .  -  'MaterialDesignThemes.Wpf.DataGridAssist   CellPadding$ 13 8 8 8q�   ColumnHeaderPadding$ 8q����� *
TPhanCongs+   RowStyle ��  �� 
TargetType)	  #System.Windows.Controls.DataGridRow" 	 .���  �� Property �@	 
IsSelected �� Value �� *
IsSelected+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�   Columns 9
  3MaterialDesignThemes.Wpf.MaterialDataGridTextColumn
  ,  &System.Windows.Controls.DataGridColumn   HeaderStyle �� =  7System.Windows.Controls.Primitives.DataGridColumnHeader"   & "MaterialDesignDataGridColumnHeader �� BasedOn# [ .���  � ��$ Center=�1  +System.Windows.Controls.DataGridBoundColumn   ElementStyle �� " ��.���  � ��$ Center=�
     Width5  /System.Windows.Controls.DataGridLengthConverter$	 140    Header$ Ngày�� 5 1MaterialDesignDataGridTextColumnPopupEditingStyle   EditingElementStyle# [    Binding �� *
NgayTruc+
  $	 140 $ Phòng��# [  �� *	MaPhong+
  $
 Khoa��$	 140 # [  �� *MaKhoa+
  $ Bác sĩ��$	 140 # [  �� *	MaBacSi+
  $ Y tá��$	 140 # [  �� *MaYTa+