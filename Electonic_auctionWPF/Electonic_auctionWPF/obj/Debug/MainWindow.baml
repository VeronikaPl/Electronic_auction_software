   M S B A M L   `   `   `  ����O  KElectonic_auctionWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Electonic_auctionWPFElectonic_auctionWPF  5   	   %    Electonic_auctionWPF.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:Electonic_auctionWPF     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   
������� � 	Resources 5
       �� 
TargetType �� Property �� Value �� 
TargetType �� CornerRadius��%�   '��       �� 5   
   " ��6   .�5   
   ��  � �� 5      �� 5      " ��6"   .R�5      �� $ 5��6   #��z��6.   #��z��6X   #��z��6�   ._�5      �� $��Center=�6+   $��Center=�6H   5      5      5      5      5      .��5      � $	��Top=�6    � ColumnDefinitions 5   
   �� 5      $��* �6    � RowDefinitions 5   
   �� 5      $��40 �6   �� 5      $��* �6   .+�5"   
   � -   5        	 �Name$	 header_grid��5"      
����d�$��40��6@   $	��Top=�6L   $��0��6d   $��0��6t    5$      �� 5%      $��* �6#   �� 5&      $
��Auto �6#   �� 5'      $
��Auto �6#   �� 5(      $
��Auto �6#   �� 5)      $
��Auto �6#   .+�5,      �� -   5        
 ��Name$
 home_button��5,      $��Аукціон��6*   $��0��6<   $��Center=�6L   $��Century Gothic)�6g   $
��Bold"�6�   
�������$��20(�6�   $
��Left=�6�   
����d�
����d�6
  �� 5-      $��60��6   $��1��6   �� 5.      -   5        $
 login_button��5.      $��Вхід��6+   $��2��6:   $��10,0,0,0q�6J   $��Century Gothic)�6\   $��60��6x   $��23��6�   
�������
�����p�$
��Bold"�6�   6�   �� 5/      -   5        $
 
reg_button��5/      $��Реєстрація��6)   $��3��6>   $��10,0,0,0q�6N   $��Century Gothic)�6`   $��80��6|   $��23��6�   
�������
�����p�$
��Bold"�6�   6�   �� 50      $��20��6   $��4��6   �� 51      -   5        $
 profile_button��51      $��2��6-   $��Right=�6=   $��33��6Y   $��Center=�6e   $��33��6�   $y�	Collapsed=�6�   .��52      �� $��/profile_photo.png��6   53      �� 54      -   5         ��Name$ profile_name_label��54      $��3��60   $
��Name��6@   $��16(�6O   $
��Left=�6]   $��Center=�6x   $��Century Gothic)�6�   
�������$
��Bold"�6�   $y�	Collapsed=�6�   55      �� 57   
   $��1��6   .��58      � -   5        $	 	main_grid��58      $��1��6&    5:      �� 5;      $��40 �6$   �� 5<      $��* �6$   .+�5?      � -   5        $	 search_grid��5?      $��0��6,   � 5A      -	   5        $	 grid_with_products��5A      $��1��63   $y�	Collapsed=�6@   .+�5B      �� ��6#   �� *ProductsList+��5C      �� 5D      .R�5E   "   � $��10,10,10,10q�6'    5G   &   �� 5H   *   $	��125 �6;   �� 5I   *   $��* �6;   �� 5J   *   $
��Auto �6;   .+�5N   &   �� $
 product_photo_button��6-   -
   5        $��0��5N   K   $��0,0,10,0q�6~   $��Center=�6�   $��Center=�6�   .��5O   &   �� $��0��6E   ��6,   �� *photo+6E   5P   '   � 5S   &   $��1��6+    5T   *   �� 5U   .   $��35 �6<   �� 5V   .   $��* �6<   .+�5X   *   �� $��0��6J   $��Century Gothic)�6W   $��16(�6s   ��64   �� *name+6s   �� 5Y   *   $��Description��64   $��1��6G   $��Century Gothic)�6T   $��16(�6p   
