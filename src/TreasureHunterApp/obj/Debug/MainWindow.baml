   M S B A M L   `   `   `  ����L  HTreasureHunterApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:TreasureHunterAppTreasureHunterApp  5   	   "    TreasureHunterApp.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:TreasureHunterApp     5   	     � Title$  TreasureHunter��5   	   $��735.6��6    $
��1280��6/    � 
ResizeMode$ NoResize=�6<   .��5	      � -   5         �Name$ mainWindowGrid��5	      ���	#FF16151A � RowDefinitions 5
   
   �� 5      $	��63* �6   �� 5      $
��275* �6   �� 5      $	��38* �6    � ColumnDefinitions 5   
   �� 5      $
��346* �6   �� 5      $
��934* �6   �� 5      $��* �6   .+�5   
   �� 
���   �$��10,10,10,10q�6#   ���	#FF25262A$��1��6I   �� 5   
   
���   �$��10,10,10,10q�6#   ���	#FF25282A$��1��6I   $��1��6V   �� 5   
   
���   �$��10,10,10,10q�6#   ���	#FF25262A$��2��6I   �� 5   
   $
��Wrap=�6   $��Treasure Hunter��6(   $��Center=�6?   $��86��6Z   ���	#FFEDE6E6$��56(�6}   $��84,0,0,0q�6�   $��1��6�   $
��Left=�6�   $	��420��6�   �� 5   
   $
��Wrap=�6   $	��Top=�6(   $��57��6@   ���	#FFEDE6E6$��32(�6c   $��	42,25,0,0q�6q   $
��Left=�6�   $��96��6�   $��1��6�   �� 6�   $�Input��6�   �� 6�   �� 6�   6�   �� 5   
   $
��Wrap=�6   $	��Top=�6(   $��57��6@   ���	#FFEDE6E6$��32(�6c   $��	39,25,0,0q�6q   $
��Left=�6�   $	��123��6�   $��1��6�   $��1��6�   $��Output��6�   �� 5   
   -   5         ��Name$ 
fileButton��5      $��Choose File��6%   $
��Left=�6;   $��173,103,0,0q�6V   $��1��6k   $	��Top=�6x   $��52��6�   $	��114��6�   ���	#FF7B5BED���	#FF25262A���	#FF7B5BED$��20(�6  �� 5   
   -   5         ��Name$ fileName��5      $
��Wrap=�6&   $	��Top=�6:   $��25��6R   ���	#FF7A7776$��14(�6u   $��
49,196,0,0q�6�   $
��Left=�6�   $	��237��6�   $��1��6�   $��No File Chosen��6�   	� 5   
   -   5         	�Name$ 	bfs_radio��5      $	��BFS��6)   $
��Left=�67   $��31��6R   $��
49,268,0,0q�6^   $��1��6r   $	��Top=�6   $��67��6�   ���	#FFEDE6E6$��14(�6�    J� RenderTransformOrigin$ 0.745,-2.893&�6�   	� 5   
   -   5        $ 	dfs_radio��5      $��DFS
��6)   $
��Left=�6A   $��25��6\   $��
49,287,0,0q�6h   $��1��6|   $	��Top=�6�   $��65��6�   ���	#FFEDE6E6$��14(�6�   $ -0.52,-2.261&�6�   �� 5   
   $
��Wrap=�6   $	��Top=�6(   $��34��6@   ���	#FFEDE6E6$��16(�6c   $��
49,234,0,0q�6q   $
��Left=�6�   $	��144��6�   $��1��6�   $��	Algorithm��6�   �� 5   
   -   5        	 ��Name$	 	tsp_check��5      $	��TSP��6&   $
��Left=�64   $��26��6O   $��
49,318,0,0q�6[   $��1��6o   $	��Top=�6|   $��67��6�   ���	#FFEDE6E6$��14(�6�   �� 5    
   -   5        $��	Visualize��5       $��Center=�6%   $��	0,409,0,0q�6B   $��1��6U   $	��Top=�6b   $��59��6�   $	��227��6�   ���	#FF7B5BED���	#FF7B5BED���	#FFEDE6E6$��24(�6�   �� 5!   
   -   5        $��Search��5!      $
��Left=�6"   $��251,409,0,0q�6=   $��1��6R   $	��Top=�6_   $��59��6�   $	��227��6�   ���	#FF7B5BED���	#FF7B5BED���	#FFEDE6E6$��24(�6�   $��1��6�   �� 5"   
   $
��Wrap=�6   $	��Top=�6(   $��34��6@   ���	#FFEDE6E6$��20(�6c   $��
677,76,0,0q�6q   $
��Left=�6�   $	��144��6�   $��1��6�   $��1��6�   �� 6�   $�Route:��6�   �� 6�   �� 6�   �� 6�   �� 6�   $�::��6   �� 6  �� 6  6  �� 5#   
   -	   5        $ 	nodeCount��5#      $
��Wrap=�6'   $	��Top=�6;   $��34��6S   ���	#FFEDE6E6$��20(�6v   $��677,343,0,0q�6�   $
��Left=�6�   $	��144��6�   $��1��6�   $��1��6�   �� 6�   $�Nodes: -��6�   �� 6�   �� 6   6  �� 5$   
   -
   5        $ 	stepCount��5$      $
��Wrap=�6'   $	��Top=�6;   $��34��6S   ���	#FFEDE6E6$��20(�6v   $��677,390,0,0q�6�   $
��Left=�6�   $	��144��6�   $��1��6�   $��1��6�   �� 6�   $�Steps: -��6�   �� 6�   �� 6   6  �� 5%   
   -   5        $ elapsedTime��5%      $
��Wrap=�6)   $	��Top=�6=   $��34��6U   ���	#FFEDE6E6$��20(�6x   $��677,438,0,0q�6�   $
��Left=�6�   $	��231��6�   $��1��6�   $��1��6�   $��Elapsed Time: - ms��6�   � 5&   
   -   5        $ mazeGrid��5&      $��1��6!   $
��Left=�61   $	��287��6L   $��
100,91,0,0q�6Y   $��1��6m   $	��Top=�6z   $	��530��6�   ���	#FFABABAB.+�5'      � 5)      �� 5*   
   -   5        
 ��Name$
 
directions��5*       �� TextWrapping$
 Wrap=�6&   " �� VerticalScrollBarVisibility$
 Auto=�6:   $	��Top=�6]   $	��227��6u   ���	#FFEDE6E6$��20(�6�   $��677,108,0,0q�6�   $
��Left=�6�   $	��218��6�   $��1��6�   $��1��6�   $�� -��6   ��6
  Z� ��6   Z� �� 5+   
   -   5         ��Name$ searchSpeed��5+      $
��Left=�6&   $��27��6A   $��
49,370,0,0q�6M   $��1��6a   $	��Top=�6n   $	��190��6�    � Maximum$
 1000Q�6�    � Minimum$ 50Q�6�    � Value$	 500Q�6�   $��14(�6�   �� 5,   
   $
��Wrap=�6   $	��Top=�6(   $��20��6@   ���	#FFEDE6E6$��16(�6c   $��
49,344,0,0q�6q   $
��Left=�6�   $	��144��6�   $��1��6�   $��Search Speed��6�   $ 	0.5,0.861&�6�   �� 5-   
   -   5        $ 
delayValue��5-      $
��Wrap=�6(   $	��Top=�6<   $��26��6T   ���	#FF7A7776$��14(�6w   $��244,368,0,0q�6�   $
��Left=�6�   $	��102��6�   $��1��6�   $��2��6�   $
��- ms��6�   � 5.   
   -   5        $ 	imageGrid��5.      $��1��6"   $
��Left=�62   $	��287��6M   $��
100,91,0,0q�6Z   $��1��6n   $	��Top=�6{   $	��530��6�   .+�5/      � 51      �� 52   
   -   5        $ startingDir��52      $��Starting Dir��6&   $
��Left=�6=   $��
49,103,0,0q�6X   $��1��6l   $	��Top=�6y   $��52��6�   $	��119��6�   ���	#FF7B5BED���	#FF25262A���	#FF7B5BED$��20(�6�   6�   �� 53   
   -   5        $
 textFileInputField��53      $
��Left=�6.   $��27��6I   $��49,164,-4,0q�6U   $��1��6j   $
 Wrap=�6w   $	��Top=�6�   $	��237��6�   
����������	#FF7A7776���	#FFABABAB$��16(�6�   $��Center=�6�   $��6,0,0,4q�6!  $��File name (.txt)��6`  �� 54   
   
