   M S B A M L   `   `   `  ���� J  FQuanLyPhongMach, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:QuanLyPhongMachQuanLyPhongMach       QuanLyPhongMach.CuaSoChinh   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     /localclr-namespace:QuanLyPhongMach     V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes    � WindowStartupLocation$  CenterScreen=� � Title$ 
CuaSoChinh��$	��770��$
��1050��   MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=� � 
ResizeMode$ NoResize=� � WindowStyle$
 None=�   TextRenderingMode$
 Auto=�$��5q�
���   �  MaterialDesignPaper#���    MaterialDesignFont#���   � 	Resources   	CloseMenu �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame	 O� KeyTime
 O� Value  OpenMenu��%�  &	       &	 �     �� .��U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�$ GridMenu��.\�  $	 0��$	
 300Q�  $	 0:0:0.35��$
 0Q��� .��U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�$ GridMenu��.\�  $	 0��$
 0Q�  $	 0:0:0.35��$	
 300Q�U� $ (UIElement.Opacity)�$ GridThongTin��.\�  $	 0:0:0.5��$
 1Q�  $	 0��$
 1Q� � Triggers :�  :� RoutedEvent$ ButtonBase.Click�� :� 
SourceName$ ButtonClose��.[��� -    ��Name$ CloseMenu_BeginStoryboard��#��[ :� $ ButtonBase.Click��$ 
ButtonOpen��.[��� #��[ .���  � RowDefinitions �� �� $	��13* �.+�(  "MaterialDesignThemes.Wpf.ColorZone  -   $��TitleBar��$��Stretch=�$��0��$��Stretch=�   Mode$ Inverted=�.���  � ColumnDefinitions �� �� $	��10* ��� $��3* �.+��� -    ��Name$ 
ButtonOpen��$��0q�$��0��$��Center=�$��Center=�$��45��$��45��
���   �
���   �.���� $��image/menu.png��$��45��$��45���� -   $��tbForChange��$��Center=�$��30,0,0,0q�$
��Left=�$��1�� # MaterialDesignHeadlineTextBlock#��[ Thông tin nhân viên�� $��2��$��Right=�$��Center=�$��30�� �� Orientation$ 
Horizontal=�.+��� -   $��btThuNho��+  %MaterialDesignThemes.Wpf.RippleAssist   
IsDisabled . 
���   �
���   � � ToolTip$ 	Thu nhỏ��$��0,0,5,0q�$��Right=�.��'  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]   Kind$ WindowMinimize=��� -   $��	btPhongTo�� . 
���   �
���   �$ 
Thu/Phóng��$��0,0,5,0q�$��Right=�.��  $ WindowMaximize=��� -   $��btDong�� . 
���   �
���   �$ Đóng��$��0,0,5,0q�$��Right=�.��  $ WindowClose=�� -    �Name$ GridThongTin��$��1��� -	   $ GridMenu��$��2��$��0��$��Stretch=�
�������$��
-300 0 0 0q�$	��250��$
��Left=� J� RenderTransformOrigin$ 0.5,0.5&�z�V� .~��� �� �� T�  �� �� $	��13* �.+�� $��Stretch=�
���   �$��0��.+��� -
   $ ButtonClose��$��0,0,10,0q�$��Right=�$��Center=�
���   �
���   �$��45��$��45��$��0q�.���� $��image/backburger.png��$��45��$��45��� -   $��1������ -   	hinh2�� �� Opacity$
 0.58Q� �� �� �� �� �� �� �� �� �� .+�� $��0�� �� �� $��2* �.+��� $��45��$��45��$��0��$��Center=�$��Center=�$��image/doctor.png�� J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect     Color$ Black��   ShadowDepth$ 7Q�   
BlurRadius$ 10Q��� -   $��
btNhanVien��
���   �
���   � J� Opacity$	 0.8Q�$��1��$��5q�  MaterialDesignRaisedButton#���  +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth2=�  J� BitmapEffect  F� ! F� Color$! Black��" F� ShadowDepth$" 8Q�# F� Opacity$	# 0.8Q�.��Nhân viên� $��1�� �� �� $��2* �.+��� $��45��$��45��$��0��$��Center=�$��Center=�$#��image/icons8-treatment-96.png��   $ Black��$ 7Q�$ 10Q��� -   $��btPhieuKham��
���   �
���   �$	 0.8Q�$��1��$��5q�#���  $ Depth2=�  F� $! Black��$" 8Q�$	# 0.8Q�.��Phiếu khám� $��2�� �� �� $��2* �.+��� $��45��$��45��$��0��$��Center=�$��Center=�$��image/hospital.png��   $ Black��$ 7Q�$ 10Q��� -   $��
btPhanCong��
���   �
���   �$	 0.8Q�$��1��$��5q�#���  $ Depth2=�  F� $! Black��$" 8Q�$	# 0.8Q�.��Phân công� $��3�� �� �� $��2* �.+��� $��45��$��45��$��0��$��Center=�$��Center=�$��image/pills.png��   $ Black��$ 7Q�$ 10Q��� -   $��btThuoc��
���   �
���   �$	 0.8Q�$��1��$��5q�#���  $ Depth2=�  F� $! Black��$" 8Q�$	# 0.8Q�.��	Thuốc� $��5�� �� �� $��2* �.+��� $��45��$��45��$��0��$��Center=�$��Center=�$4��.image/Dtafalonso-Android-Lollipop-Settings.ico��   $ Black��$ 7Q�$ 10Q��� -   $��btCaiDat��
���   �
���   �$	 0.8Q�$��1��$��5q�#���  $ Depth2=�  F� $! Black��$" 8Q�$	# 0.8Q�.��Cài đặt� $��4�� �� �� $��2* �.+��� $��45��$��45��$��0��$��Center=�$��Center=�$��image/money.png��   $ Black��$ 7Q�$ 10Q��� -   $��
btDoanhThu��
���   �
���   �$	 0.8Q�$��1��$��5q�#���  $ Depth2=�  F� $! Black��$" 8Q�$	# 0.8Q�.��	Doanh thu� $��6�� �� �� $��2* �.+��� $��45��$��45��$��0��$��Center=�$��Center=�$��image/skull.png��   $ Black��$ 7Q�$ 10Q��� -   $��btAdmin��
���   �
���   �$	 0.8Q�$��1��$��5q�#���  $ Depth2=�  F� $! Black��$" 8Q�$	# 0.8Q�.��Admin� $��7�� �� �� $��2* �.+��� $��45��$��45��$��0��$��Center=�$��Center=�$��image/outside-icon.png��   $ Black��$ 7Q�$ 10Q��� -   $��
btDangXuat��
���   �
���   �$	 0.8Q�$��1��$��5q�#���  $ Depth2=�  F� $! Black��$" 8Q�$	# 0.8Q�.��Đăng xuất�� $��20(�$
��Bold"�$��8��$��Bottom=�$��Center=�Version 1.0