�����w�6~   5Z   '   �� 5]   &   $��2��6G   $��Century Gothic)�6W   $��16(�6s   $��Center=�6�   $��Center=�6�   ��60   �� *price+6�   5^   #   5_      5a      5b      � 5d      -   5        $	 grid_for_product��5d      $��1��61   $y�	Collapsed=�6>    5e      �� 5f      $	��170 �6+   �� 5g      $��* �6+    5j      �� 5k      $	��170 �6(   �� 5l      $	��120 �6(   �� 5m      $��* �6(   .+�5p      �� $��0��6   $��/profile_photo.png��6,   � 5q      $��1��6    5s      �� 5u      $��40 �6,   �� 5v      $��40 �6,   �� 5w      $��90 �6,   .+�5{      �� -   5        $ product_name_label��5{       $	��...��6<   $��0��6J   $��16(�6W   $��Century Gothic)�6g   $��Center=�6�   �� 5}      -   5        $ product_price_label��5}       $	��...��6=   $��1��6K   $��16(�6X   $��Century Gothic)�6h   $��Center=�6�   
�����w�6�   �� 5      -   5        $ product_description_label��5       $	��...��6C   $��2��6Q   $��16(�6^   $��Century Gothic)�6n   $��Center=�6�   
�����w�6�   5�      � 5�      $��1��6   $��1��6+    5�      �� 5�      $��* �6/   �� 5�      $��* �6/   .+�5�      �� -   5         ��Name$ input_price��5�   "   $��0��67   $��Center=�6G   $	��170��6b   $��35��6n   $��Right=�6z   $��16(�6�   $��Century Gothic)�6�   $��	0,0,15,0 q�6�   $��Center=�6�   $��Center=�6�   �� 5�      -   5        $
 make_stake_button��5�   !   $��1��6<   $��Center=�6L   $	��170��6g   $��35��6s   $
