   M S B A M L   `   `   `  ����W  SClick Speed Test Application, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:Click_Speed_Test_ApplicationClick_Speed_Test_Application  5   	   *    $Click_Speed_Test_Application.Results   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   <local*clr-namespace:Click_Speed_Test_Application     5   	     � Title$  Results��5   	   $	��250��6   $	��300��6&    � 
ResizeMode$ NoResize=�62   $��Century Gothic)�5	   	   $
��Bold"�6%    � WindowStyle$
 None=�5
   	   .��5      � -   5         �Name$ results��5       � RowDefinitions 5   
   �� 5      $��20 �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $��20 �6   .+�5   
   �� $��
YOUR SPEED��6   $��1��6&   $��36(�63    �� TextAlignment$ Center=�6A   �� 5   
   -   5         ��Name$ clicksPerSecond��5      $��x��6-   $��2��66   $��60(�6C   $ Center=�6Q   $��	0,-10,0,0q�6h   �� 5   
   $��clicks per second��6   $��3��6-   $��24(�6:   $ Center=�6H   �� 5   
   -   5        $��	TRY AGAIN��5      $��4��6%   $��28(�62   $��
60,10,60,0q�6U   $��0q�6i   
����� �6}   5       � 	Resources 5         CloseAnimation W� From		 W� To
 g� Duration �� TargetProperty��%r   &	        �� 5   
   .��5      W� $ 1X�6   $	 0X�6'   $
 0:0:0.4D�6.   $ Opacity�6A   5      5      5       