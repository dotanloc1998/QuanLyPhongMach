   M S B A M L   `   `   `  ����J  FQuanLyPhongMach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:QuanLyPhongMachQuanLyPhongMach  5      &     QuanLyPhongMach.GiaoDienDoanhThu   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      /localclr-namespace:QuanLyPhongMach     5      X TXceed.Wpf.Toolkit, Version=3.4.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5      V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5         MaterialDesignBody#���   5      $��Regular"�5      $��13(�5      &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5         TextRenderingMode$
 Auto=�5        MaterialDesignPaper#���  5        MaterialDesignFont#���  5      .��5      � ��5   
   �� 5      -   5        hinhDoanhThu��5   2    � RowDefinitions 5   
   �� 5      $
��0.5* �6   6,   �� 5      6   �� 5      $��5* �6   6*   �� 5      6   .+�5   
   �� $��Center=�6   $��Center=�61      MaterialDesignTitleTextBlock#��[ 5      Thông Tin Doanh Thu5       (  "System.Windows.Controls.DatePicker  5!   
   -   5        $��
dpDoanhThu��5!   .   $��10q�6   $��1��6!   $��Center=�5"      $��Stretch=�6   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tháng cần xem��5#       ( $MaterialDesignFloatingHintDatePicker#��[ 5$      &   System.Windows.Controls.DataGrid  5&   
   -   5        $��
dtDoanhThu��5&   u   $��2��6   $��1q�6    
���   � J� Opacity$
 0.84Q�6H   $��Stretch=�6W   $��	10,0,10,0q�5'         CanUserSortColumns .    CanUserAddRows .     AutoGenerateColumns .  -  'MaterialDesignThemes.Wpf.DataGridAssist   CellPadding$ 13 8 8 8q�5,      	   ColumnHeaderPadding$	 8q�5-      
   RowStyle
 5/      �� 50       �� 
TargetType)  #System.Windows.Controls.DataGridRow"  6   .�51      ��  �� Property �@ 
IsSelected �� Value 63   �� *
IsSelected+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�52         Columns 55      9  3MaterialDesignThemes.Wpf.MaterialDataGridTextColumn  57      ,  &System.Windows.Controls.DataGridColumn   HeaderStyle 58      �� 59      =	  7System.Windows.Controls.Primitives.DataGridColumnHeader" 	 5:       & "MaterialDesignDataGridColumnHeader �� BasedOn# [ 5;      .�5<      ��  � ��$ Center=�5>      5?      1
  +System.Windows.Controls.DataGridBoundColumn 
  ElementStyle 5A      �� 5B      " ��5C      .�5D      ��  � ��$ Center=�5F      5G      5I        5K         Width5  /System.Windows.Controls.DataGridLengthConverter$	 150 5L   #      Header$ Ngày��5M       0 ,MaterialDesignDataGridTextColumnEditingStyle 
  EditingElementStyle# [ 5N       
  Binding 5L      �� *	NgayXem+5N        5P      $	 150 5Q   &   $ Số bệnh nhân��5R       5 1MaterialDesignDataGridTextColumnPopupEditingStyle# [ 5S       5Q      �� *
SoBenhNhan+5S        5U      $	 150 5V   "   $ 	Doanh thu��5W      # [ 5X       5V      �� *SoTien+5X        5Z      $ 	Tỉ lệ��5[      $	 150 6   # [ 5]       5\      �� *TiLe+5]      5`      � 5b   
   $��3��6   .+�5d      �� -   5        $
��btIn��5d   %   $��0��6    $  MaterialDesignRaisedAccentButton#��[ 5e      $	��150��5f      $��20(�6    � ToolTip$5 /Resource name: MaterialDesignRaisedAccentButton��5g      +  %MaterialDesignThemes.Wpf.RippleAssist   
IsDisabled . .��5h   3   In5j      5l      5m      5n      