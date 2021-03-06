FasdUAS 1.101.10   ��   ��    k             l     ��  ��    $ ==============================     � 	 	 < = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =   
  
 l     ��  ��    1 + OmniFocus > Prepare Task Completion Report     �   V   O m n i F o c u s   >   P r e p a r e   T a s k   C o m p l e t i o n   R e p o r t      l     ��  ��      Version 2.0.0     �      V e r s i o n   2 . 0 . 0      l     ��  ��    : 4 Written By: Ben Waldie <ben@automatedworkflows.com>     �   h   W r i t t e n   B y :   B e n   W a l d i e   < b e n @ a u t o m a t e d w o r k f l o w s . c o m >      l     ��  ��    ( " http://www.automatedworkflows.com     �   D   h t t p : / / w w w . a u t o m a t e d w o r k f l o w s . c o m      l     ��������  ��  ��       !   l     �� " #��   " � � Description: This script retrieves a list of OmniFocus tasks completed today, yesterday, this week, last week, or this month. It then summarizes the tasks in a new Evernote note.    # � $ $f   D e s c r i p t i o n :   T h i s   s c r i p t   r e t r i e v e s   a   l i s t   o f   O m n i F o c u s   t a s k s   c o m p l e t e d   t o d a y ,   y e s t e r d a y ,   t h i s   w e e k ,   l a s t   w e e k ,   o r   t h i s   m o n t h .   I t   t h e n   s u m m a r i z e s   t h e   t a s k s   i n   a   n e w   E v e r n o t e   n o t e . !  % & % l     �� ' (��   '   Version History:    ( � ) ) "   V e r s i o n   H i s t o r y : &  * + * l     �� , -��   ,   1.0.0 - Initial release    - � . . 0   1 . 0 . 0   -   I n i t i a l   r e l e a s e +  / 0 / l     �� 1 2��   1 � � 2.0.0 - Added support for including full project paths, context names, estimate time, start dates, modification dates, completion dates, and notes in task reports.    2 � 3 3H   2 . 0 . 0   -   A d d e d   s u p p o r t   f o r   i n c l u d i n g   f u l l   p r o j e c t   p a t h s ,   c o n t e x t   n a m e s ,   e s t i m a t e   t i m e ,   s t a r t   d a t e s ,   m o d i f i c a t i o n   d a t e s ,   c o m p l e t i o n   d a t e s ,   a n d   n o t e s   i n   t a s k   r e p o r t s . 0  4 5 4 l     �� 6 7��   6 $ ==============================    7 � 8 8 < = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 5  9 : 9 l     ��������  ��  ��   :  ; < ; l     �� = >��   = a [ This property controls whether full project paths (including parent folders) are displayed    > � ? ? �   T h i s   p r o p e r t y   c o n t r o l s   w h e t h e r   f u l l   p r o j e c t   p a t h s   ( i n c l u d i n g   p a r e n t   f o l d e r s )   a r e   d i s p l a y e d <  @ A @ j     �� B�� 20 includefullprojectpaths includeFullProjectPaths B m     ��
�� boovfals A  C D C l     ��������  ��  ��   D  E F E l     �� G H��   G L F These properties control whether additional task content is displayed    H � I I �   T h e s e   p r o p e r t i e s   c o n t r o l   w h e t h e r   a d d i t i o n a l   t a s k   c o n t e n t   i s   d i s p l a y e d F  J K J j    �� L�� (0 includetaskcontext includeTaskContext L m    ��
�� boovfals K  M N M j    �� O�� 40 includetaskestimatedtime includeTaskEstimatedTime O m    ��
�� boovfals N  P Q P j   	 �� R�� ,0 includetaskstartdate includeTaskStartDate R m   	 
��
�� boovfals Q  S T S j    �� U�� :0 includetaskmodificationdate includeTaskModificationDate U m    ��
�� boovfals T  V W V j    �� X�� 60 includetaskcompletiondate includeTaskCompletionDate X m    ��
�� boovtrue W  Y Z Y j    �� [�� $0 includetasknotes includeTaskNotes [ m    ��
�� boovfals Z  \ ] \ l     ��������  ��  ��   ]  ^ _ ^ l     �� ` a��   ` K E MDP : I added these properties control the note creation in Evernote    a � b b �   M D P   :   I   a d d e d   t h e s e   p r o p e r t i e s   c o n t r o l   t h e   n o t e   c r e a t i o n   i n   E v e r n o t e _  c d c j    �� e�� $0 evernotenotebook evernoteNotebook e m     f f � g g  R e a d   I t   L a t e r d  h i h j    �� j�� 0 evernotetag evernoteTag j J     k k  l m l m     n n � o o  S t a t u s   R e p o r t m  p�� p m     q q � r r  A c c o m p l i s h m e n t s��   i  s t s l     ��������  ��  ��   t  u v u l     �� w x��   w 5 / This setting specifies a name for the new note    x � y y ^   T h i s   s e t t i n g   s p e c i f i e s   a   n a m e   f o r   t h e   n e w   n o t e v  z { z j     �� |�� 0 thenotename theNoteName | m     } } � ~ ~ > O m n i F o c u s   C o m p l e t e d   T a s k   R e p o r t {   �  l     ��������  ��  ��   �  � � � l     �� � ���   � 7 1 Prompt the user to choose a scope for the report    � � � � b   P r o m p t   t h e   u s e r   t o   c h o o s e   a   s c o p e   f o r   t h e   r e p o r t �  � � � l     ����� � I    ������
�� .miscactvnull��� ��� null��  ��  ��  ��   �  � � � l     �� � ���   � A ;MDP : I modified the following line to have a custom option    � � � � v M D P   :   I   m o d i f i e d   t h e   f o l l o w i n g   l i n e   t o   h a v e   a   c u s t o m   o p t i o n �  � � � l    ����� � r     � � � I   �� � �
�� .gtqpchltns    @   @ ns   � J     � �  � � � m     � � � � � 
 T o d a y �  � � � m     � � � � �  Y e s t e r d a y �  � � � m    	 � � � � �  T h i s   W e e k �  � � � m   	 
 � � � � �  L a s t   W e e k �  � � � m   
  � � � � �  T h i s   M o n t h �  ��� � m     � � � � �  C u s t o m��   � �� � �
�� 
inSL � J     � �  ��� � m     � � � � �  Y e s t e r d a y��   � �� � �
�� 
prmp � m     � � � � � , G e n e r a t e   a   r e p o r t   f o r : � �� ���
�� 
appr � m     � � � � � > O m n i F o c u s   C o m p l e t e d   T a s k   R e p o r t��   � o      ����  0 thereportscope theReportScope��  ��   �  � � � l   ) ����� � Z   ) � ����� � =      � � � o    ����  0 thereportscope theReportScope � m    ��
�� boovfals � L   # %����  ��  ��  ��  ��   �  � � � l  * 2 ����� � r   * 2 � � � n   * 0 � � � 4   + 0�� �
�� 
cobj � m   . /����  � o   * +����  0 thereportscope theReportScope � o      ����  0 thereportscope theReportScope��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � K E Calculate the task start and end dates, based on the specified scope    � � � � �   C a l c u l a t e   t h e   t a s k   s t a r t   a n d   e n d   d a t e s ,   b a s e d   o n   t h e   s p e c i f i e d   s c o p e �  � � � l  3 < ����� � r   3 < � � � I  3 8������
�� .misccurdldt    ��� null��  ��   � o      ���� 0 thestartdate theStartDate��  ��   �  � � � l  = F ����� � r   = F � � � m   = >����   � n       � � � 1   A E��
�� 
hour � o   > A���� 0 thestartdate theStartDate��  ��   �  � � � l  G P ����� � r   G P � � � m   G H����   � n       � � � 1   K O��
�� 
min  � o   H K���� 0 thestartdate theStartDate��  ��   �  � � � l  Q Z ����� � r   Q Z � � � m   Q R����   � n       � � � m   U Y��
�� 
scnd � o   R U���� 0 thestartdate theStartDate��  ��   �  � � � l  [ v ����� � r   [ v � � � [   [ r � � � [   [ n � � � [   [ f � � � o   [ ^���� 0 thestartdate theStartDate � l  ^ e ����� � ]   ^ e � � � m   ^ a����  � 1   a d��
�� 
hour��  ��   � l  f m ����� � ]   f m � � � m   f i���� ; � 1   i l��
�� 
min ��  ��   � m   n q���� ; � o      ���� 0 
theenddate 
theEndDate��  ��   �  � � � l     ��������  ��  ��   �  � � � l  w& ����� � Z   w& ��  =   w | o   w x����  0 thereportscope theReportScope m   x { � 
 T o d a y r    � n    �	
	 1   � ���
�� 
dstr
 o    ����� 0 thestartdate theStartDate o      �� 0 thedaterange theDateRange  =   � � o   � ��~�~  0 thereportscope theReportScope m   � � �  Y e s t e r d a y  k   � �  r   � � \   � � o   � ��}�} 0 thestartdate theStartDate ]   � � m   � ��|�|  1   � ��{
�{ 
days o      �z�z 0 thestartdate theStartDate  r   � � \   � � !  o   � ��y�y 0 
theenddate 
theEndDate! ]   � �"#" m   � ��x�x # 1   � ��w
�w 
days o      �v�v 0 
theenddate 
theEndDate $�u$ r   � �%&% n   � �'(' 1   � ��t
�t 
dstr( o   � ��s�s 0 thestartdate theStartDate& o      �r�r 0 thedaterange theDateRange�u   )*) =   � �+,+ o   � ��q�q  0 thereportscope theReportScope, m   � �-- �..  T h i s   W e e k* /0/ k   �$11 232 W   � �454 r   � �676 \   � �898 o   � ��p�p 0 thestartdate theStartDate9 ]   � �:;: m   � ��o�o ; 1   � ��n
�n 
days7 o      �m�m 0 thestartdate theStartDate5 =   � �<=< l  � �>�l�k> n   � �?@? m   � ��j
�j 
wkdy@ o   � ��i�i 0 thestartdate theStartDate�l  �k  = m   � ��h
�h 
sun 3 ABA W   �CDC r   �EFE [   �GHG o   � ��g�g 0 
theenddate 
theEndDateH ]   �IJI m   � ��f�f J 1   ��e
�e 
daysF o      �d�d 0 
theenddate 
theEndDateD =   � �KLK l  � �M�c�bM n   � �NON m   � ��a
�a 
wkdyO o   � ��`�` 0 
theenddate 
theEndDate�c  �b  L m   � ��_
�_ 
sat B P�^P r  $QRQ b   STS b  UVU l W�]�\W n  XYX 1  �[
�[ 
dstrY o  �Z�Z 0 thestartdate theStartDate�]  �\  V m  ZZ �[[    t h r o u g h  T l \�Y�X\ n  ]^] 1  �W
�W 
dstr^ o  �V�V 0 
theenddate 
theEndDate�Y  �X  R o      �U�U 0 thedaterange theDateRange�^  0 _`_ =  ',aba o  '(�T�T  0 thereportscope theReportScopeb m  (+cc �dd  L a s t   W e e k` efe k  /�gg hih r  />jkj \  /:lml o  /2�S�S 0 thestartdate theStartDatem ]  29non m  25�R�R o 1  58�Q
�Q 
daysk o      �P�P 0 thestartdate theStartDatei pqp r  ?Nrsr \  ?Jtut o  ?B�O�O 0 
theenddate 
theEndDateu ]  BIvwv m  BE�N�N w 1  EH�M
�M 
dayss o      �L�L 0 
theenddate 
theEndDateq xyx W  Oqz{z r  _l|}| \  _h~~ o  _b�K�K 0 thestartdate theStartDate ]  bg��� m  bc�J�J � 1  cf�I
�I 
days} o      �H�H 0 thestartdate theStartDate{ =  S^��� l SZ��G�F� n  SZ��� m  VZ�E
�E 
wkdy� o  SV�D�D 0 thestartdate theStartDate�G  �F  � m  Z]�C
�C 
sun y ��� W  r���� r  ����� [  ����� o  ���B�B 0 
theenddate 
theEndDate� ]  ����� m  ���A�A � 1  ���@
�@ 
days� o      �?�? 0 
theenddate 
theEndDate� =  v���� l v}��>�=� n  v}��� m  y}�<
�< 
wkdy� o  vy�;�; 0 
theenddate 
theEndDate�>  �=  � m  }��:
�: 
sat � ��9� r  ����� b  ����� b  ����� l ����8�7� n  ����� 1  ���6
�6 
dstr� o  ���5�5 0 thestartdate theStartDate�8  �7  � m  ���� ���    t h r o u g h  � l ����4�3� n  ����� 1  ���2
�2 
dstr� o  ���1�1 0 
theenddate 
theEndDate�4  �3  � o      �0�0 0 thedaterange theDateRange�9  f ��� =  ����� o  ���/�/  0 thereportscope theReportScope� m  ���� ���  T h i s   M o n t h� ��� k  �$�� ��� W  ����� r  ����� \  ����� o  ���.�. 0 thestartdate theStartDate� ]  ����� m  ���-�- � 1  ���,
�, 
days� o      �+�+ 0 thestartdate theStartDate� =  ����� l ����*�)� n  ����� 1  ���(
�( 
day � o  ���'�' 0 thestartdate theStartDate�*  �)  � m  ���&�& � ��� W  ����� r  ����� [  ����� o  ���%�% 0 
theenddate 
theEndDate� ]  ����� m  ���$�$ � 1  ���#
�# 
days� o      �"�" 0 
theenddate 
theEndDate� > ����� l ����!� � n  ����� m  ���
� 
mnth� o  ���� 0 
theenddate 
theEndDate�!  �   � l ������ n  ����� m  ���
� 
mnth� o  ���� 0 thestartdate theStartDate�  �  � ��� r  ���� \  ���� o  ��� 0 
theenddate 
theEndDate� ]  ��� m  �� � 1  �
� 
days� o      �� 0 
theenddate 
theEndDate� ��� r  $��� b   ��� b  ��� l ���� n  ��� 1  �
� 
dstr� o  �� 0 thestartdate theStartDate�  �  � m  �� ���    t h r o u g h  � l ���� n  ��� 1  �
� 
dstr� o  �� 0 
theenddate 
theEndDate�  �  � o      �� 0 thedaterange theDateRange�  � ��� =  ',��� o  '(��  0 thereportscope theReportScope� m  (+�� ���  C u s t o m� ��
� k  /"�� ��� l //�	���	  � J DMDP : I added this else if block to accommodate a custom date range.   � ��� � M D P   :   I   a d d e d   t h i s   e l s e   i f   b l o c k   t o   a c c o m m o d a t e   a   c u s t o m   d a t e   r a n g e .� ��� r  /6��� m  /2�� ���  � o      �� 0 	theprefix 	thePrefix� ��� r  7>��� m  7:�
� stic   � o      �� 0 theicon theIcon� ��� T  ?��� k  D�    r  Do 4  Dk�
� 
ldt  l Hj�� n  Hj 1  ei�
� 
ttxt l He	�� 	 I He��

�� .sysodlogaskr        TEXT
 b  HO o  HK���� 0 	theprefix 	thePrefix m  KN � " S t a r t   r e p o r t   o n :   ��
�� 
dtxt l RY���� n  RY 1  UY��
�� 
shdt o  RU���� 0 thestartdate theStartDate��  ��   ����
�� 
disp o  \_���� 0 theicon theIcon��  �  �   �  �   o      ���� 0 theuserdate theUserDate �� Q  p� k  s�  r  s~ l sz���� c  sz !  o  sv���� 0 theuserdate theUserDate! m  vy��
�� 
ldt ��  ��   o      ���� 0 thestartdate theStartDate "��"  S  ���   R      ������
�� .ascrerr ****      � ****��  ��   k  ��## $%$ r  ��&'& m  ��(( �))  I n v a l i d   d a t e !  ' o      ���� 0 	theprefix 	thePrefix% *��* r  ��+,+ m  ����
�� stic    , o      ���� 0 theicon theIcon��  ��  � -.- r  ��/0/ m  ��11 �22  0 o      ���� 0 	theprefix 	thePrefix. 343 r  ��565 m  ����
�� stic   6 o      ���� 0 theicon theIcon4 787 T  �
99 k  �:: ;<; r  ��=>= 4  ����?
�� 
ldt ? l ��@����@ n  ��ABA 1  ����
�� 
ttxtB l ��C����C I ����DE
�� .sysodlogaskr        TEXTD b  ��FGF o  ������ 0 	theprefix 	thePrefixG m  ��HH �II  E n d   r e p o r t   o n :  E ��JK
�� 
dtxtJ l ��L����L n  ��MNM 1  ����
�� 
shdtN o  ������ 0 thestartdate theStartDate��  ��  K ��O��
�� 
dispO o  ������ 0 theicon theIcon��  ��  ��  ��  ��  > o      ���� 0 theuserdate theUserDate< P��P Q  �QRSQ k  ��TT UVU r  ��WXW l ��Y����Y c  ��Z[Z o  ������ 0 theuserdate theUserDate[ m  ����
�� 
ldt ��  ��  X o      ���� 0 
theenddate 
theEndDateV \��\  S  ����  R R      ������
�� .ascrerr ****      � ****��  ��  S k  �]] ^_^ r  ��`a` m  ��bb �cc  I n v a l i d   d a t e !  a o      ���� 0 	theprefix 	thePrefix_ d��d r  �efe m  ���
�� stic    f o      ���� 0 theicon theIcon��  ��  8 g��g r  "hih b  jkj b  lml l n����n n  opo 1  ��
�� 
dstrp o  ���� 0 thestartdate theStartDate��  ��  m m  qq �rr    t h r o u g h  k l s����s n  tut 1  ��
�� 
dstru o  ���� 0 
theenddate 
theEndDate��  ��  i o      ���� 0 thedaterange theDateRange��  �
  ��  ��  ��   � vwv l     ��xy��  x D >MDP: Added this so the date range gets added to evernote title   y �zz | M D P :   A d d e d   t h i s   s o   t h e   d a t e   r a n g e   g e t s   a d d e d   t o   e v e r n o t e   t i t l ew {|{ l ':}����} r  ':~~ b  '4��� b  '0��� o  ',���� 0 thenotename theNoteName� m  ,/�� ���    -  � o  03���� 0 thedaterange theDateRange o      ���� 0 thenotename theNoteName��  ��  | ��� l     ��������  ��  ��  � ��� l     ������  � - ' Begin preparing the task list as HTML.   � ��� N   B e g i n   p r e p a r i n g   t h e   t a s k   l i s t   a s   H T M L .� ��� l ;J������ r  ;J��� b  ;F��� b  ;B��� m  ;>�� ��� V < h t m l > < b o d y > < h 1 > C o m p l e t e d   T a s k s < / h 1 > < b r > < b >� o  >A���� 0 thedaterange theDateRange� m  BE�� ���   < / b > < b r > < h r > < b r >� o      ���� &0 theprogressdetail theProgressDetail��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � F @ Retrieve a list of projects modified within the specified scope   � ��� �   R e t r i e v e   a   l i s t   o f   p r o j e c t s   m o d i f i e d   w i t h i n   t h e   s p e c i f i e d   s c o p e� ��� l KP������ r  KP��� m  KL��
�� boovfals� o      ���� .0 modifiedtasksdetected modifiedTasksDetected��  ��  � ��� l Q ������ O  Q ��� O  W���� k  `��� ��� r  `���� 6`���� n  `l��� 2  hl��
�� 
FCfx� 4  `h���
�� 
FCAr� m  dg�� ���  W o r k� F  o���� ? p{��� n qu��� 1  qu��
�� 
FCDm�  g  qq� o  vz���� 0 thestartdate theStartDate� A |���� 1  }���
�� 
FCDm� o  ������ 0 
theenddate 
theEndDate� o      ���� *0 themodifiedprojects theModifiedProjects� ��� l ����������  ��  ��  � ��� l ��������  � ) # Loop through any detected projects   � ��� F   L o o p   t h r o u g h   a n y   d e t e c t e d   p r o j e c t s� ���� Y  ���������� k  ���� ��� r  ����� n  ����� 4  �����
�� 
cobj� 1  ����
�� 
OSav� o  ������ *0 themodifiedprojects theModifiedProjects� o      ���� &0 thecurrentproject theCurrentProject� ��� l ����������  ��  ��  � ��� l ��������  � E ? Retrieve any project tasks modified within the specified scope   � ��� ~   R e t r i e v e   a n y   p r o j e c t   t a s k s   m o d i f i e d   w i t h i n   t h e   s p e c i f i e d   s c o p e� ��� r  ����� l �������� 6����� n  ����� 2  ����
�� 
FCft� o  ������ &0 thecurrentproject theCurrentProject� F  ����� F  ����� F  ����� =  ����� n ����� 1  ����
�� 
FCcd�  g  ��� m  ����
�� boovtrue� ? ����� 1  ����
�� 
FCDm� o  ������ 0 thestartdate theStartDate� A ����� 1  ����
�� 
FCDm� o  ������ 0 
theenddate 
theEndDate� =  ����� 1  ����
�� 
FC#t� m  ������  ��  ��  � o      ���� &0 thecompletedtasks theCompletedTasks� ��� l ����~�}�  �~  �}  � ��� l ���|���|  � . ( Process the project if tasks were found   � ��� P   P r o c e s s   t h e   p r o j e c t   i f   t a s k s   w e r e   f o u n d� ��{� Z  �����z�y� > ����� o  ���x�x &0 thecompletedtasks theCompletedTasks� J  ���w�w  � k  ��    r  �� m  ���v
�v boovtrue o      �u�u .0 modifiedtasksdetected modifiedTasksDetected  l ���t�s�r�t  �s  �r    l ���q	
�q  	 9 3 Append the project folder path to the project name   
 � f   A p p e n d   t h e   p r o j e c t   f o l d e r   p a t h   t o   t h e   p r o j e c t   n a m e  r  � m  �  �   o      �p�p ,0 theprojectfolderpath theProjectFolderPath  Z  9�o�n =   o  
�m�m 20 includefullprojectpaths includeFullProjectPaths m  
�l
�l boovtrue k  5  r   n   I  �k�j�k ,0 getprojectfolderpath getProjectFolderPath  �i  o  �h�h &0 thecurrentproject theCurrentProject�i  �j    f   o      �g�g ,0 theprojectfolderpath theProjectFolderPath !�f! Z 5"#�e�d" > #$%$ o  �c�c ,0 theprojectfolderpath theProjectFolderPath% m  "&& �''  # r  &1()( b  &-*+* o  &)�b�b ,0 theprojectfolderpath theProjectFolderPath+ m  ),,, �--    >  ) o      �a�a ,0 theprojectfolderpath theProjectFolderPath�e  �d  �f  �o  �n   ./. l ::�`�_�^�`  �_  �^  / 010 l ::�]23�]  2 , & Append the project name to the report   3 �44 L   A p p e n d   t h e   p r o j e c t   n a m e   t o   t h e   r e p o r t1 565 r  :]787 b  :Y9:9 b  :U;<; b  :Q=>= b  :M?@? b  :EABA b  :ACDC o  :=�\�\ &0 theprogressdetail theProgressDetailD m  =@EE �FF  < h 2 >B o  AD�[�[ ,0 theprojectfolderpath theProjectFolderPath@ n  ELGHG 1  HL�Z
�Z 
pnamH o  EH�Y�Y &0 thecurrentproject theCurrentProject> m  MPII �JJ 
 < / h 2 >< o  QT�X
�X 
ret : m  UXKK �LL  < b r > < u l >8 o      �W�W &0 theprogressdetail theProgressDetail6 MNM l ^^�V�U�T�V  �U  �T  N OPO l ^^�SQR�S  Q 6 0 Loop through the detected tasks for the project   R �SS `   L o o p   t h r o u g h   t h e   d e t e c t e d   t a s k s   f o r   t h e   p r o j e c tP TUT Y  ^�V�RWX�QV k  o�YY Z[Z r  o|\]\ n  ox^_^ 4  rx�P`
�P 
cobj` 1  uw�O
�O 
OSbv_ o  or�N�N &0 thecompletedtasks theCompletedTasks] o      �M�M  0 thecurrenttask theCurrentTask[ aba l }}�L�K�J�L  �K  �J  b cdc l }}�Ief�I  e / ) Append the tasks's name to the task list   f �gg R   A p p e n d   t h e   t a s k s ' s   n a m e   t o   t h e   t a s k   l i s td hih r  }�jkj b  }�lml b  }�non o  }��H�H &0 theprogressdetail theProgressDetailo m  ��pp �qq  < l i >m n  ��rsr 1  ���G
�G 
pnams o  ���F�F  0 thecurrenttask theCurrentTaskk o      �E�E &0 theprogressdetail theProgressDetaili tut l ���D�C�B�D  �C  �B  u vwv l ���Axy�A  x 9 3 Set up a variable for the task detail, if relevant   y �zz f   S e t   u p   a   v a r i a b l e   f o r   t h e   t a s k   d e t a i l ,   i f   r e l e v a n tw {|{ r  ��}~} m  �� ���  ~ o      �@�@ 0 thetaskdetail theTaskDetail| ��� l ���?�>�=�?  �>  �=  � ��� l ���<���<  � , & Append the context to the task detail   � ��� L   A p p e n d   t h e   c o n t e x t   t o   t h e   t a s k   d e t a i l� ��� Z  �����;�:� =  ����� o  ���9�9 (0 includetaskcontext includeTaskContext� m  ���8
�8 boovtrue� k  ���� ��� r  ����� n  ����� m  ���7
�7 
FCct� o  ���6�6  0 thecurrenttask theCurrentTask� o      �5�5 0 
thecontext 
theContext� ��4� Z �����3�2� > ����� o  ���1�1 0 
thecontext 
theContext� m  ���0
�0 
msng� r  ����� n  ����� I  ���/��.�/ $0 appendtaskdetail appendTaskDetail� ��� o  ���-�- 0 thetaskdetail theTaskDetail� ��� n  ����� 1  ���,
�, 
pnam� o  ���+�+ 0 
thecontext 
theContext� ��� m  ���� ���  C o n t e x t� ��*� m  ���� ���  �*  �.  �  f  ��� o      �)�) 0 thetaskdetail theTaskDetail�3  �2  �4  �;  �:  � ��� l ���(�'�&�(  �'  �&  � ��� l ���%���%  � 3 - Append the estimated time to the task detail   � ��� Z   A p p e n d   t h e   e s t i m a t e d   t i m e   t o   t h e   t a s k   d e t a i l� ��� Z ����$�#� =  ����� o  ���"�" 40 includetaskestimatedtime includeTaskEstimatedTime� m  ���!
�! boovtrue� r  ���� n  ����� I  ��� ���  $0 appendtaskdetail appendTaskDetail� ��� o  ���� 0 thetaskdetail theTaskDetail� ��� n  ����� 1  ���
� 
FCEM� o  ����  0 thecurrenttask theCurrentTask� ��� m  ���� ���  E s t i m a t e d   T i m e� ��� m  ���� ���    m i n u t e s�  �  �  f  ��� o      �� 0 thetaskdetail theTaskDetail�$  �#  � ��� l ����  �  �  � ��� l ����  � / ) Append the start date to the task detail   � ��� R   A p p e n d   t h e   s t a r t   d a t e   t o   t h e   t a s k   d e t a i l� ��� Z 0����� =  ��� o  �� ,0 includetaskstartdate includeTaskStartDate� m  �
� boovtrue� r  ,��� n  (��� I  (���� $0 appendtaskdetail appendTaskDetail� ��� o  �� 0 thetaskdetail theTaskDetail� ��� n  ��� 1  �
� 
FCDs� o  ��  0 thecurrenttask theCurrentTask� ��� m  �� ���  S t a r t   D a t e� ��� m  "�� ���  �  �  �  f  � o      �� 0 thetaskdetail theTaskDetail�  �  � ��� l 11�
�	��
  �	  �  � ��� l 11����  � 6 0 Append the modification date to the task detail   � ��� `   A p p e n d   t h e   m o d i f i c a t i o n   d a t e   t o   t h e   t a s k   d e t a i l� ��� Z 1Z����� =  18��� o  16�� ,0 includetaskstartdate includeTaskStartDate� m  67�
� boovtrue� r  ;V��� n  ;R��� I  <R���� $0 appendtaskdetail appendTaskDetail� ��� o  <?� �  0 thetaskdetail theTaskDetail� ��� n  ?F   1  BF��
�� 
FCDm o  ?B����  0 thecurrenttask theCurrentTask�  m  FI � " M o d i f i c a t i o n   D a t e �� m  IL �  ��  �  �  f  ;<� o      ���� 0 thetaskdetail theTaskDetail�  �  � 	
	 l [[��������  ��  ��  
  l [[����   4 . Append the completion date to the task detail    � \   A p p e n d   t h e   c o m p l e t i o n   d a t e   t o   t h e   t a s k   d e t a i l  Z [����� =  [b o  [`���� ,0 includetaskstartdate includeTaskStartDate m  `a��
�� boovtrue r  e� n  e| I  f|������ $0 appendtaskdetail appendTaskDetail  o  fi���� 0 thetaskdetail theTaskDetail  n  ip  1  lp��
�� 
FCdc  o  il����  0 thecurrenttask theCurrentTask !"! m  ps## �$$  C o m p l e t i o n   D a t e" %��% m  sv&& �''  ��  ��    f  ef o      ���� 0 thetaskdetail theTaskDetail��  ��   ()( l ����������  ��  ��  ) *+* l ����,-��  , 1 + Append the task's notes to the task detail   - �.. V   A p p e n d   t h e   t a s k ' s   n o t e s   t o   t h e   t a s k   d e t a i l+ /0/ Z ��12����1 =  ��343 o  ������ $0 includetasknotes includeTaskNotes4 m  ����
�� boovtrue2 r  ��565 n  ��787 I  ����9���� $0 appendtaskdetail appendTaskDetail9 :;: o  ������ 0 thetaskdetail theTaskDetail; <=< n  ��>?> 1  ����
�� 
FCno? o  ������  0 thecurrenttask theCurrentTask= @A@ m  ��BB �CC  N o t eA D��D m  ��EE �FF  ��  ��  8  f  ��6 o      ���� 0 thetaskdetail theTaskDetail��  ��  0 GHG l ����������  ��  ��  H IJI l ����KL��  K . ( Append the task detail to the task list   L �MM P   A p p e n d   t h e   t a s k   d e t a i l   t o   t h e   t a s k   l i s tJ NON Z  ��PQ����P > ��RSR o  ������ 0 thetaskdetail theTaskDetailS m  ��TT �UU  Q r  ��VWV b  ��XYX b  ��Z[Z b  ��\]\ o  ������ &0 theprogressdetail theProgressDetail] m  ��^^ �__ 6 < b r > < p   s t y l e = " c o l o r :   g r a y " >[ o  ������ 0 thetaskdetail theTaskDetailY m  ��`` �aa  < / p >W o      ���� &0 theprogressdetail theProgressDetail��  ��  O bcb l ����������  ��  ��  c ded l ����fg��  f 0 * Finish adding the task's HTML to the list   g �hh T   F i n i s h   a d d i n g   t h e   t a s k ' s   H T M L   t o   t h e   l i s te i��i r  ��jkj b  ��lml b  ��non o  ������ &0 theprogressdetail theProgressDetailo m  ��pp �qq 
 < / l i >m o  ����
�� 
ret k o      ���� &0 theprogressdetail theProgressDetail��  
�R 
OSbvW m  ab���� X n  bjrsr 1  ei��
�� 
lengs o  be���� &0 thecompletedtasks theCompletedTasks�Q  U t��t r  ��uvu b  ��wxw b  ��yzy o  ������ &0 theprogressdetail theProgressDetailz m  ��{{ �|| 
 < / u l >x o  ����
�� 
ret v o      ���� &0 theprogressdetail theProgressDetail��  �z  �y  �{  
�� 
OSav� m  ������ � n  ��}~} 1  ����
�� 
leng~ o  ������ *0 themodifiedprojects theModifiedProjects��  ��  � 4 W]��
�� 
docu m  [\���� � m  QT���                                                                                  OFOC  alis    X  Macintosh HD               �R�|H+     �OmniFocus.app                                                   @C��.        ����  	                Applications    �S!�      ��M~       �  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��  ��  � ��� l ������ r  ��� b  ��� o  ���� &0 theprogressdetail theProgressDetail� m  �� ���  < / b o d y > < / h t m l >� o      ���� &0 theprogressdetail theProgressDetail��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � 9 3 Notify the user if no projects or tasks were found   � ��� f   N o t i f y   t h e   u s e r   i f   n o   p r o j e c t s   o r   t a s k s   w e r e   f o u n d� ��� l /������ Z  /������� =  ��� o  ���� .0 modifiedtasksdetected modifiedTasksDetected� m  ��
�� boovfals� k  +�� ��� I (����
�� .sysodisAaleR        TEXT� m  �� ��� > O m n i F o c u s   C o m p l e t e d   T a s k   R e p o r t� �����
�� 
mesS� b  $��� b   ��� m  �� ��� B N o   m o d i f i e d   t a s k s   w e r e   f o u n d   f o r  � o  ����  0 thereportscope theReportScope� m   #�� ���  .��  � ���� L  )+����  ��  ��  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � #  Create the note in Evernote.   � ��� :   C r e a t e   t h e   n o t e   i n   E v e r n o t e .� ��� l 0r������ O  0r��� k  6q�� ��� I 6;������
�� .miscactvnull��� ��� null��  ��  � ��� l <<������  � ? 9MDP : Modified the following line to add a standard tag.    � ��� r M D P   :   M o d i f i e d   t h e   f o l l o w i n g   l i n e   t o   a d d   a   s t a n d a r d   t a g .  � ��� l <<������  � J DMDP : Modified the following line to make the notebook configurable.   � ��� � M D P   :   M o d i f i e d   t h e   f o l l o w i n g   l i n e   t o   m a k e   t h e   n o t e b o o k   c o n f i g u r a b l e .� ��� r  <e��� I <a�����
�� .EVRNcrntnull��� ��� null��  � ����
�� 
Ennb� o  @E���� $0 evernotenotebook evernoteNotebook� ����
�� 
Entt� o  HM���� 0 thenotename theNoteName� ����
�� 
Enhl� o  PS���� &0 theprogressdetail theProgressDetail� �����
�� 
Engg� o  V[���� 0 evernotetag evernoteTag��  � o      ���� 0 thenote theNote� ���� I fq�����
�� .EVRNonwnnull��� ��� null��  � �����
�� 
EV17� o  jm���� 0 thenote theNote��  ��  � m  03���                                                                                  EVRN  alis    V  Macintosh HD               �R�|H+     �Evernote.app                                                    >���w��        ����  	                Applications    �S!�      �w�)       �  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � 6 0 This handler gets the folder path for a project   � ��� `   T h i s   h a n d l e r   g e t s   t h e   f o l d e r   p a t h   f o r   a   p r o j e c t� ��� i   ! $��� I      ������� ,0 getprojectfolderpath getProjectFolderPath� ���� o      ���� 0 
theproject 
theProject��  ��  � O     c��� k    b�� ��� r    ��� m    �� ���  � o      ���� 0 thefolderpath theFolderPath� ��� Z    Q������� I   �����
�� .coredoexnull���     ****� n    ��� m   	 ��
�� 
FCAr� o    	���� 0 
theproject 
theProject��  � k    M�� ��� r    ��� n    ��� m    �
� 
FCAr� o    �~�~ 0 
theproject 
theProject� o      �}�} 0 	thefolder 	theFolder� ��|� T    M�� k    H�� ��� Z   ,���{�z� >    ��� o    �y�y 0 thefolderpath theFolderPath� m    �� �    � r   # ( b   # & m   # $ �    :   o   $ %�x�x 0 thefolderpath theFolderPath o      �w�w 0 thefolderpath theFolderPath�{  �z  �  r   - 4	
	 b   - 2 n   - 0 1   . 0�v
�v 
pnam o   - .�u�u 0 	thefolder 	theFolder o   0 1�t�t 0 thefolderpath theFolderPath
 o      �s�s 0 thefolderpath theFolderPath �r Z   5 H�q =   5 < n   5 : m   8 :�p
�p 
pcls n   5 8 1   6 8�o
�o 
ctnr o   5 6�n�n 0 	thefolder 	theFolder m   : ;�m
�m 
FCAr r   ? D n   ? B 1   @ B�l
�l 
ctnr o   ? @�k�k 0 	thefolder 	theFolder o      �j�j 0 	thefolder 	theFolder�q    S   G H�r  �|  ��  ��  �  Z  R _ �i�h =   R U!"! o   R S�g�g 0 thefolderpath theFolderPath" m   S T## �$$    r   X [%&% m   X Y'' �((  & o      �f�f 0 thefolderpath theFolderPath�i  �h   )�e) L   ` b** o   ` a�d�d 0 thefolderpath theFolderPath�e  � m     ++�                                                                                  OFOC  alis    X  Macintosh HD               �R�|H+     �OmniFocus.app                                                   @C��.        ����  	                Applications    �S!�      ��M~       �  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ,-, l     �c�b�a�c  �b  �a  - ./. l     �`01�`  0 6 0 This handler appends a value to the task detail   1 �22 `   T h i s   h a n d l e r   a p p e n d s   a   v a l u e   t o   t h e   t a s k   d e t a i l/ 3�_3 i   % (454 I      �^6�]�^ $0 appendtaskdetail appendTaskDetail6 787 o      �\�\ 0 thetaskdetail theTaskDetail8 9:9 o      �[�[ 0 thevalue theValue: ;<; o      �Z�Z 0 	theprefix 	thePrefix< =�Y= o      �X�X 0 	thesuffix 	theSuffix�Y  �]  5 k     2>> ?@? Z    AB�W�VA >    CDC o     �U�U 0 thetaskdetail theTaskDetailD m    EE �FF  B r    GHG b    	IJI o    �T�T 0 thetaskdetail theTaskDetailJ m    KK �LL  < b r >H o      �S�S 0 thetaskdetail theTaskDetail�W  �V  @ MNM Z    )OP�RQO G    RSR =    TUT o    �Q�Q 0 thevalue theValueU m    �P
�P 
msngS =    VWV o    �O�O 0 thevalue theValueW m    XX �YY  P r    !Z[Z m    \\ �]]  N / A[ o      �N�N 0 thevalue theValue�R  Q r   $ )^_^ b   $ '`a` o   $ %�M�M 0 thevalue theValuea o   % &�L�L 0 	thesuffix 	theSuffix_ o      �K�K 0 thevalue theValueN b�Jb L   * 2cc b   * 1ded b   * /fgf b   * -hih o   * +�I�I 0 thetaskdetail theTaskDetaili o   + ,�H�H 0 	theprefix 	thePrefixg m   - .jj �kk  :  e o   / 0�G�G 0 thevalue theValue�J  �_       �Fl�E�D�C�B�A�@�? fm }nop�F  l �>�=�<�;�:�9�8�7�6�5�4�3�2�> 20 includefullprojectpaths includeFullProjectPaths�= (0 includetaskcontext includeTaskContext�< 40 includetaskestimatedtime includeTaskEstimatedTime�; ,0 includetaskstartdate includeTaskStartDate�: :0 includetaskmodificationdate includeTaskModificationDate�9 60 includetaskcompletiondate includeTaskCompletionDate�8 $0 includetasknotes includeTaskNotes�7 $0 evernotenotebook evernoteNotebook�6 0 evernotetag evernoteTag�5 0 thenotename theNoteName�4 ,0 getprojectfolderpath getProjectFolderPath�3 $0 appendtaskdetail appendTaskDetail
�2 .aevtoappnull  �   � ****
�E boovfals
�D boovfals
�C boovfals
�B boovfals
�A boovfals
�@ boovtrue
�? boovfalsm �1q�1 q   n qn �0��/�.rs�-�0 ,0 getprojectfolderpath getProjectFolderPath�/ �,t�, t  �+�+ 0 
theproject 
theProject�.  r �*�)�(�* 0 
theproject 
theProject�) 0 thefolderpath theFolderPath�( 0 	thefolder 	theFolders +��'�&��%�$�##'
�' 
FCAr
�& .coredoexnull���     ****
�% 
pnam
�$ 
ctnr
�# 
pcls�- d� `�E�O��,j  @��,E�O 4hZ�� 
�%E�Y hO��,�%E�O��,�,�  
��,E�Y [OY��Y hO��  �E�Y hO�Uo �"5�!� uv��" $0 appendtaskdetail appendTaskDetail�! �w� w  ����� 0 thetaskdetail theTaskDetail� 0 thevalue theValue� 0 	theprefix 	thePrefix� 0 	thesuffix 	theSuffix�   u ����� 0 thetaskdetail theTaskDetail� 0 thevalue theValue� 0 	theprefix 	thePrefix� 0 	thesuffix 	theSuffixv EK�X�\j
� 
msng
� 
bool� 3�� 
��%E�Y hO�� 
 �� �& �E�Y ��%E�O��%�%�%p �x��yz�
� .aevtoappnull  �   � ****x k    r{{  �||  �}}  �~~  �  ���  ���  ���  ���  ���  ��� {�� ��� ��� ��� ��� ��� ���  �  �  y ��
� 
OSav
� 
OSbvz �� � � � � � ���
 ��	 �� ��������� ������������-������Zc�������������������������������������(��1Hbq������������������������������������&,E��I��K��p����������������������#&��BET^`p{���������������������������
� .miscactvnull��� ��� null� 
�
 
inSL
�	 
prmp
� 
appr
� .gtqpchltns    @   @ ns  �  0 thereportscope theReportScope
� 
cobj
� .misccurdldt    ��� null� 0 thestartdate theStartDate
� 
hour
� 
min 
�  
scnd�� �� ;�� 0 
theenddate 
theEndDate
�� 
dstr�� 0 thedaterange theDateRange
�� 
days
�� 
wkdy
�� 
sun 
�� 
sat �� 
�� 
day 
�� 
mnth�� 0 	theprefix 	thePrefix
�� stic   �� 0 theicon theIcon
�� 
ldt 
�� 
dtxt
�� 
shdt
�� 
disp�� 
�� .sysodlogaskr        TEXT
�� 
ttxt�� 0 theuserdate theUserDate��  ��  
�� stic    �� &0 theprogressdetail theProgressDetail�� .0 modifiedtasksdetected modifiedTasksDetected
�� 
docu
�� 
FCAr
�� 
FCfx�  
�� 
FCDm�� *0 themodifiedprojects theModifiedProjects
�� 
leng�� &0 thecurrentproject theCurrentProject
�� 
FCft
�� 
FCcd
�� 
FC#t�� &0 thecompletedtasks theCompletedTasks�� ,0 theprojectfolderpath theProjectFolderPath�� ,0 getprojectfolderpath getProjectFolderPath
�� 
pnam
�� 
ret ��  0 thecurrenttask theCurrentTask�� 0 thetaskdetail theTaskDetail
�� 
FCct�� 0 
thecontext 
theContext
�� 
msng�� $0 appendtaskdetail appendTaskDetail
�� 
FCEM
�� 
FCDs
�� 
FCdc
�� 
FCno
�� 
mesS
�� .sysodisAaleR        TEXT
�� 
Ennb
�� 
Entt
�� 
Enhl
�� 
Engg�� 
�� .EVRNcrntnull��� ��� null�� 0 thenote theNote
�� 
EV17
�� .EVRNonwnnull��� ��� null�s*j  O�������v��kv����� E�O�f  hY hO�a k/E�O*j E` Oj_ a ,FOj_ a ,FOj_ a ,FO_ a _  a _  a E` O�a   _ a ,E` Y��a   ,_ k_  E` O_ k_  E` O_ a ,E` Yi�a   b !h_ a ,a   _ k_  E` [OY��O !h_ a ,a ! _ k_  E` [OY��O_ a ,a "%_ a ,%E` Y�a #  �_ a $_  E` O_ a $_  E` O !h_ a ,a   _ k_  E` [OY��O !h_ a ,a ! _ k_  E` [OY��O_ a ,a %%_ a ,%E` Yy�a &  r h_ a ',k _ k_  E` [OY��O %h_ a (,_ a (,_ k_  E` [OY��O_ k_  E` O_ a ,a )%_ a ,%E` Y�a *  �a +E` ,Oa -E` .O \hZ*a /_ ,a 0%a 1_ a 2,a 3_ .a 4 5a 6,E/E` 7O _ 7a /&E` OW X 8 9a :E` ,Oa ;E` .[OY��Oa <E` ,Oa -E` .O \hZ*a /_ ,a =%a 1_ a 2,a 3_ .a 4 5a 6,E/E` 7O _ 7a /&E` OW X 8 9a >E` ,Oa ;E` .[OY��O_ a ,a ?%_ a ,%E` Y hOb  	a @%_ %Ec  	Oa A_ %a B%E` COfE` DOa E�*a Fk/�*a Ga H/a I-a J[[a K,\Z_ :\[a K,\Z_ <A1E` LOok_ La M,Ekh  _ La �E/E` NO_ Na O-a J[[[[a P,\Ze8\[a K,\Z_ :A\[a K,\Z_ <A\[a Q,\Zj8A1E` RO_ RjveE` DOa SE` TOb   e  +)_ Nk+ UE` TO_ Ta V _ Ta W%E` TY hY hO_ Ca X%_ T%_ Na Y,%a Z%_ [%a \%E` CO�k_ Ra M,Ekh _ Ra �E/E` ]O_ Ca ^%_ ]a Y,%E` COa _E` `Ob  e  :_ ]a a,E` bO_ ba c  )_ `_ ba Y,a da ea 4+ fE` `Y hY hOb  e   )_ `_ ]a g,a ha ia 4+ fE` `Y hOb  e   )_ `_ ]a j,a ka la 4+ fE` `Y hOb  e   )_ `_ ]a K,a ma na 4+ fE` `Y hOb  e   )_ `_ ]a o,a pa qa 4+ fE` `Y hOb  e   )_ `_ ]a r,a sa ta 4+ fE` `Y hO_ `a u _ Ca v%_ `%a w%E` CY hO_ Ca x%_ [%E` C[OY��O_ Ca y%_ [%E` CY h[OY��UUO_ Ca z%E` CO_ Df  a {a |a }�%a ~%l OhY hOa � =*j  O*a �b  a �b  	a �_ Ca �b  a � �E` �O*a �_ �l �U ascr  ��ޭ