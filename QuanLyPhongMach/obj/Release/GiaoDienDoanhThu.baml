   M S B A M L   `   `   `  ���� J  FQuanLyPhongMach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:QuanLyPhongMachQuanLyPhongMach  &     QuanLyPhongMach.GiaoDienDoanhThu   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     /localclr-namespace:QuanLyPhongMach     X TXceed.Wpf.Toolkit, Version=3.4.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes     MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�   TextRenderingMode$
 Auto=�  MaterialDesignPaper#���    MaterialDesignFont#���  .��� ���� -   hinhDoanhThu�� � RowDefinitions �� $
��0.5* ��� �� $��5* ��� .+��� $��Center=�$��Center=�   MaterialDesignTitleTextBlock#��[ Thông Tin Doanh Thu(  "System.Windows.Controls.DatePicker  -   $��
dpDoanhThu��$��10q�$��1��$��Center=�$��Stretch=�)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tháng cần xem�� ( $MaterialDesignFloatingHintDatePicker#��[ &   System.Windows.Controls.DataGrid  -   $��
dtDoanhThu��$��2��$��1q�
���   � J� Opacity$
 0.84Q�$��Stretch=�$��	10,0,10,0q�   CanUserSortColumns .    CanUserAddRows .     AutoGenerateColumns .  -  'MaterialDesignThemes.Wpf.DataGridAssist   CellPadding$ 13 8 8 8q�	   ColumnHeaderPadding$	 8q�
   RowStyle
 ��  �� 
TargetType)  #System.Windows.Controls.DataGridRow"  .���  �� Property �@ 
IsSelected �� Value �� *
IsSelected+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�   Columns 9  3MaterialDesignThemes.Wpf.MaterialDataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   HeaderStyle �� =	  7System.Windows.Controls.Primitives.DataGridColumnHeader" 	  & "MaterialDesignDataGridColumnHeader �� BasedOn# [ .���  � ��$ Center=�1
  +System.Windows.Controls.DataGridBoundColumn 
  ElementStyle �� " ��.���  � ��$ Center=�     Width5  /System.Windows.Controls.DataGridLengthConverter$	 150    Header$ Ngày�� 0 ,MaterialDesignDataGridTextColumnEditingStyle 
  EditingElementStyle# [  
  Binding �� *	NgayXem+  $	 150 $ Số bệnh nhân�� 5 1MaterialDesignDataGridTextColumnPopupEditingStyle# [  �� *
SoBenhNhan+  $	 150 $ 	Doanh thu��# [  �� *SoTien+  $ 	Tỉ lệ��$	 150 # [  �� *TiLe+� $��3��.+��� -   $
��btIn��$��0�� $  MaterialDesignRaisedAccentButton#��[ $	��150��$��20(� � ToolTip$5 /Resource name: MaterialDesignRaisedAccentButton��+  %MaterialDesignThemes.Wpf.RippleAssist   
IsDisabled . .��In