��Left=�6   $��16(�6�   $��Century Gothic)�6�   $��	15,0,0,0 q�6�   
����d�
�������$!��Зробити ставку��6  $
��Bold"�6  5�      �� 5�      $��1��6   $��2��6-   $	��200��6:   $��40��6F   
����d�
�������$+��%Видалити оголошення��6�   $��16(�6�   $
��Bold"�6�   $��Century Gothic)�6�   $��Right=�6�   $y�	Collapsed=�6�   5�      � 5�      -   5        $	 grid_for_profile��5�      $��2��61   $y�	Collapsed=�6>    5�      �� 5�      $	��150 �6(   �� 5�      $��* �6(   .+�5�      � -   5        $	 profile_header_grid��5�      $��0��68    5�      �� 5�      $	��180 �6/   �� 5�      $��* �6/   .+�5�      �� -   5         ��Name$ profile_photo_image��5�       $��/profile_photo.png��6=   $��Center=�6Y   � 5�      -   5        $	 profile_info_grid��5�      $��1��6:    5�      �� 5�   "   $	��100 �63   �� 5�   "   $��* �63    5�      �� 5�   "   $��50 �60   �� 5�   "   $��50 �60   �� 5�   "   $��50 �60   .+�5�      �� $��0��6$   $��Ім'я:��61   $��16(�6A   $��Center=�6O   $��Century Gothic)�6j   $
��Bold"�6�   
�����p�6�   �� 5�      $��1��6$   $��E-mail:��61   $��16(�6C   $��Center=�6Q   $��Century Gothic)�6l   $
��Bold"�6�   
�����p�6�   �� 5�      $��2��6$   $��Телефон:��61   $��16(�6D   $��Center=�6R   $��Century Gothic)�6m   $
��Bold"�6�   
�����p�6�   �� 5�      -   5        $ show_name_label��5�   $   $��0��6=   $��1��6J   $	��...��6Z   $��16(�6h   $��Center=�6v   $��Century Gothic)�6�   $
��Bold"�6�   
�����p�6�   �� 5�      -   5        $ show_email_label��5�   $   $��1��6>   $��1��6K   $	��...��6[   $��16(�6i   $��Center=�6w   $��Century Gothic)�6�   $
��Bold"�6�   
�����p�6�   �� 5�      -   5        $ show_tel_label��5�   $   $��2��6<   $��1��6I   $	��...��6Y   $��16(�6g   $��Center=�6u   $��Century Gothic)�6�   $
��Bold"�6�   
�����p�6�   5�      5�      � 5�      -   5        $	 profile_prod_info_grid��5�      $��1��6;    5�      �� 5�      $��30 �6,   �� 5�      $��40 �6,   �� 5�      $
��Auto �6,   �� 5�      $��30 �6,   �� 5�      $
��Auto �6,   �� 5�      $��* �6,   .+�5�      �� $��0��6    $%��Розміщені товари��6-   $��16(�6H   $��Center=�6V   $��Century Gothic)�6q   $
��Bold"�6�   
�����p�6�   �� 5�      -   5        $
 add_advertisement_button��5�   !   $��1��6C   $��30��6P   $	��150��6\   $��10,0,0,0q�6h   $'��!Додати оголошення��6z   $��Century Gothic)�6�   $
��Bold"�6�   
�������
����d�$
��Left=�6�   6  � 5�      -   5        $	 seller_products_data��5�      $��2��6=   .+�5�      �� ��6+   �� *ProductsOfUser+��5�   "   �� 5�   &   .R�5�   *   � $��10,10,10,10q�6/    5�   .   �� 5�   2   $	��125 �6C   �� 5�   2   $��* �6C   �� 5�   2   $
��Auto �6C   �� 5�   2   $
��Auto �6C   .+�5�   .   �� $
 product_photo_button��65   -   5        $��0��5�   S   $��0,0,10,0q�6�   $��Center=�6�   $��Center=�6�   .��5�   2   �� $��0��6Q   ��68   �� *photo+6Q   5�   /   � 5�   .   $��1��63    5�   2   �� 5�   6   $��35 �6D   �� 5�   6   $��* �6D   .+�5�   2   �� $��0��6R   $��Century Gothic)�6_   $��16(�6{   ��6<   �� *name+6{   �� 5�   2   $��1��6Y   $��Century Gothic)�6f   $��16(�6�   
�����w���6<   �� *description+6�   5�   /   �� 5�   .   $��2��6O   $��Century Gothic)�6_   $��16(�6{   $��Center=�6�   $��Center=�6�   ��68   �� *price+6�   �� 5�   .   $��3��6P   $��Century Gothic)�6`   $��16(�6|   $��Center=�6�   $��Center=�6�   ��68   �� *status+6�   5�   +   5�   '   5�      5�      �� 5�      $��3��6    $(��"Товари на аукціоні��6-   $��16(�6J   $��Center=�6X   $��Century Gothic)�6s   $
��Bold"�6�   
�����p�6�   � 5�      -   5        $	 buyer_orders��5�      $��4��65   .+�5�      �� ��6+   �� *ProductsOrderedByUser+��5�   "   �� 5�   &   .R�5�   *   � $��10,10,10,10q�6/    5�   .   �� 5�   2   $	��125 �6C   �� 5�   2   $��* �6C   �� 5�   2   $
��Auto �6C   �� 5�   2   $
��Auto �6C   .+�5�   .   �� $
 product_photo_button��65   -   5        $��0��5�   S   $��0,0,10,0q�6�   $��Center=�6�   $��Center=�6�   .��5�   2   �� $��0��6Q   ��68   �� *photo+6Q   5�   /   � 5�   .   $��1��63    5�   2   �� 5   6   $��35 �6D   �� 5  6   $��* �6D   .+�5  2   �� $��0��6R   $��Century Gothic)�6_   $��16(�6{   ��6<   �� *name+6{   �� 5  2   $��1��6Y   $��Century Gothic)�6f   $��16(�6�   
�����w���6<   �� *description+6�   5  /   �� 5  .   $��2��6O   $��Century Gothic)�6_   $��16(�6{   $��Center=�6�   $��Center=�6�   ��68   �� *price+6�   �� 5	  .   $��3��6P   $��Century Gothic)�6`   $��16(�6|   $��Center=�6�   $��Center=�6�   ��68   �� *status+6�   5
  +   5  '   5     5     �� 5     -   5        $
 exit_acc_button��5  !   $��5��6:   $��30��6G   $	��150��6S   $��Right=�6_   $��0,10,0,0q�6{   $$��Вийти з аккаунту��6�   $��Century Gothic)�6�   $
��Bold"�6�   
�������
����d�6  5     5     5     5     5     5     