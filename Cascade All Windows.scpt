FasdUAS 1.101.10   ��   ��    k             l     ��  ��    � � Written by Moritz Zimmer -- Zimmer & Partner GmbH -- www.zimmer.partners -- moritz@zimmer.partners -- Zurich -- Developed between June 6, 2010 and July 18, 2020 -- CC Licence information at the end of this code --     � 	 	�   W r i t t e n   b y   M o r i t z   Z i m m e r   - -   Z i m m e r   &   P a r t n e r   G m b H   - -   w w w . z i m m e r . p a r t n e r s   - -   m o r i t z @ z i m m e r . p a r t n e r s   - -   Z u r i c h   - -   D e v e l o p e d   b e t w e e n   J u n e   6 ,   2 0 1 0   a n d   J u l y   1 8 ,   2 0 2 0   - -   C C   L i c e n c e   i n f o r m a t i o n   a t   t h e   e n d   o f   t h i s   c o d e   - -   
  
 l     ��������  ��  ��        l     ��  ��      APP SPECIFIC SETTINGS     �   ,   A P P   S P E C I F I C   S E T T I N G S      l     ��  ��    %  Apps to be excluded in general     �   >   A p p s   t o   b e   e x c l u d e d   i n   g e n e r a l      j     �� �� 0 excludeapps excludeApps  J            m        �    M i c r o s o f t   W o r d      m         � ! !  p r l _ c l i e n t _ a p p   " # " m     $ $ � % %  i T u n i f y #  &�� & m     ' ' � ( (  S m a l l e r��     ) * ) l     �� + ,��   + @ : Apps whose windows should snap to the edges of the screen    , � - - t   A p p s   w h o s e   w i n d o w s   s h o u l d   s n a p   t o   t h e   e d g e s   o f   t h e   s c r e e n *  . / . j    ��� 0��  0 snaptoedgeapps snapToEdgeApps 0 J    � 1 1  2 3 2 m    	 4 4 � 5 5  Z a t t o o 3  6 7 6 m   	 
 8 8 � 9 9  R e m i n d e r s 7  : ; : m   
  < < � = =  C o n s o l e ;  > ? > m     @ @ � A A   A c t i v i t y   M o n i t o r ?  B C B m     D D � E E  T r a n s m i t C  F G F m     H H � I I  D i c t i o n a r y G  J K J m     L L � M M 
 P u k k a K  N O N m     P P � Q Q  A d d r e s s   B o o k O  R S R m     T T � U U  C S S E d i t S  V W V m     X X � Y Y  L i n k i n u s W  Z [ Z m     \ \ � ] ]  F e e d e r [  ^ _ ^ m     ` ` � a a  F l e x T i m e _  b c b m     d d � e e  H i b a r i c  f g f m     h h � i i  T w i t t e r r i f i c g  j k j m    ! l l � m m  T a g a l i c i o u s k  n o n m   ! $ p p � q q  A i r F o i l o  r s r m   $ ' t t � u u  T e x t E d i t s  v w v m   ' * x x � y y  H e l p V i e w e r w  z { z m   * - | | � } }  K e y c h a i n   A c c e s s {  ~  ~ m   - 0 � � � � �  O s f o o r a   � � � m   0 3 � � � � �  D i s k   U t i l i t y �  � � � m   3 6 � � � � �  C o n t a c t s �  � � � m   6 9 � � � � �  H a r v e s t �  � � � m   9 < � � � � �  T e s t F l i g h t �  � � � m   < ? � � � � �  T e x t E x p a n d e r �  � � � m   ? B � � � � � 
 N o t e s �  � � � m   B E � � � � �  F a c e t i m e �  � � � m   E H � � � � � 
 i C h a t �  � � � m   H K � � � � �  T r a n s m i s s i o n �  � � � m   K N � � � � �  H o c k e y A p p �  � � � m   N Q � � � � �  F o n t   B o o k �  � � � m   Q T � � � � �  M a i l �  � � � m   T W � � � � �  D a s h �  � � � m   W Z � � � � �  T e r m i n a l �  � � � m   Z ] � � � � �  C o d e b u g �  � � � m   ] ` � � � � �  C r e a t i v e   C l o u d �  � � � m   ` c � � � � �  F i n d e r �  � � � m   c f � � � � �  i T u n e s �  � � � m   f i � � � � �  A p p   S t o r e �  � � � m   i l � � � � �  P r e v i e w �  � � � m   l o � � � � �  E r i n n e r u n g e n �  � � � m   o r � � � � �  T o a s t   T i t a n i u m �  � � � m   r u � � � � �  S u b l e r �  � � � m   u x � � � � �  C l a m X A V �  � � � m   x { � � � � � " M i c r o s o f t   O n e N o t e �  � � � m   { ~ � � � � �  O n   T h e   J o b �  � � � m   ~ � � � � � �  H a n d B r a k e �  � � � m   � � � � � � �  I P N e t M o n i t o r X �  � � � m   � � � � � � �  S o u l v e r   3 �  � � � m   � � � � � � �  V i D L �  � � � m   � � � � � � � ( A p p l e   C o n f i g u r a t o r   2 �  � � � m   � �   � 
 T e a m s � �� m   � � � 
 G i t U p��   /  l     ����   r l Apps in need for extra gap to the right screen border (only applied to apps with windows snapping to edges)    �		 �   A p p s   i n   n e e d   f o r   e x t r a   g a p   t o   t h e   r i g h t   s c r e e n   b o r d e r   ( o n l y   a p p l i e d   t o   a p p s   w i t h   w i n d o w s   s n a p p i n g   t o   e d g e s ) 

 j   � ����� &0 extrarightgapapps extraRightGapApps J   � � �� m   � � �  F i n d e r��    l     ����   [ U Extra right gap in pixels (mostly used to guarantee desktop objects not overlapping)    � �   E x t r a   r i g h t   g a p   i n   p i x e l s   ( m o s t l y   u s e d   t o   g u a r a n t e e   d e s k t o p   o b j e c t s   n o t   o v e r l a p p i n g )  j   � ����� 0 extrarightgap extraRightGap m   � ����� �  l     ����   , & Apps whose windows should be centered    � L   A p p s   w h o s e   w i n d o w s   s h o u l d   b e   c e n t e r e d  j   � ��� �� 0 centeredapps centeredApps  J   � �!! "#" m   � �$$ �%%  S o f t w a r e   U p d a t e# &'& m   � �(( �))  I n s t a l l e r' *+* m   � �,, �--  S e r v e r+ ./. m   � �00 �11 & B o o t   C a m p - A s s i s t e n t/ 2��2 m   � �33 �44 $ S y s t e m   P r e f e r e n c e s��   565 l     ��78��  7 2 , Apps whose windows should be max heightened   8 �99 X   A p p s   w h o s e   w i n d o w s   s h o u l d   b e   m a x   h e i g h t e n e d6 :;: j   � ���<�� 0 maxheightapps maxHeightApps< J   � �== >?> m   � �@@ �AA  M e s s a g e s? BCB m   � �DD �EE 
 S k y p eC FGF m   � �HH �II  T w i t t e rG JKJ m   � �LL �MM  T w e e t b o tK NON m   � �PP �QQ  E s p r e s s oO RSR m   � �TT �UU  M e s s e n g e rS VWV m   � �XX �YY  W h a t s A p pW Z[Z m   � �\\ �]] 
 F r a n z[ ^_^ m   � �`` �aa  G o o g l e   C h r o m e_ bcb m   � �dd �ee 0 S i g n a l   P r i v a t e   M e s s e n g e rc fgf m   � �hh �ii  R o c k e t . C h a tg jkj m   � �ll �mm  S i g n a lk non m   � �pp �qq 
 S l a c ko rsr m   � �tt �uu  T e l e g r a ms vwv m   � �xx �yy  C o d a   2w z{z m   � �|| �}} 
 X c o d e{ ~~ m   � ��� ���  M a c G D B p ��� m   � ��� ���  M a k e M K V� ��� m   � ��� ���  M i c r o s o f t   T o   D o� ��� m   � ��� ���  N o v a� ���� m   � ��� ���  C i s c o   J a b b e r��  ; ��� l     ������  � ; 5 Apps whose should be spanned across the whole screen   � ��� j   A p p s   w h o s e   s h o u l d   b e   s p a n n e d   a c r o s s   t h e   w h o l e   s c r e e n� ��� j   �%�����  0 fullscreenapps fullscreenApps� J   �$�� ��� m   ��� ���  M a p s� ��� m  �� ���  P h o t o s� ��� m  �� ��� , M e r l i n   P r o j e c t   E x p r e s s� ��� m  �� ���  C a l e n d a r� ��� m  �� ���  N u m b e r s� ��� m  �� ���  M i c r o s o f t   E x c e l� ��� m  �� ���  M i c r o s o f t   E d g e� ��� m  �� ��� " A f f i n i t y   D e s i g n e r� ��� m  �� ���  A f f i n i t y   P h o t o� ��� m  �� ���  i M o v i e� ���� m   �� ���  b a n a n a 9 0��  � ��� l     ��������  ��  ��  � ��� l     ������  �   WINDOW SPECIFIC SETTINGS   � ��� 2   W I N D O W   S P E C I F I C   S E T T I N G S� ��� l     ������  � F @ Windows that should be excluded from the cascade (part of name)   � ��� �   W i n d o w s   t h a t   s h o u l d   b e   e x c l u d e d   f r o m   t h e   c a s c a d e   ( p a r t   o f   n a m e )� ��� j  &F�����  0 excludewindows excludeWindows� J  &E�� ��� m  &)�� ���  C o p y� ��� m  ),�� ���  M o b i l e   S y n c� ��� m  ,/�� ���   T e m p l a t e   C h o o s e r� ��� m  /2�� ���  A P I   r e f e r e n c e� ��� m  25�� ���  D r u p a l C o n t r i b� ��� m  58�� ��� 
 P H P :  � ��� m  8;�� ���  L a s e r J e t� ��� m  ;>�� ���  S a m s u n g� ���� m  >A�� ���  B r o t h e r��  � ��� l     ������  � B < Windows that should be snapped to the edges (part of name)    � ��� x   W i n d o w s   t h a t   s h o u l d   b e   s n a p p e d   t o   t h e   e d g e s   ( p a r t   o f   n a m e )  � ��� j  GV����� (0 snaptoedgeswindows snapToEdgesWindows� J  GU    m  GJ � 
 T r a s h  m  JM �  D o w n l o a d s 	
	 m  MP �  W e b   I n s p e c t o r
 �� m  PS �  M i n i P l a y e r��  �  l     ��������  ��  ��    l     ����     GEOMETRY SETTINGS    � $   G E O M E T R Y   S E T T I N G S  j  W[����  0 maxwindowwidth maxWindowWidth m  WZ�����  j  \`���� (0 maxwidewindowwidth maxWideWindowWidth m  \_�����  j  ae���� 0 stackinggap stackingGap m  ad���� #  !  j  fj��"�� 0 standardgap standardGap" m  fi���� ! #$# j  ko��%�� 0 dockgap dockGap% m  kn���� 
$ &'& j  pt��(�� 0 
desktopgap 
desktopGap( m  ps���� �' )*) j  uy��+�� 0 snappinggap snappingGap+ m  ux���� * ,-, j  z���.�� 0 menubarheight menubarHeight. m  z}���� - /0/ l     ��������  ��  ��  0 121 l     ��34��  3   Iternal   4 �55    I t e r n a l2 676 j  ����8�� 0 monitorheight monitorHeight8 m  ������  7 9:9 j  ����;�� 0 monitorwidth monitorWidth; m  ������  : <=< j  ����>�� 0 topbound topBound> m  ������  = ?@? j  ����A�� 0 	leftbound 	leftBoundA m  ������  @ BCB j  ����D�� 0 
boundwidth 
boundWidthD m  ������  C EFE j  ����G�� 0 boundheight boundHeightG m  ������  F HIH j  ����J�� 0 leftgap leftGapJ m  ������  I KLK j  ����M�� 0 topgap topGapM m  ������ L NON j  ����P�� 0 	bottomgap 	bottomGapP m  ������  O QRQ l     ��������  ��  ��  R STS i  ��UVU I     ������
�� .aevtoappnull  �   � ****��  ��  V k    `WW XYX I     �������� *0 guiscripting_status GUIScripting_status��  ��  Y Z��Z O   `[\[ k   
_]] ^_^ l  
 
��������  ��  ��  _ `a` l  
 
��bc��  b   Calculate edges   c �dd     C a l c u l a t e   e d g e sa efe Z   
 �gh��ig H   
 jj n   
 klk 1    ��
�� 
dahdl 1   
 ��
�� 
dpash k    �mm non r    pqp 4    ��r
�� 
plifr m    ss �tt T ~ / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . d o c k . p l i s tq o      ���� 0 	dockprops 	dockPropso uvu r    "wxw l    y����y l    z����z n     {|{ 1     ��
�� 
valL| l   }����} n    ~~ 4    ���
�� 
plii� m    �� ���  t i l e s i z e o    ���� 0 	dockprops 	dockProps��  ��  ��  ��  ��  ��  x o      ���� 0 docktilesize dockTileSizev ���� Z   # ������� =  # *��� n   # (��� 1   & (��
�� 
dpse� 1   # &��
�� 
dpas� m   ( )��
�� dplsbott� k   - R�� ��� r   - 8��� o   - 2���� 0 standardgap standardGap� o      ���� 0 leftgap leftGap� ���� r   9 R��� [   9 L��� [   9 F��� [   9 @��� o   9 :���� 0 docktilesize dockTileSize� o   : ?���� 0 dockgap dockGap� o   @ E���� 0 standardgap standardGap� o   F K���� 0 dockgap dockGap� o      ���� 0 	bottomgap 	bottomGap��  � ��� =  U \��� n   U Z��� 1   X Z��
�� 
dpse� 1   U X��
�� 
dpas� m   Z [��
�� dplsleft� ���� k   _ ~�� ��� r   _ r��� [   _ l��� [   _ f��� o   _ `���� 0 docktilesize dockTileSize� o   ` e���� 0 dockgap dockGap� o   f k���� 0 standardgap standardGap� o      �� 0 leftgap leftGap� ��~� r   s ~��� o   s x�}�} 0 standardgap standardGap� o      �|�| 0 	bottomgap 	bottomGap�~  ��  ��  ��  ��  i k   � ��� ��� r   � ���� o   � ��{�{ 0 standardgap standardGap� o      �z�z 0 leftgap leftGap� ��y� r   � ���� o   � ��x�x 0 standardgap standardGap� o      �w�w 0 	bottomgap 	bottomGap�y  f ��� r   � ���� n   � ���� I   � ��v�u�t�v &0 monitorproperties monitorProperties�u  �t  �  f   � �� o      �s�s 0 monitorprops monitorProps� ��� Z   � ����r�q� =  � ���� o   � ��p�p 0 monitorprops monitorProps� m   � ��o
�o 
null� R   � ��n��m
�n .ascrerr ****      � ****� m   � ��� ��� < C o u l d n ' t   g e t   s c r e e n   r e s o l u t i o n�m  �r  �q  � ��� r   � ���� n   � ���� J   � ��� ��� o   � ��l�l 0 height Height� ��k� o   � ��j�j 0 width Width�k  � o   � ��i�i 0 monitorprops monitorProps� J      �� ��� o      �h�h 0 monitorheight monitorHeight� ��g� o      �f�f 0 monitorwidth monitorWidth�g  � ��� r   � ���� [   � ���� o   � ��e�e 0 menubarheight menubarHeight� o   � ��d�d 0 standardgap standardGap� o      �c�c 0 topbound topBound� ��� Z   �g���b�� l  � ���a�`� B   � ���� o   � ��_�_ 0 monitorwidth monitorWidth� m   � ��^�^��a  �`  � k  3�� ��� r  ��� [  ��� ^  ��� l ��]�\� \  ��� o  �[�[ 0 monitorwidth monitorWidth� o  �Z�Z  0 maxwindowwidth maxWindowWidth�]  �\  � m  �Y�Y � o  �X�X 0 leftgap leftGap� o      �W�W 0 	leftbound 	leftBound� ��V� r  3��� \  -��� \  '��� o  !�U�U  0 maxwindowwidth maxWindowWidth� o  !&�T�T 0 leftgap leftGap� o  ',�S�S 0 standardgap standardGap� o      �R�R 0 
boundwidth 
boundWidth�V  �b  � k  6g�� ��� r  6O��� [  6I��� ^  6C��� l 6A��Q�P� \  6A��� o  6;�O�O 0 monitorwidth monitorWidth� o  ;@�N�N (0 maxwidewindowwidth maxWideWindowWidth�Q  �P  � m  AB�M�M � o  CH�L�L 0 leftgap leftGap� o      �K�K 0 	leftbound 	leftBound� ��J� r  Pg� � \  Pa \  P[ o  PU�I�I (0 maxwidewindowwidth maxWideWindowWidth o  UZ�H�H 0 leftgap leftGap o  [`�G�G 0 standardgap standardGap  o      �F�F 0 
boundwidth 
boundWidth�J  �  r  h \  hy	
	 \  hs o  hm�E�E 0 monitorheight monitorHeight o  mr�D�D 0 topbound topBound
 o  sx�C�C 0 	bottomgap 	bottomGap o      �B�B 0 boundheight boundHeight  l ���A�@�?�A  �@  �?    l ���>�>     Filter out Adobe apps    � ,   F i l t e r   o u t   A d o b e   a p p s  r  �� 6 �� 2 ���=
�= 
pcap F  �� = �� 1  ���<
�< 
pvis m  ���;
�; boovtrue H  �� C  ��  1  ���:
�: 
pnam  m  ��!! �"" 
 A d o b e o      �9�9 $0 visibleprocesses visibleProcesses #$# l ���8�7�6�8  �7  �6  $ %&% l ���5'(�5  '  
 Loop apps   ( �))    L o o p   a p p s& *�4* X  �_+�3,+ Z  �Z-.�2�1- H  ��// E ��010 o  ���0�0 0 excludeapps excludeApps1 n  ��232 1  ���/
�/ 
pnam3 o  ���.�. 0 xprocess xProcess. Z  �V45674 E ��898 o  ���-�-  0 snaptoedgeapps snapToEdgeApps9 n  ��:;: 1  ���,
�, 
pnam; o  ���+�+ 0 xprocess xProcess5 k  �i<< =>= l ���*?@�*  ?   Snap windows to edges   @ �AA ,   S n a p   w i n d o w s   t o   e d g e s> BCB r  �3DED b  �/FGF l �H�)�(H 6 �IJI n  ��KLK 2 ���'
�' 
cwinL o  ���&�& 0 xprocess xProcessJ F  �MNM F  ��OPO = ��QRQ 1  ���%
�% 
sbrlR m  ��SS �TT   A X S t a n d a r d W i n d o wP = ��UVU n  ��WXW 1  ���$
�$ 
valLX 4  ���#Y
�# 
attrY m  ��ZZ �[[  A X F u l l S c r e e nV m  ���"
�" boovfalsN > �
\]\ 1   �!
�! 
pnam] m  	^^ �__  O p e n�)  �(  G l .`� �` 6 .aba n  cdc 2 �
� 
cwind o  �� 0 xprocess xProcessb F  -efe =  ghg 1  �
� 
sbrlh m  ii �jj  A X U n k n o w nf > !,klk 1  "&�
� 
pnaml m  '+mm �nn  O p e n�   �  E o      �� "0 standardwindows standardWindowsC o�o X  4ip�qp Z  Jdrs��r l JVt��t H  JVuu E JUvwv o  JO��  0 excludewindows excludeWindowsw n  OTxyx 1  PT�
� 
pnamy o  OP�� 0 xwindow xWindow�  �  s n  Y`z{z I  Z`�|�� 0 
snaptoedge 
snapToEdge| }~} o  Z[�� 0 xprocess xProcess~ � o  [\�� 0 xwindow xWindow�  �  {  f  YZ�  �  � 0 xwindow xWindowq o  7:�� "0 standardwindows standardWindows�  6 ��� E lw��� o  lq�
�
 0 centeredapps centeredApps� n  qv��� 1  rv�	
�	 
pnam� o  qr�� 0 xprocess xProcess� ��� k  zF�� ��� l zz����  �   Center windows				   � ��� &   C e n t e r   w i n d o w s 	 	 	 	� ��� l zV���� r  zV��� l zR���� 6 zR��� n  z��� 2 {�
� 
cwin� o  z{�� 0 xprocess xProcess� F  �Q��� F  �D��� F  �6��� F  �(��� F  ���� F  ���� F  ����� F  ����� F  ����� F  ����� F  ����� F  ����� F  ����� = ����� 1  ���
� 
sbrl� m  ���� ���   A X S t a n d a r d W i n d o w� = ����� n  ����� 1  ���
� 
valL� 4  ��� �
�  
attr� m  ���� ���  A X F u l l S c r e e n� m  ����
�� boovfals� H  ���� C  ����� 1  ����
�� 
pnam� m  ���� ���  M o b i l e   S y n c� H  ���� C  ����� 1  ����
�� 
pnam� m  ���� ���   T e m p l a t e   C h o o s e r� H  ���� C  ����� 1  ����
�� 
pnam� m  ���� ���  W e b   I n s p e c t o r� H  ���� C  ����� 1  ����
�� 
pnam� m  ���� ���  S o u r c e   o f� H  ���� C  ����� 1  ����
�� 
pnam� m  ���� ���  A P I   r e f e r e n c e� H  ���� D  ����� 1  ����
�� 
pnam� m  ���� ���  D r u p a l C o n t r i b� H  ��� C  �
��� 1   ��
�� 
pnam� m  	�� ��� 
 P H P :  � H  �� E  ��� 1  ��
�� 
pnam� m  �� ���  L a s e r J e t� H  '�� E  &��� 1   ��
�� 
pnam� m  !%�� ���  S a m s u n g� H  )5�� E  )4��� 1  *.��
�� 
pnam� m  /3�� ���  B r o t h e r� H  7C�� E  7B��� 1  8<��
�� 
pnam� m  =A�� ��� " M u l t i p l e   S p e a k e r s� > EP��� 1  FJ��
�� 
pnam� m  KO�� ���  O p e n�  �  � o      ���� "0 standardwindows standardWindows�   Filter windows by names   � ��� 0   F i l t e r   w i n d o w s   b y   n a m e s� ���� X  WF����� Z  mA�� ��� F  m� l my���� H  my E mx o  mr����  0 excludewindows excludeWindows n  rw 1  sw��
�� 
pnam o  rs���� 0 xwindow xWindow��  ��   l |�	����	 H  |�

 E |� o  |����� (0 snaptoedgeswindows snapToEdgesWindows n  �� 1  ����
�� 
pnam o  ������ 0 xwindow xWindow��  ��  � k  �%  r  �� n  �� 1  ����
�� 
posn o  ������ 0 xwindow xWindow o      ���� 0 xpos xPos  r  �� n  �� 1  ����
�� 
ptsz o  ������ 0 xwindow xWindow o      ���� 0 xsize xSize  r  �� J  ��   !"! ^  ��#$# l ��%����% \  ��&'& o  ������ 0 monitorwidth monitorWidth' l ��(����( n  ��)*) 4 ����+
�� 
cobj+ m  ������ * o  ������ 0 xsize xSize��  ��  ��  ��  $ m  ������ " ,��, ^  ��-.- l ��/����/ \  ��010 \  ��232 o  ������ 0 monitorheight monitorHeight3 o  ������ 0 	bottomgap 	bottomGap1 l ��4����4 n  ��565 4 ����7
�� 
cobj7 m  ������ 6 o  ������ 0 xsize xSize��  ��  ��  ��  . m  ������ ��   o      ���� 0 newpos newPos 8��8 Z  �%9:����9 l �;����; F  �<=< F  � >?> F  ��@A@ ?  ��BCB n  ��DED 4 ����F
�� 
cobjF m  ������ E o  ������ 0 newpos newPosC m  ������  A A  ��GHG n  ��IJI 4 ����K
�� 
cobjK m  ������ J o  ������ 0 newpos newPosH o  ������ 0 monitorwidth monitorWidth? ?  ��LML n  ��NON 4 ����P
�� 
cobjP m  ������ O o  ������ 0 newpos newPosM m  ������  = A  QRQ n  STS 4 ��U
�� 
cobjU m  	
���� T o  ���� 0 newpos newPosR o  ���� 0 monitorheight monitorHeight��  ��  : r  !VWV o  ���� 0 newpos newPosW n      XYX 1   ��
�� 
posnY o  ���� 0 xwindow xWindow��  ��  ��    Z[Z l (3\����\ E (3]^] o  (-���� (0 snaptoedgeswindows snapToEdgesWindows^ n  -2_`_ 1  .2��
�� 
pnam` o  -.���� 0 xwindow xWindow��  ��  [ a��a n  6=bcb I  7=��d���� 0 
snaptoedge 
snapToEdged efe o  78���� 0 xprocess xProcessf g��g o  89���� 0 xwindow xWindow��  ��  c  f  67��  ��  �� 0 xwindow xWindow� o  Z]���� "0 standardwindows standardWindows��  � hih E ITjkj o  IN���� 0 maxheightapps maxHeightAppsk n  NSlml 1  OS��
�� 
pnamm o  NO���� 0 xprocess xProcessi non k  W�pp qrq l WW��st��  s %  Stretch windows to max. height   t �uu >   S t r e t c h   w i n d o w s   t o   m a x .   h e i g h tr vwv l W3xyzx r  W3{|{ l W/}����} 6 W/~~ n  W\��� 2 X\��
�� 
cwin� o  WX���� 0 xprocess xProcess F  _.��� F  `!��� F  a��� F  b��� F  c���� F  d���� F  e���� F  f���� F  g���� F  h���� F  i���� F  j���� F  k���� = lw��� 1  mq��
�� 
sbrl� m  rv�� ���   A X S t a n d a r d W i n d o w� = x���� n  y���� 1  ����
�� 
valL� 4  y����
�� 
attr� m  |�� ���  A X F u l l S c r e e n� m  ����
�� boovfals� H  ���� C  ����� 1  ����
�� 
pnam� m  ���� ���  M o b i l e   S y n c� H  ���� C  ����� 1  ����
�� 
pnam� m  ���� ���   T e m p l a t e   C h o o s e r� H  ���� C  ����� 1  ����
�� 
pnam� m  ���� ���  W e b   I n s p e c t o r� H  ���� C  ����� 1  ����
�� 
pnam� m  ���� ���  S o u r c e   o f� H  ���� C  ����� 1  ����
�� 
pnam� m  ���� ���  A P I   r e f e r e n c e� H  ���� D  ����� 1  ����
�� 
pnam� m  ���� ���  D r u p a l C o n t r i b� H  ���� C  ����� 1  ����
�� 
pnam� m  ���� ��� 
 P H P :  � H  ���� E  ����� 1  ����
�� 
pnam� m  ���� ���  L a s e r J e t� H  ��� E  ���� 1  ����
�� 
pnam� m  ��� ���  S a m s u n g� H  �� E  ��� 1  ��
�� 
pnam� m  �� ���  B r o t h e r� H   �� E  ��� 1  ��
�� 
pnam� m  �� ��� " M u l t i p l e   S p e a k e r s� > "-��� 1  #'��
�� 
pnam� m  (,�� ���  O p e n��  ��  | o      ���� "0 standardwindows standardWindowsy   Filter windows by names   z ��� 0   F i l t e r   w i n d o w s   b y   n a m e sw ��� r  4?��� I 4;�����
�� .corecnte****       ****� o  47���� "0 standardwindows standardWindows��  � o      ���� 0 windowcount windowCount� ���� Z  @�������� @  @E��� o  @C���� 0 windowcount windowCount� m  CD���� � k  H��� ��� l HH������  � #  Set window height to maximum   � ��� :   S e t   w i n d o w   h e i g h t   t o   m a x i m u m� ���� X  H������ Z  ^������ l ^j��~�}� H  ^j�� E ^i��� o  ^c�|�|  0 excludewindows excludeWindows� n  ch��� 1  dh�{
�{ 
pnam� o  cd�z�z 0 xwindow xWindow�~  �}  � k  m{�� � � n  ms I  ns�y�x�y 0 
fillheight 
fillHeight �w o  no�v�v 0 xwindow xWindow�w  �x    f  mn  �u n  t{ I  u{�t�s�t 0 
snaptoedge 
snapToEdge 	
	 o  uv�r�r 0 xprocess xProcess
 �q o  vw�p�p 0 xwindow xWindow�q  �s    f  tu�u  ��  �  �� 0 xwindow xWindow� o  KN�o�o "0 standardwindows standardWindows��  ��  ��  ��  o  E �� o  ���n�n  0 fullscreenapps fullscreenApps n  �� 1  ���m
�m 
pnam o  ���l�l 0 xprocess xProcess �k k  ��  l ���j�j   . ( Stretch window to max. height and width    � P   S t r e t c h   w i n d o w   t o   m a x .   h e i g h t   a n d   w i d t h  l �u r  �u l �q �i�h  6 �q!"! n  ��#$# 2 ���g
�g 
cwin$ o  ���f�f 0 xprocess xProcess" F  �p%&% F  �c'(' F  �U)*) F  �G+,+ F  �9-.- F  �+/0/ F  �121 F  �343 F  �565 F  ��787 F  ��9:9 F  ��;<; F  ��=>= = ��?@? 1  ���e
�e 
sbrl@ m  ��AA �BB   A X S t a n d a r d W i n d o w> = ��CDC n  ��EFE 1  ���d
�d 
valLF 4  ���cG
�c 
attrG m  ��HH �II  A X F u l l S c r e e nD m  ���b
�b boovfals< H  ��JJ C  ��KLK 1  ���a
�a 
pnamL m  ��MM �NN  M o b i l e   S y n c: H  ��OO C  ��PQP 1  ���`
�` 
pnamQ m  ��RR �SS   T e m p l a t e   C h o o s e r8 H  ��TT C  ��UVU 1  ���_
�_ 
pnamV m  ��WW �XX  W e b   I n s p e c t o r6 H  � YY C  ��Z[Z 1  ���^
�^ 
pnam[ m  ��\\ �]]  S o u r c e   o f4 H  ^^ C  _`_ 1  �]
�] 
pnam` m  aa �bb  A P I   r e f e r e n c e2 H  cc D  ded 1  �\
�\ 
pname m  ff �gg  D r u p a l C o n t r i b0 H  *hh C  )iji 1  #�[
�[ 
pnamj m  $(kk �ll 
 P H P :  . H  ,8mm E  ,7non 1  -1�Z
�Z 
pnamo m  26pp �qq  L a s e r J e t, H  :Frr E  :Ests 1  ;?�Y
�Y 
pnamt m  @Duu �vv  S a m s u n g* H  HTww E  HSxyx 1  IM�X
�X 
pnamy m  NRzz �{{  B r o t h e r( H  Vb|| E  Va}~} 1  W[�W
�W 
pnam~ m  \` ��� " M u l t i p l e   S p e a k e r s& > do��� 1  ei�V
�V 
pnam� m  jn�� ���  O p e n�i  �h   o      �U�U "0 standardwindows standardWindows   Filter windows by names    ��� 0   F i l t e r   w i n d o w s   b y   n a m e s ��T� X  v���S�� Z  ������R� F  ����� l ����Q�P� H  ���� E ����� o  ���O�O  0 excludewindows excludeWindows� n  ����� 1  ���N
�N 
pnam� o  ���M�M 0 xwindow xWindow�Q  �P  � l ����L�K� H  ���� E ����� o  ���J�J (0 snaptoedgeswindows snapToEdgesWindows� n  ����� 1  ���I
�I 
pnam� o  ���H�H 0 xwindow xWindow�L  �K  � n  ����� I  ���G��F�G 0 
fillscreen 
fillScreen� ��E� o  ���D�D 0 xwindow xWindow�E  �F  �  f  ��� ��� l ����C�B� E ����� o  ���A�A (0 snaptoedgeswindows snapToEdgesWindows� n  ����� 1  ���@
�@ 
pnam� o  ���?�? 0 xwindow xWindow�C  �B  � ��>� n  ����� I  ���=��<�= 0 
snaptoedge 
snapToEdge� ��� o  ���;�; 0 xprocess xProcess� ��:� o  ���9�9 0 xwindow xWindow�:  �<  �  f  ���>  �R  �S 0 xwindow xWindow� o  y|�8�8 "0 standardwindows standardWindows�T  �k  7 k  �V�� ��� l ���7���7  �   Cascade windows   � ���     C a s c a d e   w i n d o w s� ��� l ������ r  ����� l ����6�5� 6 ����� n  ����� 2 ���4
�4 
cwin� o  ���3�3 0 xprocess xProcess� F  ����� F  ����� F  ����� F  ����� F  �x��� F  �j��� F  �\��� F  �N��� F  �@��� F  �2��� F  �$��� F  ���� F  ���� = ����� 1  ���2
�2 
sbrl� m  ���� ���   A X S t a n d a r d W i n d o w� = ���� n  ���� 1  �1
�1 
valL� 4  ��0�
�0 
attr� m  � �� ���  A X F u l l S c r e e n� m  �/
�/ boovfals� H  	�� C  	��� 1  
�.
�. 
pnam� m  �� ���  M o b i l e   S y n c� H  #�� C  "��� 1  �-
�- 
pnam� m  !�� ���   T e m p l a t e   C h o o s e r� H  %1�� C  %0��� 1  &*�,
�, 
pnam� m  +/�� ���  W e b   I n s p e c t o r� H  3?�� C  3>��� 1  48�+
�+ 
pnam� m  9=�� ���  S o u r c e   o f� H  AM�� C  AL��� 1  BF�*
�* 
pnam� m  GK�� ���  A P I   r e f e r e n c e� H  O[�� D  OZ��� 1  PT�)
�) 
pnam� m  UY�� �    D r u p a l C o n t r i b� H  ]i C  ]h 1  ^b�(
�( 
pnam m  cg � 
 P H P :  � H  kw E  kv 1  lp�'
�' 
pnam m  qu		 �

  L a s e r J e t� H  y� E  y� 1  z~�&
�& 
pnam m  � �  S a m s u n g� H  �� E  �� 1  ���%
�% 
pnam m  �� �  B r o t h e r� H  �� E  �� 1  ���$
�$ 
pnam m  �� � " M u l t i p l e   S p e a k e r s� > �� 1  ���#
�# 
pnam m  �� �  O p e n�6  �5  � o      �"�" "0 standardwindows standardWindows�   Filter windows by names   � � 0   F i l t e r   w i n d o w s   b y   n a m e s�   r  ��!"! I ���!#� 
�! .corecnte****       ****# o  ���� "0 standardwindows standardWindows�   " o      �� 0 windowcount windowCount  $�$ Z  �V%&��% @  ��'(' o  ���� 0 windowcount windowCount( m  ���� & k  �R)) *+* l ���,-�  , 8 2 set standardWindows to reverse of standardWindows   - �.. d   s e t   s t a n d a r d W i n d o w s   t o   r e v e r s e   o f   s t a n d a r d W i n d o w s+ /0/ r  ��121 o  ���� "0 standardwindows standardWindows2 o      �� "0 standardwindows standardWindows0 343 r  ��565 \  ��787 o  ���� 0 
boundwidth 
boundWidth8 l ��9��9 ]  ��:;: l ��<��< \  ��=>= o  ���� 0 windowcount windowCount> m  ���� �  �  ; o  ���� 0 stackinggap stackingGap�  �  6 o      �� 0 maxwidth maxWidth4 ?@? r  ��ABA \  ��CDC o  ���� 0 boundheight boundHeightD l ��E��
E ]  ��FGF l ��H�	�H \  ��IJI o  ���� 0 windowcount windowCountJ m  ���� �	  �  G o  ���� 0 stackinggap stackingGap�  �
  B o      �� 0 	maxheight 	maxHeight@ KLK r  �MNM m  ����  N o      �� 0 
stackorder 
stackOrderL O�O X  RP� QP Z  MRS��TR l %U����U H  %VV E $WXW o  ���� (0 snaptoedgeswindows snapToEdgesWindowsX n  #YZY 1  #��
�� 
pnamZ o  ���� 0 windowobject windowObject��  ��  S k  (C[[ \]\ r  (1^_^ [  (-`a` o  (+���� 0 
stackorder 
stackOrdera m  +,���� _ o      ���� 0 
stackorder 
stackOrder] b��b n  2Ccdc I  3C��e���� 0 cascadewindow cascadeWindowe fgf o  36���� 0 
stackorder 
stackOrderg hih o  69���� 0 maxwidth maxWidthi jkj o  9<���� 0 	maxheight 	maxHeightk l��l o  <=���� 0 windowobject windowObject��  ��  d  f  23��  ��  T n  FMmnm I  GM��o���� 0 
snaptoedge 
snapToEdgeo pqp o  GH���� 0 xprocess xProcessq r��r o  HI���� 0 windowobject windowObject��  ��  n  f  FG�  0 windowobject windowObjectQ o  	���� "0 standardwindows standardWindows�  �  �  �  �2  �1  �3 0 xprocess xProcess, o  ������ $0 visibleprocesses visibleProcesses�4  \ m    ss�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  T tut l     ��������  ��  ��  u vwv i  ��xyx I      ��z���� 0 cascadewindow cascadeWindowz {|{ o      ���� 0 
stackorder 
stackOrder| }~} o      ���� 0 maxwidth maxWidth~ � o      ���� 0 	maxheight 	maxHeight� ���� o      ���� 0 windowobject windowObject��  ��  y O     Y��� k    X�� ��� r    (��� J    $�� ��� [    ��� o    	���� 0 	leftbound 	leftBound� ]   	 ��� l  	 ������ \   	 ��� o   	 
���� 0 
stackorder 
stackOrder� m   
 ���� ��  ��  � o    ���� 0 stackinggap stackingGap� ���� [    "��� o    ���� 0 topbound topBound� ]    !��� l   ������ \    ��� o    ���� 0 
stackorder 
stackOrder� m    ���� ��  ��  � o     ���� 0 stackinggap stackingGap��  � n      ��� 1   % '��
�� 
posn� o   $ %���� 0 windowobject windowObject� ��� r   ) 1��� J   ) -�� ��� o   ) *���� 0 maxwidth maxWidth� ���� o   * +���� 0 	maxheight 	maxHeight��  � n      ��� 1   . 0��
�� 
ptsz� o   - .���� 0 windowobject windowObject� ��� r   2 7��� n   2 5��� 1   3 5��
�� 
ptsz� o   2 3���� 0 windowobject windowObject� o      ���� 0 checkheight checkHeight� ���� Z   8 X������� >  8 >��� l  8 <������ n   8 <��� 4  9 <���
�� 
cobj� m   : ;���� � o   8 9���� 0 checkheight checkHeight��  ��  � o   < =���� 0 	maxheight 	maxHeight� k   A T�� ��� l  A K���� r   A K��� J   A G�� ��� o   A B���� 0 maxwidth maxWidth� ���� \   B E��� o   B C���� 0 	maxheight 	maxHeight� m   C D���� ��  � n      ��� 1   H J��
�� 
ptsz� o   G H���� 0 windowobject windowObject� , & Lion won't resize sometimes, force it   � ��� L   L i o n   w o n ' t   r e s i z e   s o m e t i m e s ,   f o r c e   i t� ���� r   L T��� J   L P�� ��� o   L M���� 0 maxwidth maxWidth� ���� o   M N���� 0 	maxheight 	maxHeight��  � n      ��� 1   Q S��
�� 
ptsz� o   P Q���� 0 windowobject windowObject��  ��  ��  ��  � m     ���                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  w ��� l     ��������  ��  ��  � ��� i  ����� I      ������� 0 
snaptoedge 
snapToEdge� ��� o      ���� 0 thisprocess thisProcess� ���� o      ���� 0 
thiswindow 
thisWindow��  ��  � O    >��� k   =�� ��� r    	��� n    ��� 1    ��
�� 
posn� o    ���� 0 
thiswindow 
thisWindow� o      ���� 0 xpos xPos� ��� r   
 ��� n   
 ��� 1    ��
�� 
ptsz� o   
 ���� 0 
thiswindow 
thisWindow� o      ���� 0 xsize xSize� ��� l   ������  �   constrain window height   � ��� 0   c o n s t r a i n   w i n d o w   h e i g h t� ��� Z    i������� ?    ��� n    ��� 4   ���
�� 
cobj� m    ���� � o    ���� 0 xsize xSize� o    ���� 0 boundheight boundHeight� k    e�� ��� r    ,��� J    (�� ��� n    !   4   !��
�� 
cobj m     ����  o    ���� 0 xsize xSize� �� o   ! &���� 0 boundheight boundHeight��  � n       1   ) +��
�� 
ptsz o   ( )���� 0 
thiswindow 
thisWindow�  r   - 2	 n   - 0

 1   . 0��
�� 
ptsz o   - .���� 0 
thiswindow 
thisWindow	 o      ���� 0 checkheight checkHeight �� Z   3 e���� >  3 = l  3 7���� n   3 7 4  4 7��
�� 
cobj m   5 6����  o   3 4���� 0 checkheight checkHeight��  ��   o   7 <���� 0 boundheight boundHeight k   @ a  l  @ Q r   @ Q J   @ M  n   @ D !  4  A D��"
�� 
cobj" m   B C���� ! o   @ A���� 0 xsize xSize #��# \   D K$%$ o   D I���� 0 boundheight boundHeight% m   I J���� ��   n      &'& 1   N P��
�� 
ptsz' o   M N���� 0 
thiswindow 
thisWindow , & Lion won't resize sometimes, force it    �(( L   L i o n   w o n ' t   r e s i z e   s o m e t i m e s ,   f o r c e   i t )��) r   R a*+* J   R ],, -.- n   R V/0/ 4  S V��1
�� 
cobj1 m   T U�� 0 o   R S�~�~ 0 xsize xSize. 2�}2 o   V [�|�| 0 boundheight boundHeight�}  + n      343 1   ^ `�{
�{ 
ptsz4 o   ] ^�z�z 0 
thiswindow 
thisWindow��  ��  ��  ��  ��  ��  � 565 l  j j�y78�y  7   vertical decluttering   8 �99 ,   v e r t i c a l   d e c l u t t e r i n g6 :;: Z   j �<=>�x< A   j z?@? n   j nABA 4  k n�wC
�w 
cobjC m   l m�v�v B o   j k�u�u 0 xpos xPos@ l  n yD�t�sD [   n yEFE o   n s�r�r 0 snappinggap snappingGapF o   s x�q�q 0 menubarheight menubarHeight�t  �s  = r   } �GHG J   } �II JKJ n   } �LML 4  ~ ��pN
�p 
cobjN m    ��o�o M o   } ~�n�n 0 xpos xPosK O�mO o   � ��l�l 0 topbound topBound�m  H n      PQP 1   � ��k
�k 
posnQ o   � ��j�j 0 
thiswindow 
thisWindow> RSR A   � �TUT \   � �VWV \   � �XYX o   � ��i�i 0 monitorheight monitorHeightY o   � ��h�h 0 	bottomgap 	bottomGapW l  � �Z�g�fZ [   � �[\[ l  � �]�e�d] n   � �^_^ 4  � ��c`
�c 
cobj` m   � ��b�b _ o   � ��a�a 0 xpos xPos�e  �d  \ l  � �a�`�_a n   � �bcb 4  � ��^d
�^ 
cobjd m   � ��]�] c o   � ��\�\ 0 xsize xSize�`  �_  �g  �f  U o   � ��[�[ 0 snappinggap snappingGapS e�Ze r   � �fgf J   � �hh iji n   � �klk 4  � ��Ym
�Y 
cobjm m   � ��X�X l o   � ��W�W 0 xpos xPosj n�Vn \   � �opo \   � �qrq o   � ��U�U 0 monitorheight monitorHeightr o   � ��T�T 0 	bottomgap 	bottomGapp l  � �s�S�Rs n   � �tut 4  � ��Qv
�Q 
cobjv m   � ��P�P u o   � ��O�O 0 xsize xSize�S  �R  �V  g n      wxw 1   � ��N
�N 
posnx o   � ��M�M 0 
thiswindow 
thisWindow�Z  �x  ; yzy r   � �{|{ n   � �}~} 1   � ��L
�L 
posn~ o   � ��K�K 0 
thiswindow 
thisWindow| o      �J�J 0 xpos xPosz � l  � ��I���I  �   Horizontal Decluttering   � ��� 0   H o r i z o n t a l   D e c l u t t e r i n g� ��� Z   � ����H�� E  � ���� o   � ��G�G &0 extrarightgapapps extraRightGapApps� n   � ���� 1   � ��F
�F 
pnam� o   � ��E�E 0 thisprocess thisProcess� r   � ���� o   � ��D�D 0 extrarightgap extraRightGap� o      �C�C 0 rightgap rightGap�H  � r   � ���� o   � ��B�B 0 standardgap standardGap� o      �A�A 0 rightgap rightGap� ��@� Z   �=����?� A   ���� \   � ���� o   � ��>�> 0 monitorwidth monitorWidth� l  � ���=�<� [   � ���� l  � ���;�:� n   � ���� 4  � ��9�
�9 
cobj� m   � ��8�8 � o   � ��7�7 0 xpos xPos�;  �:  � l  � ���6�5� n   � ���� 4  � ��4�
�4 
cobj� m   � ��3�3 � o   � ��2�2 0 xsize xSize�6  �5  �=  �<  � o   � �1�1 0 rightgap rightGap� k  �� ��� l �0���0  �   Correct right gap   � ��� $   C o r r e c t   r i g h t   g a p� ��/� r  ��� J  �� ��� \  ��� o  	�.�. 0 monitorwidth monitorWidth� l 	��-�,� [  	��� l 	��+�*� n  	��� 4 
�)�
�) 
cobj� m  �(�( � o  	
�'�' 0 xsize xSize�+  �*  � o  �&�& 0 rightgap rightGap�-  �,  � ��%� n  ��� 4 �$�
�$ 
cobj� m  �#�# � o  �"�" 0 xpos xPos�%  � n      ��� 1  �!
�! 
posn� o  � �  0 
thiswindow 
thisWindow�/  � ��� A  '��� n  !��� 4 !��
� 
cobj� m   �� � o  �� 0 xpos xPos� o  !&�� 0 leftgap leftGap� ��� k  *9�� ��� l **����  �   Correct left gap   � ��� "   C o r r e c t   l e f t   g a p� ��� r  *9��� J  *5�� ��� o  */�� 0 leftgap leftGap� ��� n  /3��� 4 03��
� 
cobj� m  12�� � o  /0�� 0 xpos xPos�  � n      ��� 1  68�
� 
posn� o  56�� 0 
thiswindow 
thisWindow�  �  �?  �@  � m     ���                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l     ����  �  �  � ��� i  ����� I      ���� 0 
fillheight 
fillHeight� ��� o      �� 0 
thiswindow 
thisWindow�  �  � O     o��� k    n�� ��� r    	��� n    ��� 1    �

�
 
posn� o    �	�	 0 
thiswindow 
thisWindow� o      �� 0 xpos xPos� ��� r   
 ��� n   
 ��� 1    �
� 
ptsz� o   
 �� 0 
thiswindow 
thisWindow� o      �� 0 xsize xSize� ��� r    ��� c    ��� n    ��� 4   ��
� 
cobj� m    �� � o    �� 0 xpos xPos� m    �
� 
long� o      � �  0 xleft xLeft� ��� r    !��� c    ��� n       4   ��
�� 
cobj m    ����  o    ���� 0 xsize xSize� m    ��
�� 
long� o      ���� 0 xwidth xWidth�  r   " . J   " * 	 o   " #���� 0 xleft xLeft	 
��
 o   # (���� 0 topbound topBound��   n       1   + -��
�� 
posn o   * +���� 0 
thiswindow 
thisWindow  r   / ; J   / 7  o   / 0���� 0 xwidth xWidth �� o   0 5���� 0 boundheight boundHeight��   n       1   8 :��
�� 
ptsz o   7 8���� 0 
thiswindow 
thisWindow  r   < A n   < ? 1   = ?��
�� 
ptsz o   < =���� 0 
thiswindow 
thisWindow o      ���� 0 checkheight checkHeight �� Z   B n���� >  B L !  l  B F"����" n   B F#$# 4  C F��%
�� 
cobj% m   D E���� $ o   B C���� 0 checkheight checkHeight��  ��  ! o   F K���� 0 boundheight boundHeight k   O j&& '(' l  O ])*+) r   O ],-, J   O Y.. /0/ o   O P���� 0 xwidth xWidth0 1��1 \   P W232 o   P U���� 0 boundheight boundHeight3 m   U V���� ��  - n      454 1   Z \��
�� 
ptsz5 o   Y Z���� 0 
thiswindow 
thisWindow* , & Lion won't resize sometimes, force it   + �66 L   L i o n   w o n ' t   r e s i z e   s o m e t i m e s ,   f o r c e   i t( 7��7 r   ^ j898 J   ^ f:: ;<; o   ^ _���� 0 xwidth xWidth< =��= o   _ d���� 0 boundheight boundHeight��  9 n      >?> 1   g i��
�� 
ptsz? o   f g���� 0 
thiswindow 
thisWindow��  ��  ��  ��  � m     @@�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ABA l     ��������  ��  ��  B CDC i  ��EFE I      ��G���� 0 
fillscreen 
fillScreenG H��H o      ���� 0 
thiswindow 
thisWindow��  ��  F O     �IJI k    �KK LML r    NON J    PP QRQ o    	���� 0 leftgap leftGapR S��S o   	 ���� 0 topbound topBound��  O n      TUT 1    ��
�� 
posnU o    ���� 0 
thiswindow 
thisWindowM VWV r    .XYX \    ,Z[Z \    &\]\ \     ^_^ o    ���� 0 monitorwidth monitorWidth_ o    ���� 0 leftgap leftGap] o     %���� 0 standardgap standardGap[ o   & +���� 0 
desktopgap 
desktopGapY o      ���� 0 targetwidth targetWidthW `a` r   / ?bcb J   / ;dd efe o   / 4���� 0 
boundwidth 
boundWidthf g��g o   4 9���� 0 boundheight boundHeight��  c n      hih 1   < >��
�� 
ptszi o   ; <���� 0 
thiswindow 
thisWindowa jkj r   @ Elml n   @ Cnon 1   A C��
�� 
ptszo o   @ A���� 0 
thiswindow 
thisWindowm o      ���� 0 checkheight checkHeightk pqp Z   F rrs����r >  F Ptut l  F Jv����v n   F Jwxw 4  G J��y
�� 
cobjy m   H I���� x o   F G���� 0 checkheight checkHeight��  ��  u o   J O���� 0 boundheight boundHeights k   S nzz {|{ l  S a}~} r   S a��� J   S ]�� ��� o   S T���� 0 targetwidth targetWidth� ���� \   T [��� o   T Y���� 0 boundheight boundHeight� m   Y Z���� ��  � n      ��� 1   ^ `��
�� 
ptsz� o   ] ^���� 0 
thiswindow 
thisWindow~ , & Lion won't resize sometimes, force it    ��� L   L i o n   w o n ' t   r e s i z e   s o m e t i m e s ,   f o r c e   i t| ���� r   b n��� J   b j�� ��� o   b c���� 0 targetwidth targetWidth� ���� o   c h���� 0 boundheight boundHeight��  � n      ��� 1   k m��
�� 
ptsz� o   j k���� 0 
thiswindow 
thisWindow��  ��  ��  q ���� Z   s �������� >  s y��� l  s w������ n   s w��� 4  t w���
�� 
cobj� m   u v���� � o   s t���� 0 checkheight checkHeight��  ��  � o   w x���� 0 targetwidth targetWidth� k   | ��� ��� l  | ����� r   | ���� J   | ��� ��� \   | ��� o   | }���� 0 targetwidth targetWidth� m   } ~���� � ���� o    ����� 0 boundheight boundHeight��  � n      ��� 1   � ���
�� 
ptsz� o   � ����� 0 
thiswindow 
thisWindow� , & Lion won't resize sometimes, force it   � ��� L   L i o n   w o n ' t   r e s i z e   s o m e t i m e s ,   f o r c e   i t� ���� r   � ���� J   � ��� ��� o   � ����� 0 targetwidth targetWidth� ���� o   � ����� 0 boundheight boundHeight��  � n      ��� 1   � ���
�� 
ptsz� o   � ����� 0 
thiswindow 
thisWindow��  ��  ��  ��  J m     ���                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  D ��� l     ��������  ��  ��  � ��� i  ����� I      �������� *0 guiscripting_status GUIScripting_status��  ��  � k     =�� ��� l     ������  � 3 - check to see if assistive devices is enabled   � ��� Z   c h e c k   t o   s e e   i f   a s s i s t i v e   d e v i c e s   i s   e n a b l e d� ��� O     
��� r    	��� 1    ��
�� 
uien� o      ���� 0 
ui_enabled 
UI_enabled� m     ���                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ���� Z    =������� =   ��� o    ���� 0 
ui_enabled 
UI_enabled� m    ��
�� boovfals� O    9��� k    8�� ��� I   ������
�� .miscactvnull��� ��� null��  ��  � ��� r    $��� 5     �����
�� 
xppb� m    �� ��� H c o m . a p p l e . p r e f e r e n c e . u n i v e r s a l a c c e s s
�� kfrmID  � 1     #��
�� 
xpcp� ���� I  % 8����
�� .sysodlogaskr        TEXT� b   % ,��� b   % *��� b   % (��� m   % &�� ��� � T h i s   s c r i p t   u t i l i z e s   t h e   b u i l t - i n   G r a p h i c   U s e r   I n t e r f a c e   S c r i p t i n g   a r c h i t e c t u r e   o f   M a c   O S   x   w h i c h   i s   c u r r e n t l y   d i s a b l e d .� o   & '��
�� 
ret � o   ( )�
� 
ret � m   * +�� ��� Y o u   c a n   a c t i v a t e   G U I   S c r i p t i n g   b y   s e l e c t i n g   t h e   c h e c k b o x   " E n a b l e   a c c e s s   f o r   a s s i s t i v e   d e v i c e s "   i n   t h e   U n i v e r s a l   A c c e s s   p r e f e r e n c e   p a n e .� �~��
�~ 
disp� m   - .�}�} � �|��
�| 
btns� J   / 2�� ��{� m   / 0�� ���  C a n c e l�{  � �z��y
�z 
dflt� m   3 4�x�x �y  ��  � m    ���                                                                                  sprf  alis    `  Macintosh HD                   BD ����System Preferences.app                                         ����            ����  
 cu             Applications  -/:System:Applications:System Preferences.app/   .  S y s t e m   P r e f e r e n c e s . a p p    M a c i n t o s h   H D  *System/Applications/System Preferences.app  / ��  ��  ��  ��  � ��� l     �w�v�u�w  �v  �u  � ��� i  ����� I      �t�s�r�t &0 monitorproperties monitorProperties�s  �r  � k     "�� ��� O     ��� r    ��� n    	 		  1   	 �q
�q 
pbnd	 n    				 m    	�p
�p 
cwin	 1    �o
�o 
desk� o      �n�n $0 screenresolution screenResolution� m     		�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � 	�m	 L    "		 K    !		 �l			�l 0 width Width	 n    	
		
 4    �k	
�k 
cobj	 m    �j�j 	 o    �i�i $0 screenresolution screenResolution		 �h		�h 0 height Height	 n    			 4    �g	
�g 
cobj	 m    �f�f 	 o    �e�e $0 screenresolution screenResolution	 �d		�d 0 originx OriginX	 m    �c
�c 
msng	 �b	�a�b 0 originy OriginY	 m    �`
�` 
msng�a  �m  � 			 l     �_�^�]�_  �^  �]  	 			 l     �\		�\  	 , & # Creative Commons Konzessionsurkunde   	 �		 L   #   C r e a t i v e   C o m m o n s   K o n z e s s i o n s u r k u n d e	 			 l     �[		�[  	      	 �	 	    	 	!	"	! l     �Z	#	$�Z  	# ` Z ## Namensnennung - Weitergabe unter gleichen Bedingungen 4.0 International (CC BY-SA 4.0)   	$ �	%	% �   # #   N a m e n s n e n n u n g   -   W e i t e r g a b e   u n t e r   g l e i c h e n   B e d i n g u n g e n   4 . 0   I n t e r n a t i o n a l   ( C C   B Y - S A   4 . 0 )	" 	&	'	& l     �Y	(	)�Y  	(      	) �	*	*   	' 	+	,	+ l     �X	-	.�X  	- w q Dies ist eine allgemeinverst�ndliche Zusammenfassung der Lizenz (die diese nicht ersetzt). Haftungsbeschr�nkung.   	. �	/	/ �   D i e s   i s t   e i n e   a l l g e m e i n v e r s t � n d l i c h e   Z u s a m m e n f a s s u n g   d e r   L i z e n z   ( d i e   d i e s e   n i c h t   e r s e t z t ) .   H a f t u n g s b e s c h r � n k u n g .	, 	0	1	0 l     �W	2	3�W  	2      	3 �	4	4   	1 	5	6	5 l     �V	7	8�V  	7 #  ### Sie d�rfen: [sie-d�rfen]   	8 �	9	9 :   # # #   S i e   d � r f e n :   [ s i e - d � r f e n ]	6 	:	;	: l     �U	<	=�U  	<      	= �	>	>   	; 	?	@	? l     �T	A	B�T  	A f ` - **Teilen** � das Material in jedwedem Format oder Medium vervielf�ltigen und weiterverbreiten   	B �	C	C �   -   * * T e i l e n * *      d a s   M a t e r i a l   i n   j e d w e d e m   F o r m a t   o d e r   M e d i u m   v e r v i e l f � l t i g e n   u n d   w e i t e r v e r b r e i t e n	@ 	D	E	D l     �S	F	G�S  	F � { - **Bearbeiten** � das Material remixen, ver�ndern und darauf aufbauen - und zwar f�r beliebige Zwecke, sogar kommerziell.   	G �	H	H �   -   * * B e a r b e i t e n * *      d a s   M a t e r i a l   r e m i x e n ,   v e r � n d e r n   u n d   d a r a u f   a u f b a u e n   -   u n d   z w a r   f � r   b e l i e b i g e   Z w e c k e ,   s o g a r   k o m m e r z i e l l .	E 	I	J	I l     �R	K	L�R  	K q k - Der Lizenzgeber kann diese Freiheiten nicht widerrufen solange Sie sich an die Lizenzbedingungen halten.   	L �	M	M �   -   D e r   L i z e n z g e b e r   k a n n   d i e s e   F r e i h e i t e n   n i c h t   w i d e r r u f e n   s o l a n g e   S i e   s i c h   a n   d i e   L i z e n z b e d i n g u n g e n   h a l t e n .	J 	N	O	N l     �Q	P	Q�Q  	P      	Q �	R	R   	O 	S	T	S l     �P	U	V�P  	U   - - -   	V �	W	W    -   -   -	T 	X	Y	X l     �O	Z	[�O  	Z      	[ �	\	\   	Y 	]	^	] l     �N	_	`�N  	_ E ? ### Unter folgenden Bedingungen: [unter-folgenden-bedingungen]   	` �	a	a ~   # # #   U n t e r   f o l g e n d e n   B e d i n g u n g e n :   [ u n t e r - f o l g e n d e n - b e d i n g u n g e n ]	^ 	b	c	b l     �M	d	e�M  	d      	e �	f	f   	c 	g	h	g l     �L	i	j�L  	ib\ - **Namensnennung** � Sie m�ssen angemessene Urheber- und Rechteangaben machen, einen Link zur Lizenz beif�gen und angeben, ob �nderungen vorgenommen wurden. Diese Angaben d�rfen in jeder angemessenen Art und Weise gemacht werden, allerdings nicht so, dass der Eindruck entsteht, der Lizenzgeber unterst�tze gerade Sie oder Ihre Nutzung besonders.   	j �	k	k�   -   * * N a m e n s n e n n u n g * *      S i e   m � s s e n   a n g e m e s s e n e   U r h e b e r -   u n d   R e c h t e a n g a b e n   m a c h e n ,   e i n e n   L i n k   z u r   L i z e n z   b e i f � g e n   u n d   a n g e b e n ,   o b   � n d e r u n g e n   v o r g e n o m m e n   w u r d e n .   D i e s e   A n g a b e n   d � r f e n   i n   j e d e r   a n g e m e s s e n e n   A r t   u n d   W e i s e   g e m a c h t   w e r d e n ,   a l l e r d i n g s   n i c h t   s o ,   d a s s   d e r   E i n d r u c k   e n t s t e h t ,   d e r   L i z e n z g e b e r   u n t e r s t � t z e   g e r a d e   S i e   o d e r   I h r e   N u t z u n g   b e s o n d e r s .	h 	l	m	l l     �K	n	o�K  	n � � - **Weitergabe unter gleichen Bedingungen** � Wenn Sie das Material remixen, ver�ndern oder anderweitig direkt darauf aufbauen, d�rfen Sie Ihre Beitr�ge nur unter derselben Lizenz wie das Original verbreiten.   	o �	p	p�   -   * * W e i t e r g a b e   u n t e r   g l e i c h e n   B e d i n g u n g e n * *      W e n n   S i e   d a s   M a t e r i a l   r e m i x e n ,   v e r � n d e r n   o d e r   a n d e r w e i t i g   d i r e k t   d a r a u f   a u f b a u e n ,   d � r f e n   S i e   I h r e   B e i t r � g e   n u r   u n t e r   d e r s e l b e n   L i z e n z   w i e   d a s   O r i g i n a l   v e r b r e i t e n .	m 	q	r	q l     �J	s	t�J  	s � � - **Keine weiteren Einschr�nkungen** � Sie d�rfen keine zus�tzlichen Klauseln oder technische Verfahren einsetzen, die anderen rechtlich irgendetwas untersagen, was die Lizenz erlaubt.   	t �	u	ur   -   * * K e i n e   w e i t e r e n   E i n s c h r � n k u n g e n * *      S i e   d � r f e n   k e i n e   z u s � t z l i c h e n   K l a u s e l n   o d e r   t e c h n i s c h e   V e r f a h r e n   e i n s e t z e n ,   d i e   a n d e r e n   r e c h t l i c h   i r g e n d e t w a s   u n t e r s a g e n ,   w a s   d i e   L i z e n z   e r l a u b t .	r 	v	w	v l     �I	x	y�I  	x      	y �	z	z   	w 	{	|	{ l     �H	}	~�H  	}   - - -   	~ �		    -   -   -	| 	�	�	� l     �G	�	��G  	�      	� �	�	�   	� 	�	�	� l     �F	�	��F  	�   ### Hinweise: [hinweise]   	� �	�	� 2   # # #   H i n w e i s e :   [ h i n w e i s e ]	� 	�	�	� l     �E	�	��E  	�      	� �	�	�   	� 	�	�	� l     �D	�	��D  	� � � - Sie m�ssen sich nicht an diese Lizenz halten hinsichtlich solcher Teile des Materials, die gemeinfrei sind, oder soweit Ihre Nutzungshandlungen durch Ausnahmen und Schranken des Urheberrechts gedeckt sind.   	� �	�	��   -   S i e   m � s s e n   s i c h   n i c h t   a n   d i e s e   L i z e n z   h a l t e n   h i n s i c h t l i c h   s o l c h e r   T e i l e   d e s   M a t e r i a l s ,   d i e   g e m e i n f r e i   s i n d ,   o d e r   s o w e i t   I h r e   N u t z u n g s h a n d l u n g e n   d u r c h   A u s n a h m e n   u n d   S c h r a n k e n   d e s   U r h e b e r r e c h t s   g e d e c k t   s i n d .	� 	�	�	� l     �C	�	��C  	�WQ - Es werden keine Garantien gegeben und auch keine Gew�hr geleistet. Die Lizenz verschafft Ihnen m�glicherweise nicht alle Erlaubnisse, die Sie f�r die jeweilige Nutzung brauchen. Es k�nnen beispielsweise andere Rechte wie Pers�nlichkeits- und Datenschutzrechte zu beachten sein, die Ihre Nutzung des Materials entsprechend beschr�nken.   	� �	�	��   -   E s   w e r d e n   k e i n e   G a r a n t i e n   g e g e b e n   u n d   a u c h   k e i n e   G e w � h r   g e l e i s t e t .   D i e   L i z e n z   v e r s c h a f f t   I h n e n   m � g l i c h e r w e i s e   n i c h t   a l l e   E r l a u b n i s s e ,   d i e   S i e   f � r   d i e   j e w e i l i g e   N u t z u n g   b r a u c h e n .   E s   k � n n e n   b e i s p i e l s w e i s e   a n d e r e   R e c h t e   w i e   P e r s � n l i c h k e i t s -   u n d   D a t e n s c h u t z r e c h t e   z u   b e a c h t e n   s e i n ,   d i e   I h r e   N u t z u n g   d e s   M a t e r i a l s   e n t s p r e c h e n d   b e s c h r � n k e n .	� 	�	�	� l     �B	�	��B  	�      	� �	�	�   	� 	�	�	� l     �A	�	��A  	� � � [Erfahren Sie mehr](https://wiki.creativecommons.org/FAQ) �ber CC-Lizenzierung oder verwenden Sie diese Lizenz f�r Ihr eigenes Material.   	� �	�	�   [ E r f a h r e n   S i e   m e h r ] ( h t t p s : / / w i k i . c r e a t i v e c o m m o n s . o r g / F A Q )   � b e r   C C - L i z e n z i e r u n g   o d e r   v e r w e n d e n   S i e   d i e s e   L i z e n z   f � r   I h r   e i g e n e s   M a t e r i a l .	� 	�	�	� l     �@	�	��@  	�      	� �	�	�   	� 	�	�	� l     �?	�	��?  	� Dieser Inhalt ist durch Creative-Commons, einer Non-Profit-Organisation, die auf Spenden angewiesen ist, unter einfachen rechtlichen Regeln verf�gbar. Wenn Sie diesen Inhalt m�gen und m�gen, dass er frei f�r jeden ist, erw�gen Sie eine Spende, um unsere Arbeit zu unterst�tzen.   	� �	�	�,   D i e s e r   I n h a l t   i s t   d u r c h   C r e a t i v e - C o m m o n s ,   e i n e r   N o n - P r o f i t - O r g a n i s a t i o n ,   d i e   a u f   S p e n d e n   a n g e w i e s e n   i s t ,   u n t e r   e i n f a c h e n   r e c h t l i c h e n   R e g e l n   v e r f � g b a r .   W e n n   S i e   d i e s e n   I n h a l t   m � g e n   u n d   m � g e n ,   d a s s   e r   f r e i   f � r   j e d e n   i s t ,   e r w � g e n   S i e   e i n e   S p e n d e ,   u m   u n s e r e   A r b e i t   z u   u n t e r s t � t z e n .	� 	�	�	� l     �>	�	��>  	�      	� �	�	�   	� 	�	�	� l     �=	�	��=  	�   Make a Donation   	� �	�	�     M a k e   a   D o n a t i o n	� 	�	�	� l     �<	�	��<  	�      	� �	�	�   	� 	�	�	� l     �;	�	��;  	� 7 1 Diese Seite ist in folgenden Sprachen verf�gbar:   	� �	�	� b   D i e s e   S e i t e   i s t   i n   f o l g e n d e n   S p r a c h e n   v e r f � g b a r :	� 	�	�	� l     �:	�	��:  	�nh [Bahasa Indonesia](https://creativecommons.org/licenses/by-sa/4.0/deed.id "Bahasa Indonesia") [Bahasa Malaysia](https://creativecommons.org/licenses/by-sa/4.0/deed.ms "Bahasa Malaysia") [Castellano (Espa�a)](https://creativecommons.org/licenses/by-sa/4.0/deed.es_ES "Castellano (Espa�a)") [Catal�](https://creativecommons.org/licenses/by-sa/4.0/deed.ca "Catal�") [Dansk](https://creativecommons.org/licenses/by-sa/4.0/deed.da "Dansk") [Deutsch](deed.de.html "Deutsch") [English](https://creativecommons.org/licenses/by-sa/4.0/deed.en "English") [Espa�ol](https://creativecommons.org/licenses/by-sa/4.0/deed.es "Espa�ol") [Esperanto](https://creativecommons.org/licenses/by-sa/4.0/deed.eo "Esperanto") [Euskara](https://creativecommons.org/licenses/by-sa/4.0/deed.eu "Euskara") [fran�ais](https://creativecommons.org/licenses/by-sa/4.0/deed.fr "fran�ais") [Galego](https://creativecommons.org/licenses/by-sa/4.0/deed.gl "Galego") [hrvatski](https://creativecommons.org/licenses/by-sa/4.0/deed.hr "hrvatski") [Italiano](https://creativecommons.org/licenses/by-sa/4.0/deed.it "Italiano") [Latviski](https://creativecommons.org/licenses/by-sa/4.0/deed.lv "Latviski") [Lietuvi?](https://creativecommons.org/licenses/by-sa/4.0/deed.lt "Lietuvi?") [Magyar](https://creativecommons.org/licenses/by-sa/4.0/deed.hu "Magyar") [Nederlands](https://creativecommons.org/licenses/by-sa/4.0/deed.nl "Nederlands") [norsk](https://creativecommons.org/licenses/by-sa/4.0/deed.no "norsk") [polski](https://creativecommons.org/licenses/by-sa/4.0/deed.pl "polski") [Portugu�s](https://creativecommons.org/licenses/by-sa/4.0/deed.pt "Portugu�s") [Portugu�s (BR)](https://creativecommons.org/licenses/by-sa/4.0/deed.pt_BR "Portugu�s (BR)") [rom�n?](https://creativecommons.org/licenses/by-sa/4.0/deed.ro "rom�n?") [Sloven??ina](https://creativecommons.org/licenses/by-sa/4.0/deed.sl "Sloven??ina") [srpski (latinica)](https://creativecommons.org/licenses/by-sa/4.0/deed.sr_LATN "srpski (latinica)") [suomeksi](https://creativecommons.org/licenses/by-sa/4.0/deed.fi "suomeksi") [svenska](https://creativecommons.org/licenses/by-sa/4.0/deed.sv "svenska") [T�rk�e](https://creativecommons.org/licenses/by-sa/4.0/deed.tr "T�rk�e") [�slenska](https://creativecommons.org/licenses/by-sa/4.0/deed.is "�slenska") [?e?tina](https://creativecommons.org/licenses/by-sa/4.0/deed.cs "?e?tina") [????????](https://creativecommons.org/licenses/by-sa/4.0/deed.el "????????") [??????????](https://creativecommons.org/licenses/by-sa/4.0/deed.be "??????????") [???????](https://creativecommons.org/licenses/by-sa/4.0/deed.ru "???????") [??????????](https://creativecommons.org/licenses/by-sa/4.0/deed.uk "??????????") [???????](https://creativecommons.org/licenses/by-sa/4.0/deed.ar "???????") [?????](https://creativecommons.org/licenses/by-sa/4.0/deed.fa "?????") [?????](https://creativecommons.org/licenses/by-sa/4.0/deed.bn "?????") [??](https://creativecommons.org/licenses/by-sa/4.0/deed.zh "??") [???](https://creativecommons.org/licenses/by-sa/4.0/deed.ja "???") [?? (??)](https://creativecommons.org/licenses/by-sa/4.0/deed.zh_TW "?? (??)") [???](https://creativecommons.org/licenses/by-sa/4.0/deed.ko "???")   	� �	�	��   [ B a h a s a   I n d o n e s i a ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . i d   " B a h a s a   I n d o n e s i a " )   [ B a h a s a   M a l a y s i a ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . m s   " B a h a s a   M a l a y s i a " )   [ C a s t e l l a n o   ( E s p a � a ) ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . e s _ E S   " C a s t e l l a n o   ( E s p a � a ) " )   [ C a t a l � ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . c a   " C a t a l � " )   [ D a n s k ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . d a   " D a n s k " )   [ D e u t s c h ] ( d e e d . d e . h t m l   " D e u t s c h " )   [ E n g l i s h ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . e n   " E n g l i s h " )   [ E s p a � o l ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . e s   " E s p a � o l " )   [ E s p e r a n t o ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . e o   " E s p e r a n t o " )   [ E u s k a r a ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . e u   " E u s k a r a " )   [ f r a n � a i s ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . f r   " f r a n � a i s " )   [ G a l e g o ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . g l   " G a l e g o " )   [ h r v a t s k i ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . h r   " h r v a t s k i " )   [ I t a l i a n o ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . i t   " I t a l i a n o " )   [ L a t v i s k i ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . l v   " L a t v i s k i " )   [ L i e t u v is ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . l t   " L i e t u v is " )   [ M a g y a r ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . h u   " M a g y a r " )   [ N e d e r l a n d s ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . n l   " N e d e r l a n d s " )   [ n o r s k ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . n o   " n o r s k " )   [ p o l s k i ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . p l   " p o l s k i " )   [ P o r t u g u � s ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . p t   " P o r t u g u � s " )   [ P o r t u g u � s   ( B R ) ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . p t _ B R   " P o r t u g u � s   ( B R ) " )   [ r o m � n ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . r o   " r o m � n " )   [ S l o v e na i n a ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . s l   " S l o v e na i n a " )   [ s r p s k i   ( l a t i n i c a ) ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . s r _ L A T N   " s r p s k i   ( l a t i n i c a ) " )   [ s u o m e k s i ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . f i   " s u o m e k s i " )   [ s v e n s k a ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . s v   " s v e n s k a " )   [ T � r k � e ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . t r   " T � r k � e " )   [ � s l e n s k a ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . i s   " � s l e n s k a " )   [ ea t i n a ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . c s   " ea t i n a " )   [�������� ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . e l   "�������� " )   [5;0@CA:0O ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . b e   "5;0@CA:0O " )   [@CAA:89 ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . r u   "@CAA:89 " )   [C:@0W=AL:0 ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . u k   "C:@0W=AL:0 " )   ['D91(J) ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . a r   "'D91(J) " )   [~'13� ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . f a   "~'13� " )   [	�	�	�	�	� ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . b n   "	�	�	�	�	� " )   [N-e� ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . z h   "N-e� " )   [e�g,�� ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . j a   "e�g,�� " )   [�   (S�pc ) ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . z h _ T W   "�   (S�pc ) " )   [�\�mŴ ] ( h t t p s : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 4 . 0 / d e e d . k o   "�\�mŴ " )	� 	�	�	� l     �9	�	��9  	�      	� �	�	�   	� 	�	�	� l     �8	�	��8  	� Dieser Inhalt ist durch Creative-Commons, einer Non-Profit-Organisation, die auf Spenden angewiesen ist, unter einfachen rechtlichen Regeln verf�gbar. Wenn Sie diesen Inhalt m�gen und m�gen, dass er frei f�r jeden ist, erw�gen Sie eine Spende, um unsere Arbeit zu unterst�tzen.   	� �	�	�,   D i e s e r   I n h a l t   i s t   d u r c h   C r e a t i v e - C o m m o n s ,   e i n e r   N o n - P r o f i t - O r g a n i s a t i o n ,   d i e   a u f   S p e n d e n   a n g e w i e s e n   i s t ,   u n t e r   e i n f a c h e n   r e c h t l i c h e n   R e g e l n   v e r f � g b a r .   W e n n   S i e   d i e s e n   I n h a l t   m � g e n   u n d   m � g e n ,   d a s s   e r   f r e i   f � r   j e d e n   i s t ,   e r w � g e n   S i e   e i n e   S p e n d e ,   u m   u n s e r e   A r b e i t   z u   u n t e r s t � t z e n .	� 	�	�	� l     �7	�	��7  	�      	� �	�	�   	� 	�	�	� l     �6	�	��6  	� 7 1 ###### Wir w�rden uns freuen von Ihnen zu h�ren!   	� �	�	� b   # # # # # #   W i r   w � r d e n   u n s   f r e u e n   v o n   I h n e n   z u   h � r e n !	� 	�	�	� l     �5	�	��5  	�      	� �	�	�   	� 	�	�	� l     �4	�	��4  	�   Creative Commons   	� �	�	� "   C r e a t i v e   C o m m o n s	� 	�	�	� l     �3	�	��3  	� + % PO Box 1866, Mountain View, CA 94042   	� �	�	� J   P O   B o x   1 8 6 6 ,   M o u n t a i n   V i e w ,   C A   9 4 0 4 2	� 	�	�	� l     �2	�	��2  	�      	� �	�	�   	� 	�	�	� l     �1	�	��1  	� #  - <info@creativecommons.org>   	� �	�	� :   -   < i n f o @ c r e a t i v e c o m m o n s . o r g >	� 	�	�	� l     �0	�	��0  	�      	� �	�	�   	� 	�	�	� l     �/	�	��/  	� � � Except where otherwise noted, content on this site is licensed under a Creative Commons Attribution 4.0 International license. Icons by The Noun Project.   	� �	�	�4   E x c e p t   w h e r e   o t h e r w i s e   n o t e d ,   c o n t e n t   o n   t h i s   s i t e   i s   l i c e n s e d   u n d e r   a   C r e a t i v e   C o m m o n s   A t t r i b u t i o n   4 . 0   I n t e r n a t i o n a l   l i c e n s e .   I c o n s   b y   T h e   N o u n   P r o j e c t .	� 	�	�	� l     �.	�
 �.  	�      
  �

   	� 


 l     �-

�-  
   Haftungsbeschr�nkung   
 �

 *   H a f t u n g s b e s c h r � n k u n g
 


 l     �,
	

�,  
	      

 �

   
 


 l     �+

�+  
# Dieser Deed beschreibt nur einige der wichtigsten Eigenschaften und Klauseln der eigentlichen Lizenz. Er ist keine Lizenz und hat keine rechtliche Bedeutung. Sie sollten alle Klauseln und Bedingungen der eigentlichen Lizenz aufmerksam lesen, bevor Sie das lizenzierte Material nutzen.   
 �

:   D i e s e r   D e e d   b e s c h r e i b t   n u r   e i n i g e   d e r   w i c h t i g s t e n   E i g e n s c h a f t e n   u n d   K l a u s e l n   d e r   e i g e n t l i c h e n   L i z e n z .   E r   i s t   k e i n e   L i z e n z   u n d   h a t   k e i n e   r e c h t l i c h e   B e d e u t u n g .   S i e   s o l l t e n   a l l e   K l a u s e l n   u n d   B e d i n g u n g e n   d e r   e i g e n t l i c h e n   L i z e n z   a u f m e r k s a m   l e s e n ,   b e v o r   S i e   d a s   l i z e n z i e r t e   M a t e r i a l   n u t z e n .
 


 l     �*

�*  
      
 �

   
 


 l     �)

�)  
 � � Creative Commons ist keine Anwaltskanzlei und bietet keinerlei Rechtsdienstleistungen an. Verbreitung, Anzeigen oder Verlinken dieser Deed oder der Lizenz, die sie zusammenfasst, erzeugt keine Mandats- oder sonstige Beziehung.   
 �

�   C r e a t i v e   C o m m o n s   i s t   k e i n e   A n w a l t s k a n z l e i   u n d   b i e t e t   k e i n e r l e i   R e c h t s d i e n s t l e i s t u n g e n   a n .   V e r b r e i t u n g ,   A n z e i g e n   o d e r   V e r l i n k e n   d i e s e r   D e e d   o d e r   d e r   L i z e n z ,   d i e   s i e   z u s a m m e n f a s s t ,   e r z e u g t   k e i n e   M a n d a t s -   o d e r   s o n s t i g e   B e z i e h u n g .
 


 l     �(

�(  
      
 �

   
 
 
!
  l     �'
"
#�'  
" $  Was bedeutet "Namensnennung"?   
# �
$
$ <   W a s   b e d e u t e t   " N a m e n s n e n n u n g " ?
! 
%
&
% l     �&
'
(�&  
'      
( �
)
)   
& 
*
+
* l     �%
,
-�%  
,�� Die Seite, von der aus Sie hierher gelangt sind, enthielt eingebettete Metadaten zur Lizenz, unter anderem auch zur Art und Weise wie der Rechteinhaber bei Weiterverwendung bezeichnet werden m�chte. Das hier gezeigte HTML k�nnen Sie als Verweis auf das lizenzierte Werk verwenden. Dadurch werden in Ihre Website Metadaten eingef�gt, durch die andere auch die Originalquelle finden k�nnen.   
- �
.
.
   D i e   S e i t e ,   v o n   d e r   a u s   S i e   h i e r h e r   g e l a n g t   s i n d ,   e n t h i e l t   e i n g e b e t t e t e   M e t a d a t e n   z u r   L i z e n z ,   u n t e r   a n d e r e m   a u c h   z u r   A r t   u n d   W e i s e   w i e   d e r   R e c h t e i n h a b e r   b e i   W e i t e r v e r w e n d u n g   b e z e i c h n e t   w e r d e n   m � c h t e .   D a s   h i e r   g e z e i g t e   H T M L   k � n n e n   S i e   a l s   V e r w e i s   a u f   d a s   l i z e n z i e r t e   W e r k   v e r w e n d e n .   D a d u r c h   w e r d e n   i n   I h r e   W e b s i t e   M e t a d a t e n   e i n g e f � g t ,   d u r c h   d i e   a n d e r e   a u c h   d i e   O r i g i n a l q u e l l e   f i n d e n   k � n n e n .
+ 
/
0
/ l     �$
1
2�$  
1      
2 �
3
3   
0 
4
5
4 l     �#
6
7�#  
6.( Die anzuwendenden Mediationsregeln werden im Rechtehinweis genannt, der dem Werk beigef�gt ist, oder ohne einen solchen Hinweis in der Mediationsaufforderung. Falls in einem Rechtehinweis zum Werk nicht anders festgelegt, gelten die UNCITRAL Schiedsgerichtssregeln f�r jedwedes Schiedsverfahren.   
7 �
8
8P   D i e   a n z u w e n d e n d e n   M e d i a t i o n s r e g e l n   w e r d e n   i m   R e c h t e h i n w e i s   g e n a n n t ,   d e r   d e m   W e r k   b e i g e f � g t   i s t ,   o d e r   o h n e   e i n e n   s o l c h e n   H i n w e i s   i n   d e r   M e d i a t i o n s a u f f o r d e r u n g .   F a l l s   i n   e i n e m   R e c h t e h i n w e i s   z u m   W e r k   n i c h t   a n d e r s   f e s t g e l e g t ,   g e l t e n   d i e   U N C I T R A L   S c h i e d s g e r i c h t s s r e g e l n   f � r   j e d w e d e s   S c h i e d s v e r f a h r e n .
5 
9
:
9 l     �"
;
<�"  
;      
< �
=
=   
: 
>
?
> l     �!
@
A�!  
@ � � [Weitere Informationen](https://wiki.creativecommons.org/Intergovernmental_Organizations#What_should_I_know_before_I_use_a_work_licensed_under_the_IGO_3.0_ported_licenses.3F).   
A �
B
B`   [ W e i t e r e   I n f o r m a t i o n e n ] ( h t t p s : / / w i k i . c r e a t i v e c o m m o n s . o r g / I n t e r g o v e r n m e n t a l _ O r g a n i z a t i o n s # W h a t _ s h o u l d _ I _ k n o w _ b e f o r e _ I _ u s e _ a _ w o r k _ l i c e n s e d _ u n d e r _ t h e _ I G O _ 3 . 0 _ p o r t e d _ l i c e n s e s . 3 F ) .
? 
C
D
C l     � 
E
F�   
E      
F �
G
G   
D 
H
I
H l     �
J
K�  
J�� Soweit mitgeteilt, m�ssen Sie die Namen der Urhebers und Zuschreibungsempf�nger, einen Rechtevermerk, einen Lizenzvermerk, einen Haftungsausschluss und einen Link zum Material angeben. Die Versionen der CC-Lizenzen vor Version 4.0 fordern au�erdem, dass Sie den Titel des Materials angeben, sofern er Ihnen mitgeteilt wurde, und k�nnen auch andere geringf�gige Abweichungen enthalten.   
K �
L
L   S o w e i t   m i t g e t e i l t ,   m � s s e n   S i e   d i e   N a m e n   d e r   U r h e b e r s   u n d   Z u s c h r e i b u n g s e m p f � n g e r ,   e i n e n   R e c h t e v e r m e r k ,   e i n e n   L i z e n z v e r m e r k ,   e i n e n   H a f t u n g s a u s s c h l u s s   u n d   e i n e n   L i n k   z u m   M a t e r i a l   a n g e b e n .   D i e   V e r s i o n e n   d e r   C C - L i z e n z e n   v o r   V e r s i o n   4 . 0   f o r d e r n   a u � e r d e m ,   d a s s   S i e   d e n   T i t e l   d e s   M a t e r i a l s   a n g e b e n ,   s o f e r n   e r   I h n e n   m i t g e t e i l t   w u r d e ,   u n d   k � n n e n   a u c h   a n d e r e   g e r i n g f � g i g e   A b w e i c h u n g e n   e n t h a l t e n .
I 
M
N
M l     �
O
P�  
O      
P �
Q
Q   
N 
R
S
R l     �
T
U�  
T x r [Weitere Informationen](https://wiki.creativecommons.org/License_Versions#Detailed_attribution_comparison_chart).   
U �
V
V �   [ W e i t e r e   I n f o r m a t i o n e n ] ( h t t p s : / / w i k i . c r e a t i v e c o m m o n s . o r g / L i c e n s e _ V e r s i o n s # D e t a i l e d _ a t t r i b u t i o n _ c o m p a r i s o n _ c h a r t ) .
S 
W
X
W l     �
Y
Z�  
Y      
Z �
[
[   
X 
\
]
\ l     �
^
_�  
^+% Gem�� Version 4.0 m�ssen sie angeben, ob Sie das Material ver�ndert haben, und m�ssen Angaben zu davor bereits vorgenommenen �nderungen bestehen lassen. Gem�� Version 3.0 und fr�herer Lizenzversionen ist die Angabe von Ver�nderungen nur dann verpflichtend, wenn Sie eine Abwandlung erstellen.   
_ �
`
`J   G e m � �   V e r s i o n   4 . 0   m � s s e n   s i e   a n g e b e n ,   o b   S i e   d a s   M a t e r i a l   v e r � n d e r t   h a b e n ,   u n d   m � s s e n   A n g a b e n   z u   d a v o r   b e r e i t s   v o r g e n o m m e n e n   � n d e r u n g e n   b e s t e h e n   l a s s e n .   G e m � �   V e r s i o n   3 . 0   u n d   f r � h e r e r   L i z e n z v e r s i o n e n   i s t   d i e   A n g a b e   v o n   V e r � n d e r u n g e n   n u r   d a n n   v e r p f l i c h t e n d ,   w e n n   S i e   e i n e   A b w a n d l u n g   e r s t e l l e n .
] 
a
b
a l     �
c
d�  
c      
d �
e
e   
b 
f
g
f l     �
h
i�  
h � � [Hinweise zur richtigen Kennzeichnung](https://wiki.creativecommons.org/Best_practices_for_attribution#This_is_a_good_attribution_for_material_you_modified_slightly).   
i �
j
jN   [ H i n w e i s e   z u r   r i c h t i g e n   K e n n z e i c h n u n g ] ( h t t p s : / / w i k i . c r e a t i v e c o m m o n s . o r g / B e s t _ p r a c t i c e s _ f o r _ a t t r i b u t i o n # T h i s _ i s _ a _ g o o d _ a t t r i b u t i o n _ f o r _ m a t e r i a l _ y o u _ m o d i f i e d _ s l i g h t l y ) .
g 
k
l
k l     �
m
n�  
m      
n �
o
o   
l 
p
q
p l     �
r
s�  
r � � [Weitere Informationen](https://wiki.creativecommons.org/License_Versions#Modifications_and_adaptations_must_be_marked_as_such).   
s �
t
t   [ W e i t e r e   I n f o r m a t i o n e n ] ( h t t p s : / / w i k i . c r e a t i v e c o m m o n s . o r g / L i c e n s e _ V e r s i o n s # M o d i f i c a t i o n s _ a n d _ a d a p t a t i o n s _ m u s t _ b e _ m a r k e d _ a s _ s u c h ) .
q 
u
v
u l     �
w
x�  
w      
x �
y
y   
v 
z
{
z l     �
|
}�  
| � � Sie k�nnen alternativ auch eine der unter [https://creativecommons.org/compatiblelicenses](../../../share-your-work/licensing-considerations/compatible-licenses.html) als kompatibel aufgelisteten Lizenzen verwenden   
} �
~
~�   S i e   k � n n e n   a l t e r n a t i v   a u c h   e i n e   d e r   u n t e r   [ h t t p s : / / c r e a t i v e c o m m o n s . o r g / c o m p a t i b l e l i c e n s e s ] ( . . / . . / . . / s h a r e - y o u r - w o r k / l i c e n s i n g - c o n s i d e r a t i o n s / c o m p a t i b l e - l i c e n s e s . h t m l )   a l s   k o m p a t i b e l   a u f g e l i s t e t e n   L i z e n z e n   v e r w e n d e n
{ 

�
 l     �
�
��  
�      
� �
�
�   
� 
�
�
� l     �
�
��  
� � � [Weitere Informationen](https://wiki.creativecommons.org/FAQ#If_I_derive_or_adapt_material_offered_under_a_Creative_Commons_license.2C_which_CC_license.28s.29_can_I_use.3F).   
� �
�
�\   [ W e i t e r e   I n f o r m a t i o n e n ] ( h t t p s : / / w i k i . c r e a t i v e c o m m o n s . o r g / F A Q # I f _ I _ d e r i v e _ o r _ a d a p t _ m a t e r i a l _ o f f e r e d _ u n d e r _ a _ C r e a t i v e _ C o m m o n s _ l i c e n s e . 2 C _ w h i c h _ C C _ l i c e n s e . 2 8 s . 2 9 _ c a n _ I _ u s e . 3 F ) .
� 
�
�
� l     �
�
��  
�      
� �
�
�   
� 
�
�
� l     �
�
��  
� � � Kommerziell ist eine Nutzung dann, wenn sie in erster Linie auf kommerziell relevante Vorteile oder auf eine Verg�tung abzielt.   
� �
�
�    K o m m e r z i e l l   i s t   e i n e   N u t z u n g   d a n n ,   w e n n   s i e   i n   e r s t e r   L i n i e   a u f   k o m m e r z i e l l   r e l e v a n t e   V o r t e i l e   o d e r   a u f   e i n e   V e r g � t u n g   a b z i e l t .
� 
�
�
� l     �
�
��  
�      
� �
�
�   
� 
�
�
� l     �
�
��  
� � � [Weitere Informationen](https://wiki.creativecommons.org/Frequently_Asked_Questions#Does_my_use_violate_the_NonCommercial_clause_of_the_licenses.3F).   
� �
�
�,   [ W e i t e r e   I n f o r m a t i o n e n ] ( h t t p s : / / w i k i . c r e a t i v e c o m m o n s . o r g / F r e q u e n t l y _ A s k e d _ Q u e s t i o n s # D o e s _ m y _ u s e _ v i o l a t e _ t h e _ N o n C o m m e r c i a l _ c l a u s e _ o f _ t h e _ l i c e n s e s . 3 F ) .
� 
�
�
� l     �
�
��  
�      
� �
�
�   
� 
�
�
� l     �
�
��  
� V P Blo�e Ver�nderungen des Formats gelten f�r sich genommen nie als Bearbeitungen.   
� �
�
� �   B l o � e   V e r � n d e r u n g e n   d e s   F o r m a t s   g e l t e n   f � r   s i c h   g e n o m m e n   n i e   a l s   B e a r b e i t u n g e n .
� 
�
�
� l     �
�
��  
�      
� �
�
�   
� 
�
�
� l     �
�
��  
� � � [Weitere Informationen](https://wiki.creativecommons.org/Frequently_Asked_Questions#When_is_my_use_considered_an_adaptation.3F).   
� �
�
�   [ W e i t e r e   I n f o r m a t i o n e n ] ( h t t p s : / / w i k i . c r e a t i v e c o m m o n s . o r g / F r e q u e n t l y _ A s k e d _ Q u e s t i o n s # W h e n _ i s _ m y _ u s e _ c o n s i d e r e d _ a n _ a d a p t a t i o n . 3 F ) .
� 
�
�
� l     �

�
��
  
�      
� �
�
�   
� 
�
�
� l     �	
�
��	  
� � � Die Lizenz untersagt den Einsatz wirksamer technischer Schutzma�nahmen, definiert mit R�ckgriff auf Artikel 11 des WIPO Copyright Treaty.   
� �
�
�   D i e   L i z e n z   u n t e r s a g t   d e n   E i n s a t z   w i r k s a m e r   t e c h n i s c h e r   S c h u t z m a � n a h m e n ,   d e f i n i e r t   m i t   R � c k g r i f f   a u f   A r t i k e l   1 1   d e s   W I P O   C o p y r i g h t   T r e a t y .
� 
�
�
� l     �
�
��  
�      
� �
�
�   
� 
�
�
� l     �
�
��  
� � � [Weitere Informationen](https://wiki.creativecommons.org/License_Versions#Application_of_effective_technological_measures_by_users_of_CC-licensed_works_prohibited).   
� �
�
�J   [ W e i t e r e   I n f o r m a t i o n e n ] ( h t t p s : / / w i k i . c r e a t i v e c o m m o n s . o r g / L i c e n s e _ V e r s i o n s # A p p l i c a t i o n _ o f _ e f f e c t i v e _ t e c h n o l o g i c a l _ m e a s u r e s _ b y _ u s e r s _ o f _ C C - l i c e n s e d _ w o r k s _ p r o h i b i t e d ) .
� 
�
�
� l     �
�
��  
�      
� �
�
�   
� 
�
�
� l     �
�
��  
� � � Freiheiten, die Nutzer gem�� Schranken und Ausnahmen des Urheberrechts haben, etwa Rechte des Fair Use oder das Zitatrecht, werden durch CC-Lizenzen nicht ber�hrt.   
� �
�
�H   F r e i h e i t e n ,   d i e   N u t z e r   g e m � �   S c h r a n k e n   u n d   A u s n a h m e n   d e s   U r h e b e r r e c h t s   h a b e n ,   e t w a   R e c h t e   d e s   F a i r   U s e   o d e r   d a s   Z i t a t r e c h t ,   w e r d e n   d u r c h   C C - L i z e n z e n   n i c h t   b e r � h r t .
� 
�
�
� l     �
�
��  
�      
� �
�
�   
� 
�
�
� l     �
�
��  
� � � [Weitere Informationen](https://wiki.creativecommons.org/Frequently_Asked_Questions#Do_Creative_Commons_licenses_affect_exceptions_and_limitations_to_copyright.2C_such_as_fair_dealing_and_fair_use.3F).   
� �
�
��   [ W e i t e r e   I n f o r m a t i o n e n ] ( h t t p s : / / w i k i . c r e a t i v e c o m m o n s . o r g / F r e q u e n t l y _ A s k e d _ Q u e s t i o n s # D o _ C r e a t i v e _ C o m m o n s _ l i c e n s e s _ a f f e c t _ e x c e p t i o n s _ a n d _ l i m i t a t i o n s _ t o _ c o p y r i g h t . 2 C _ s u c h _ a s _ f a i r _ d e a l i n g _ a n d _ f a i r _ u s e . 3 F ) .
� 
�
�
� l     �
�
��  
�      
� �
�
�   
� 
�
�
� l     �
�
��  
� { u F�r die von Ihnen gew�nschte Nutzung des Materials kann es erforderlich sein, dass Sie weitere Erlaubnisse einholen.   
� �
�
� �   F � r   d i e   v o n   I h n e n   g e w � n s c h t e   N u t z u n g   d e s   M a t e r i a l s   k a n n   e s   e r f o r d e r l i c h   s e i n ,   d a s s   S i e   w e i t e r e   E r l a u b n i s s e   e i n h o l e n .
� 
�
�
� l     � 
�
��   
�      
� �
�
�   
� 
�
�
� l     ��
�
���  
� l f [Weitere Informationen](https://wiki.creativecommons.org/Considerations_for_licensors_and_licensees).   
� �
�
� �   [ W e i t e r e   I n f o r m a t i o n e n ] ( h t t p s : / / w i k i . c r e a t i v e c o m m o n s . o r g / C o n s i d e r a t i o n s _ f o r _ l i c e n s o r s _ a n d _ l i c e n s e e s ) .
� 
���
� l     ��
�
���  
�      
� �
�
�   ��       D��
�
�
�
���
�
�
�
�
�����������������������
���
�����
�
�
�
� ����	����������������������������������������������������  
� B�������������������������������������������������������������������������������������������������������������������������������������� 0 excludeapps excludeApps��  0 snaptoedgeapps snapToEdgeApps�� &0 extrarightgapapps extraRightGapApps�� 0 extrarightgap extraRightGap�� 0 centeredapps centeredApps�� 0 maxheightapps maxHeightApps��  0 fullscreenapps fullscreenApps��  0 excludewindows excludeWindows�� (0 snaptoedgeswindows snapToEdgesWindows��  0 maxwindowwidth maxWindowWidth�� (0 maxwidewindowwidth maxWideWindowWidth�� 0 stackinggap stackingGap�� 0 standardgap standardGap�� 0 dockgap dockGap�� 0 
desktopgap 
desktopGap�� 0 snappinggap snappingGap�� 0 menubarheight menubarHeight�� 0 monitorheight monitorHeight�� 0 monitorwidth monitorWidth�� 0 topbound topBound�� 0 	leftbound 	leftBound�� 0 
boundwidth 
boundWidth�� 0 boundheight boundHeight�� 0 leftgap leftGap�� 0 topgap topGap�� 0 	bottomgap 	bottomGap
�� .aevtoappnull  �   � ****�� 0 cascadewindow cascadeWindow�� 0 
snaptoedge 
snapToEdge�� 0 
fillheight 
fillHeight�� 0 
fillscreen 
fillScreen�� *0 guiscripting_status GUIScripting_status�� &0 monitorproperties monitorProperties�� 0 	dockprops 	dockProps�� 0 docktilesize dockTileSize�� 0 monitorprops monitorProps�� $0 visibleprocesses visibleProcesses�� "0 standardwindows standardWindows�� 0 windowcount windowCount�� 0 maxwidth maxWidth�� 0 	maxheight 	maxHeight�� 0 
stackorder 
stackOrder��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  
� ��
�� 
      $ '
� ���� 5 5  4 8 < @ D H L P T X \ ` d h l p t x | � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � 
� ����   �� �
� ����   $(,03
� ����   @DHLPTX\`dhlptx|�����
� ����   �����������
� ���� 	 	 ���������
� ����   �������� #�� �� 
�� ��� �� �������� 
� @x8     ���
� @��     �� �� 
� @T@     
� ��V������
�� .aevtoappnull  �   � ****��  ��   �������� 0 xprocess xProcess�� 0 xwindow xWindow�� 0 windowobject windowObject n��s��~�}s�|�{��z�y�x�w�v�u�t�s��r�q�p�o�n�m�l!�k�j�i�h�gS�fZ^im�e�d���������������c�b�a�`�_�^���������������]�\AHMRW\afkpuz��[��������	�Z�Y�X�W�V�� *0 guiscripting_status GUIScripting_status
� 
dpas
�~ 
dahd
�} 
plif�| 0 	dockprops 	dockProps
�{ 
plii
�z 
valL�y 0 docktilesize dockTileSize
�x 
dpse
�w dplsbott
�v dplsleft�u &0 monitorproperties monitorProperties�t 0 monitorprops monitorProps
�s 
null�r 0 height Height�q 0 width Width
�p 
cobj�o�
�n 
pcap  
�m 
pvis
�l 
pnam�k $0 visibleprocesses visibleProcesses
�j 
kocl
�i .corecnte****       ****
�h 
cwin
�g 
sbrl
�f 
attr�e "0 standardwindows standardWindows�d 0 
snaptoedge 
snapToEdge
�c 
bool
�b 
posn�a 0 xpos xPos
�` 
ptsz�_ 0 xsize xSize�^ 0 newpos newPos�] 0 windowcount windowCount�\ 0 
fillheight 
fillHeight�[ 0 
fillscreen 
fillScreen�Z 0 maxwidth maxWidth�Y 0 	maxheight 	maxHeight�X 0 
stackorder 
stackOrder�W �V 0 cascadewindow cascadeWindow��a*j+  O�W*�,�, t*��/E�O���/�,E�O*�,�,�  *b  Ec  O�b  b  b  Ec  Y /*�,�,�  $�b  b  Ec  Ob  Ec  Y hY b  Ec  Ob  Ec  O)j+ E�O�a   )ja Y hO�[a ,\[a ,\ZlvE[a k/Ec  Z[a l/Ec  ZOb  b  Ec  Ob  a  6b  b  	l!b  Ec  Ob  	b  b  Ec  Y 3b  b  
l!b  Ec  Ob  
b  b  Ec  Ob  b  b  Ec  O*a -a [[a ,\Ze8\[a ,\Za >CA1E` O�_ [a a l kh  b   �a ,�b  �a , ��a -a [[[a ,\Za  8\[a !a "/�,\Zf8A\[a ,\Za #9A1�a -a [[a ,\Za $8\[a ,\Za %9A1%E` &O 4_ &[a a l kh b  �a , )��l+ 'Y h[OY��Y�b  �a ,Ѡa -a [[[[[[[[[[[[[[a ,\Za (8\[a !a )/�,\Zf8A\[a ,\Za *>CA\[a ,\Za +>CA\[a ,\Za ,>CA\[a ,\Za ->CA\[a ,\Za .>CA\[a ,\Za /?CA\[a ,\Za 0>CA\[a ,\Za 1@CA\[a ,\Za 2@CA\[a ,\Za 3@CA\[a ,\Za 4@CA\[a ,\Za 59A1E` &O �_ &[a a l kh b  �a ,	 b  �a ,a 6& ��a 7,E` 8O�a 9,E` :Ob  _ :a k/l!b  b  _ :a l/m!lvE` ;O_ ;a k/j	 _ ;a k/b  a 6&	 _ ;a l/ja 6&	 _ ;a l/b  a 6& _ ;�a 7,FY hY b  �a , )��l+ 'Y h[OY�&Yb  �a ,6�a -a [[[[[[[[[[[[[[a ,\Za <8\[a !a =/�,\Zf8A\[a ,\Za >>CA\[a ,\Za ?>CA\[a ,\Za @>CA\[a ,\Za A>CA\[a ,\Za B>CA\[a ,\Za C?CA\[a ,\Za D>CA\[a ,\Za E@CA\[a ,\Za F@CA\[a ,\Za G@CA\[a ,\Za H@CA\[a ,\Za I9A1E` &O_ &j E` JO_ Jk A ;_ &[a a l kh b  �a , )�k+ KO)��l+ 'Y h[OY��Y hY�b  �a ,A�a -a [[[[[[[[[[[[[[a ,\Za L8\[a !a M/�,\Zf8A\[a ,\Za N>CA\[a ,\Za O>CA\[a ,\Za P>CA\[a ,\Za Q>CA\[a ,\Za R>CA\[a ,\Za S?CA\[a ,\Za T>CA\[a ,\Za U@CA\[a ,\Za V@CA\[a ,\Za W@CA\[a ,\Za X@CA\[a ,\Za Y9A1E` &O ^_ &[a a l kh b  �a ,	 b  �a ,a 6& )�k+ ZY b  �a , )��l+ 'Y h[OY��Y��a -a [[[[[[[[[[[[[[a ,\Za [8\[a !a \/�,\Zf8A\[a ,\Za ]>CA\[a ,\Za ^>CA\[a ,\Za _>CA\[a ,\Za `>CA\[a ,\Za a>CA\[a ,\Za b?CA\[a ,\Za c>CA\[a ,\Za d@CA\[a ,\Za e@CA\[a ,\Za f@CA\[a ,\Za g@CA\[a ,\Za h9A1E` &O_ &j E` JO_ Jk �_ &E` &Ob  _ Jkb   E` iOb  _ Jkb   E` jOjE` kO N_ &[a a l kh b  �a ,  _ kkE` kO)_ k_ i_ j�a l+ mY 	)��l+ '[OY��Y hY h[OY�\U
� �Uy�T�S�R�U 0 cascadewindow cascadeWindow�T �Q�Q   �P�O�N�M�P 0 
stackorder 
stackOrder�O 0 maxwidth maxWidth�N 0 	maxheight 	maxHeight�M 0 windowobject windowObject�S   �L�K�J�I�H�L 0 
stackorder 
stackOrder�K 0 maxwidth maxWidth�J 0 	maxheight 	maxHeight�I 0 windowobject windowObject�H 0 checkheight checkHeight ��G�F�E�D
�G 
posn
�F 
ptsz
�E 
cobj�D �R Z� Vb  �kb   b  �kb   lv��,FO��lv��,FO��,E�O��l/� ���lv��,FO��lv��,FY hU
� �C��B�A�@�C 0 
snaptoedge 
snapToEdge�B �?�?   �>�=�> 0 thisprocess thisProcess�= 0 
thiswindow 
thisWindow�A   �<�;�:�9�8�7�< 0 thisprocess thisProcess�; 0 
thiswindow 
thisWindow�: 0 xpos xPos�9 0 xsize xSize�8 0 checkheight checkHeight�7 0 rightgap rightGap ��6�5�4�3�2
�6 
posn
�5 
ptsz
�4 
cobj�3 
�2 
pnam�@?�;��,E�O��,E�O��l/b   M��k/b  lv��,FO��,E�O��l/b   &��k/b  �lv��,FO��k/b  lv��,FY hY hO��l/b  b   ��k/b  lv��,FY >b  b  ��l/��l/b   ��k/b  b  ��l/lv��,FY hO��,E�Ob  ��, b  E�Y 	b  E�Ob  ��k/��k/� b  ��k/���l/lv��,FY "��k/b   b  ��l/lv��,FY hU  �1��0�/�.�1 0 
fillheight 
fillHeight�0 �-�-   �,�, 0 
thiswindow 
thisWindow�/   �+�*�)�(�'�&�+ 0 
thiswindow 
thisWindow�* 0 xpos xPos�) 0 xsize xSize�( 0 xleft xLeft�' 0 xwidth xWidth�& 0 checkheight checkHeight @�%�$�#�"�!
�% 
posn
�$ 
ptsz
�# 
cobj
�" 
long�! �. p� l��,E�O��,E�O��k/�&E�O��k/�&E�O�b  lv��,FO�b  lv��,FO��,E�O��l/b    �b  �lv��,FO�b  lv��,FY hU � F����  0 
fillscreen 
fillScreen� � �    �� 0 
thiswindow 
thisWindow�   ���� 0 
thiswindow 
thisWindow� 0 targetwidth targetWidth� 0 checkheight checkHeight �����
� 
posn
� 
ptsz
� 
cobj� � �� �b  b  lv��,FOb  b  b  b  E�Ob  b  lv��,FO��,E�O��l/b    �b  �lv��,FO�b  lv��,FY hO��k/�  ��b  lv��,FO�b  lv��,FY hU ����!"�� *0 guiscripting_status GUIScripting_status�  �  ! �� 0 
ui_enabled 
UI_enabled" ��������
��	�������
� 
uien
� .miscactvnull��� ��� null
� 
xppb
� kfrmID  
�
 
xpcp
�	 
ret 
� 
disp
� 
btns
� 
dflt� 
� .sysodlogaskr        TEXT� >� *�,E�UO�f  -� %*j O*���0*�,FO��%�%�%�k��kv�k� UY h ����#$� � &0 monitorproperties monitorProperties�  �  # ���� $0 screenresolution screenResolution$ 	����������������������
�� 
desk
�� 
cwin
�� 
pbnd�� 0 width Width
�� 
cobj�� 0 height Height�� �� 0 originx OriginX
�� 
msng�� 0 originy OriginY�� �  #� *�,�,�,E�UO��m/E���/E����� %% s��&
�� 
plif& �'' � M a c i n t o s h   H D : U s e r s : M o r i t z : L i b r a r y : P r e f e r e n c e s : c o m . a p p l e . d o c k . p l i s t @L       ����(�� 0 width Width���( ����)�� 0 height Height���) ����*�� 0 originx OriginX
�� 
msng* �������� 0 originy OriginY
�� 
msng��   ��+�� +  ,-./0, 11 s��2
�� 
pcap2 �33  F i n d e r- 44 s��5
�� 
pcap5 �66  S a f a r i. 77 s��8
�� 
pcap8 �99  M a i l/ :: s��;
�� 
pcap; �<<  S c r i p t   E d i t o r0 == s��>
�� 
pcap> �?? 
 G i t U p ��@�� @  AA BB C��DC s��E
�� 
pcapE �FF 
 G i t U p
�� 
cwinD �GG D W i n d o w   S c r i p t s      C o m m i t      1   c o m m i t�� ��
	 @��     �� ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��   ascr  ��ޭ