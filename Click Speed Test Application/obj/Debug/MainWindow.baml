   M S B A M L   `   `   `  ����W  SClick Speed Test Application, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:Click_Speed_Test_ApplicationClick_Speed_Test_Application  5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35eDclr-namespace:System.Windows.Media.Effects;assembly=PresentationCoreSystem.Windows.Media.Effects 5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35nKclr-namespace:System.Windows.Media.Animation;assembly=PresentationFrameworkSystem.Windows.Media.Animation 5	   	   -    'Click_Speed_Test_Application.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   <local*clr-namespace:Click_Speed_Test_Application     5   	   XEffectsDclr-namespace:System.Windows.Media.Effects;assembly=PresentationCore     5   	   b
AnimationsKclr-namespace:System.Windows.Media.Animation;assembly=PresentationFramework     5	   	   $	��390��5      $	��408��6'   $��Century Gothic)�63     � 
ResizeMode$  NoResize=�5   	    � Icon 5      H� 5   
   .��5      �  � ColumnDefinitions 5   
   �� 5      $��40 �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $��40 �6    � RowDefinitions 5   
   �� 5      $��20 �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5       $
��auto �6   �� 5!      $
��auto �6   �� 5"      $
��auto �6   �� 5#      $��20 �6   .+�5&   
   �� $��Click Speed Test��6   $��39(�6,   $��2��6:   $��2��6J   $��6��6W   $
��Bold"�6k   	� 5(   
   -   5         	�Name$ bttn1s��5(   w   $��1s��6   $��2��6#   $��3��63   $��28(�6@      MenuButtonTheme#��[  6N   $��	0,10,0,10q�6�    d� 	IsChecked$
 TrueY�6�   	� 5)   
   -   5        $ bttn5s��5)   w   $��5s��6   $��3��6#   $��3��63   $��28(�6@   #��[  6N   $��	0,10,0,10q�6�   	� 5*   
   -   5        $ bttn10s��5*   x   $	��10s��6   $��4��6$   $��3��64   $��28(�6A   #��[  6O   $��	0,10,0,10q�6�   	� 5+   
   -   5        $ bttn20s��5+   x   $	��20s��6   $��5��6$   $��3��64   $��28(�6A   #��[  6O   $��	0,10,0,10q�6�   	� 5,   
   -   5        $ bttn30s��5,   x   $	��30s��6   $��6��6$   $��3��64   $��28(�6A   #��[  6O   $��	0,10,0,10q�6�   	� 5-   
   -   5        $ bttn60s��5-   x   $	��60s��6   $��7��6$   $��3��64   $��28(�6A   #��[  6O   $��	0,10,0,10q�6�   �� 5/   
   -   5        $��4��5/      $��4��6!   $��4��6.   $��2��6B   $��10,0,0,0q�6T   
����ح���50      �� 51       �� 
TargetType" ��6   .�52      ��  �� Property � �� �� Value
 ��ح�63   �� 53       � ��
 �����63   �� 54       � �� 55      �� 56      	 �� 
TargetType"	 ��6.   .R�57   "   �� 
 ��Name$
 Ripple��6)   #��z��69   #��z��58   )   #��z��59   )    �� CornerRadius$ 15��5:   )   ._�5;   &   �� $��Center=�67   $��Center=�5<   7   5=   #   5>      5@      5A      .��5C      ��  �� Orientation$ 
Horizontal=�6   .+�5D      �� -   5         ��Name$
 text��5D   A   $��18(�6    �� TextAlignment$ Center=�6*   Click anywhere�� 5F      
to begin5H      5I      5J      �� 5L   
   $��2��6   $��4��6#   $��2��60   
�������$��0q�6[   $��0,0,0,5q�6o   .��5M      �� .+�5N      �� $
��Time��6   $��24(�6(   $��Center=�66   $��0,5,0,0q�6S   �� 5O      -	   5        $
 time��5O      $��00��6*   $��Center=�64   $
��Bold"�6Q   $��32(�6c   $��0,2,0,0q�6q   5P      5Q      �� 5R   
   $��2��6   $��5��6#   $��2��60   
�����F�$��0q�6[   $��0,5,0,0q�6o   .��5S      �� .+�5T      �� $��Clicks��6   $��24(�6*   $��Center=�68   $��0,5,0,0q�6U   �� 5U      -
   5        $ clicks��5U      $��00��6,   $��Center=�66   $
��Bold"�6S   $��32(�6e   $��0,2,0,0q�6s   5V      5W      �� 5X   
   -   5         ��Name$ overlayRectangle��5X      ���	#80000000$��9��6?   $��7��6S   $��0,0,-18,-55q�6d   $y�	Collapsed=�6z   5Y       � 	Resources 5[        OpenAnimation W� From	 W� To g� Duration �� TargetProperty��%r   &	       �� 5\   
   .��5]      W� $ 0X�6   $ 1X�6'   $ 0:0:0.4D�6.   $ Opacity�6A   5^      5_      5`      