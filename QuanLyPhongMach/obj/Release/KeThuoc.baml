   M S B A M L   `   `   `  ���� J  FQuanLyPhongMach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:QuanLyPhongMachQuanLyPhongMach      QuanLyPhongMach.KeThuoc   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     X TXceed.Wpf.Toolkit, Version=3.4.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  :d2http://schemas.microsoft.com/expression/blend/2008  Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  )localclr-namespace:QuanLyPhongMach  V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes    � WindowStartupLocation$  CenterScreen=� � Title$ KeThuoc��$	��770��$
��1050��   MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=� � 
ResizeMode$ NoResize=� � WindowStyle$
 None=�   TextRenderingMode$
 Auto=�$��5q�
���   �  MaterialDesignPaper#���    MaterialDesignFont#���  .��� ���� -   hinhKeThuoc�� � RowDefinitions �� �� $	��12* �.+�(  "MaterialDesignThemes.Wpf.ColorZone  -   $��TitleBar��$��0��   Mode$ Inverted=�$��50��.���  � ColumnDefinitions �� �� �� .+��� $��Center=�$��30,0,0,0q�$��0�� # MaterialDesignHeadlineTextBlock#��[ Kê thuốc�� $��2��$��Right=�$��Center=�$��30��	 �� Orientation$	 
Horizontal=�.+��� -   $��btThuNho��+  %MaterialDesignThemes.Wpf.RippleAssist
   
IsDisabled
 . 
���   �
���   � � ToolTip$ 	Thu nhỏ��$��0,0,5,0q�$��Right=�.��'  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]   Kind$ WindowMinimize=��� -   $��btDong��
 . 
���   �
���   �$ Đóng��$��0,0,5,0q�$��Right=�.��  $ WindowClose=�� $��1�� �� $
��0.5* ��� �� $��5* ��� .+��� $��0��$��Center=�$��Center=�   MaterialDesignTitleTextBlock#��[ Kê thuốc� $��	10,0,10,0q�$��1�� �� �� $
��0.5* ��� �� .+��� -   $��cbThuoc��$��25(�$��0��)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Thuốc�� �� 
IsEditable .  & "MaterialDesignFloatingHintComboBox#��[ �� $��1��$	 
Horizontal=�$��Center=�.+��� $��25(�$��0,15,0,0q�$��Center=�.��SL:%  Xceed.Wpf.Toolkit.DecimalUpDown  -   $
��dpSL���  �Xceed.Wpf.Toolkit.Primitives.UpDownBase`1[[System.Nullable`1[[System.Decimal, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]   Value$ 0X�   Minimum$ 0X�$��0,10,0,0q�$��Center=�$��40��$��70���� -   $��tbDonVi��$��25(�{�.  $��2��$��10,0,0,0q�$ 
Đơn vị��$��Center=�$��Stretch=� % !MaterialDesignFloatingHintTextBox#��[ �� -   $��
tbCachDung��$��25(�{�.  $��3��$��10,0,0,0q�$ 
Đơn vị��$��Center=�$��Stretch=�#��[ � $��2�� �� �� $��7* �.+��� -	   $��btThemThuoc��$��0��$��Right=�$	��Top=� / +MaterialDesignFloatingActionMiniLightButton#��[ $��0,0,40,0q�$ Thêm thuốc��$��50��$��50��.��  $ Medicine=�$��30��$��30��&	   System.Windows.Controls.DataGrid	  -
   $��	dtKeThuoc�� J� Opacity$
 0.84Q�$��Stretch=�$��1��$��
10,0,10,10q�
���   �$��1q� 	  CanUserSortColumns .  	  CanUserAddRows .   	  AutoGenerateColumns .  -
  'MaterialDesignThemes.Wpf.DataGridAssist 
  CellPadding$ 13 8 8 8q� 
  ColumnHeaderPadding$ 8q� 	  RowStyle ��  �� 
TargetType)  #System.Windows.Controls.DataGridRow"  .���  �� Property �@ 
IsSelected �� Value �� *
IsSelected+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=� 	  Columns 9  3MaterialDesignThemes.Wpf.MaterialDataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   HeaderStyle �� =  7System.Windows.Controls.Primitives.DataGridColumnHeader"   & "MaterialDesignDataGridColumnHeader �� BasedOn# [ .���  � ��$ Center=�1  +System.Windows.Controls.DataGridBoundColumn    ElementStyle  �� " ��.���  � ��$ Center=�  !   Width5  /System.Windows.Controls.DataGridLengthConverter$	! 150 "   Header$" Tên thuốc�� 5	 1MaterialDesignDataGridTextColumnPopupEditingStyle#   EditingElementStyle## [	 $   Binding$ �� *
TenThuoc+  $" Số lượng ��$	! 150 ## [	 $ �� *	SoLuong+  $" 
Đơn vị��$	! 150 ## [	 $ �� *DonVi+  $" Cách dùng��$	! 150 ## [	 $ �� *
CachDung+  $
" Giá��$	! 150 ## [	 $ �� *Gia+� $��3�� �� �� .+��� -   $��btDongY��$��0�� $
  MaterialDesignRaisedAccentButton#��[
 $	��100��$��60��$��Center=�$��Center=�$ Đồng ý kê thuốc��.��
Đồng ý�� -   $��btHuy��$��1��
���  ��
���  ��
�������#��[
 $	��100��$��60��$��Center=�$��Center=�$ Hủy kê thuốc��.��
Hủy bỏ