���   �$��10,10,10,10q�6#   ���	#FF25262A$��2��6I   $��2��6]   �� 55   
   $
��Wrap=�6   $	��Top=�6(   $��34��6@   ���	#FFEDE6E6$��20(�6c   $��	36,21,0,0q�6q   $
��Left=�6�   $��72��6�   $��2��6�   $��Legend:��6�   �� 56   
   $
��Left=�6   $��31��6/   $��	144,0,0,0q�6;   $��2��6N   
���   �$��Center=�6j   $��33��6�   ���	#FF16151A6�   �� 57   
   $
��Wrap=�6   $	��Top=�6(   $��34��6@   ���	#FFEDE6E6$��20(�6c   $��
194,21,0,0q�6q   $
��Left=�6�   $��72��6�   $��2��6�   �� 6�   $�Blocked��6�   �� 6�   �� 6�   �� 6�   6�   �� 58   
   $
��Left=�6   $��31��6/   $��	303,0,0,0q�6;   $��2��6N   
���   �$��Center=�6j   $��33��6�   ���	#FFF9F8FF6�   �� 59   
   $
��Wrap=�6   $	��Top=�6(   $��34��6@   ���	#FFEDE6E6$��20(�6c   $��	10,21,0,0q�6q   $
��Left=�6�   $	��118��6�   $��2��6�   $��1��6�   $��Discoverable��6�   �� 5:   
   $
��Left=�6   $��31��6/   $��	163,0,0,0q�6;   $��2��6N   
���   �$��Center=�6j   $��33��6�   ���	#FFCE64C0$��1��6�   �� 5;   
   $
��Left=�6   $��31��6/   $��	196,0,0,0q�6;   $��2��6N   
���   �$��Center=�6j   $��33��6�   ���	#FFA63FBE$��1��6�   �� 5<   
   $
��Left=�6   $��31��6/   $��	229,0,0,0q�6;   $��2��6N   
���   �$��Center=�6j   $��33��6�   ���	#FF8510B7$��1��6�   �� 5=   
   $
��Left=�6   $��31��6/   $��	262,0,0,0q�6;   $��2��6N   
���   �$��Center=�6j   $��33��6�   ���	#FF6226F0$��1��6�   �� 5>   
   $
��Left=�6   $��31��6/   $��	295,0,0,0q�6;   $��2��6N   
���   �$��Center=�6j   $��33��6�   ���	#FF333DE6$��1��6�   �� 5?   
   $
��Left=�6   $��31��6/   $��	328,0,0,0q�6;   $��2��6N   
���   �$��Center=�6j   $��33��6�   ���	#FF0B00ED$��1��6�   �� 5@   
   $
��Left=�6   $��31��6/   $��	361,0,0,0q�6;   $��2��6N   
���   �$��Center=�6j   $��33��6�   ���	#FF0710A0$��1��6�   �� 5A   
   $
��Wrap=�6   $	��Top=�6(   $��34��6@   ���	#FFEDE6E6$��20(�6c   $��
422,21,0,0q�6q   $
��Left=�6�   $	��118��6�   $��2��6�   $��1��6�   �� 6�   $�
Discovered��6�   �� 6�   �� 6�   6�   5B      5C      