   M S B A M L   `   `   `  ����B  >WpfApp3, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp3WpfApp3  5   	       WpfApp3.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp3     5   	   -   5          � Title$  Ürün Takip��5   	    � WindowStyle$ 
ToolWindow=�5	   
    � WindowState$ 	Maximized=�5
      $	��737��5       $
��1366��6-   .��5      � $��0,0,2,0q�6   $	��748��6   $	��Top=�6)   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ dgurun��5         CanUserResizeColumns .     CanUserResizeRows .     CanUserAddRows .     RowHeaderWidth$ 0Q�6r      AlternatingRowBackground
 ��İ�	 �� AlternationCount$	 2��5   0   
   GridLinesVisibility$
 
Horizontal=�6E   $   HorizontalScrollBarVisibility$ Hidden=�6f   $
��Left=�6�      AutoGenerateColumns .  $	��636��6�   $��	10,68,0,0q�6�   $	��Top=�6�   $	��900��6�      SelectionMode$ Single=�6d     
IsReadOnly .  J� RenderTransformOrigin$ 
0.503,0.52&�6�     Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$ 98 6A      Header$ Barkod��6L   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *barkod+6^     5      $	 250 6<   $ Ürün Adı��6H    6%   �� *ad+6\     5      $ 80 6@   $ Toptan��6K    6%   �� *toptan+6]     5      $ 80 6C   $ 	Perakende��6N    6%   �� *	perakende+6c   5      �� 5   
   -   5        $��barkod��5      $��0��6    $
��Left=�6.   $��23��6I   $��
948,37,0,0q�6U    �� TextWrapping$
 Wrap=�6i   $	��Top=�6}   $	��380��6�   ��5      ��  �� ElementName$ dgurun�� �� Path$ SelectedItem.barkod��� 5   
   -   5        $��ad��5      $��1��6   $
��Left=�6*   $��23��6E   $��
948,96,0,0q�6Q   $
 Wrap=�6e   $	��Top=�6y   $	��380��6�   ��6�   �� $ dgurun��$ SelectedItem.ad��� 5    
   -   5        $��toptan��5       $��2��6!   $
��Left=�6.   $��23��6I   $��948,155,0,0q�6U   $
 Wrap=�6j   $	��Top=�6~   $	��380��6�   ��6�   �� $ dgurun��$ SelectedItem.toptan�6�   �� 5!   
   -   5        $��	perakende��5!      $��3��6$   $
��Left=�61   $��23��6L   $��948,214,0,0q�6X   $
 Wrap=�6m   $	��Top=�6�   $	��380��6�   ��6�   �� $ dgurun��$ SelectedItem.perakende�6�   �� 5"   
   -   5        $��id��5"      $
��Left=�6V   $��23��6q   $��369,133,0,0q�6}   $
 Wrap=�6�   $	��Top=�5#      $	��120��6+   $y�Hidden=�67   ��5"      �� $ dgurun��$ SelectedItem.id�5#   7   �� 5$   
   -   5        $
��Ekle��5$      $��4��6!   $
��Left=�6.   $��950,291,0,0q�6I   $	��Top=�6^   $��50��6v   $ 
0.027,0.45&�6�   6�   �� 5%   
   -	   5        $��	Güncelle��5%      $��5��6%   $
��Left=�62   $��1060,291,0,0q�6M   $	��Top=�6c   $��50��6{   6�   �� 5&   
   -
   5        $	��Sil��5&      $��6��6    $
��Left=�6-   $��1170,291,0,0q�6H   $	��Top=�6^   $��50��6v   $ 	0.22,0.55&�6�   �� 5'   
   -   5        $��Temizle��5'      $��7��6$   $
��Left=�61   $��1280,291,0,0q�6L   $	��Top=�6b   $��50��6z   6�   �� 5(   
   -   5        $	��ara��5(      $��8��6   $
��Left=�6+   $��23��6F   $��	10,37,0,0q�6R   $
 Wrap=�6e   $#��Barkod veya ürün adı girin��6y   $	��Top=�6�   $	��900��6�    � DataContext 6�   �� 6�   �� 5)   
   $��Barkod��6   $
��Left=�6!   $��	949,6,0,0q�6<   $	��Top=�6O   �� 5*   
   $��Ürün Adı��6   $
��Left=�6#   $��
948,65,0,0q�6>   $	��Top=�6R   �� 5+   
   $��Toptan��6   $
��Left=�6!   $��950,124,0,0q�6<   $	��Top=�6Q   $ -0.211,0.308&�6i   �� 5,   
   $��	Perakende��6   $
��Left=�6$   $��948,183,0,0q�6?   $	��Top=�6T   $ -1.646,0.385&�6l   �� 5.   
   $��Arama��6   $
��Left=�6    $��10,6,0,0q�6;   $	��Top=�6M   �� 5/   
   $��910,325,0,44q�6   $��1.png��6&   $
��Fill=�65   52      54      