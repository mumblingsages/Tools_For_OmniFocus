FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ke
OopsieFocus

A script to launch OmniFocus and activiate the Quick Entry Panel. 

By Mark Parry
January 22nd, 2017

Dependacies
	1) Keyboard Maestro - Not really a dependancy but an easy way to bind this script to the same keyboard shortcut as that which is mapped in OmniFocus. 

How it works
	Note) When OmniFocus is not running, it isn't catching the the keyboard shortcut in its preferences (because its not running). 
	1) Create a global keyboard macro in a tool like Keyboard Maestro. 
		-) Make sure that the keyboard shortcut defined in Keyboard Maestro matches that which is defined in OmniFocus
	2) With OmniFocus not running type the keyboard shortcut
	3) Applescript will check to see if OmniFocus is running
		If running) The script will simply terminate
		If not running) The script will start OmniFocus and then tell it to display the Quick Entry window
     � 	 	� 
 O o p s i e F o c u s 
 
 A   s c r i p t   t o   l a u n c h   O m n i F o c u s   a n d   a c t i v i a t e   t h e   Q u i c k   E n t r y   P a n e l .   
 
 B y   M a r k   P a r r y 
 J a n u a r y   2 2 n d ,   2 0 1 7 
 
 D e p e n d a c i e s 
 	 1 )   K e y b o a r d   M a e s t r o   -   N o t   r e a l l y   a   d e p e n d a n c y   b u t   a n   e a s y   w a y   t o   b i n d   t h i s   s c r i p t   t o   t h e   s a m e   k e y b o a r d   s h o r t c u t   a s   t h a t   w h i c h   i s   m a p p e d   i n   O m n i F o c u s .   
 
 H o w   i t   w o r k s 
 	 N o t e )   W h e n   O m n i F o c u s   i s   n o t   r u n n i n g ,   i t   i s n ' t   c a t c h i n g   t h e   t h e   k e y b o a r d   s h o r t c u t   i n   i t s   p r e f e r e n c e s   ( b e c a u s e   i t s   n o t   r u n n i n g ) .   
 	 1 )   C r e a t e   a   g l o b a l   k e y b o a r d   m a c r o   i n   a   t o o l   l i k e   K e y b o a r d   M a e s t r o .   
 	 	 - )   M a k e   s u r e   t h a t   t h e   k e y b o a r d   s h o r t c u t   d e f i n e d   i n   K e y b o a r d   M a e s t r o   m a t c h e s   t h a t   w h i c h   i s   d e f i n e d   i n   O m n i F o c u s 
 	 2 )   W i t h   O m n i F o c u s   n o t   r u n n i n g   t y p e   t h e   k e y b o a r d   s h o r t c u t 
 	 3 )   A p p l e s c r i p t   w i l l   c h e c k   t o   s e e   i f   O m n i F o c u s   i s   r u n n i n g 
 	 	 I f   r u n n i n g )   T h e   s c r i p t   w i l l   s i m p l y   t e r m i n a t e 
 	 	 I f   n o t   r u n n i n g )   T h e   s c r i p t   w i l l   s t a r t   O m n i F o c u s   a n d   t h e n   t e l l   i t   t o   d i s p l a y   t h e   Q u i c k   E n t r y   w i n d o w 
   
  
 l     ��  ��    8 2 hattip http://shawnblanc.net/2011/06/oopsiefocus/     �   d   h a t t i p   h t t p : / / s h a w n b l a n c . n e t / 2 0 1 1 / 0 6 / o o p s i e f o c u s /      l     ��������  ��  ��        l      ��  ��    � �
	Handler: LaunchOmniFocus
	Since: v1.0
	Type: Utility
	Description:
		This launches OmniFocus if it is not already running
	Returns:
		Boolean - True if we had to launch OmniFocus
	Parameters:
		None
     �  � 
 	 H a n d l e r :   L a u n c h O m n i F o c u s 
 	 S i n c e :   v 1 . 0 
 	 T y p e :   U t i l i t y 
 	 D e s c r i p t i o n : 
 	 	 T h i s   l a u n c h e s   O m n i F o c u s   i f   i t   i s   n o t   a l r e a d y   r u n n i n g 
 	 R e t u r n s : 
 	 	 B o o l e a n   -   T r u e   i f   w e   h a d   t o   l a u n c h   O m n i F o c u s 
 	 P a r a m e t e r s : 
 	 	 N o n e 
      i         I      �������� "0 launchomnifocus LaunchOmniFocus��  ��    k     !       r         m     ��
�� boovfals  o      ���� 0 
returnthis 
returnThis       Z     ! "���� ! >   	 # $ # n     % & % 1    ��
�� 
prun & m     ' '�                                                                                  OFOC  alis    V  Internal HD                Ԧ��H+     SOmniFocus.app                                                   	~�ԑ�        ����  	                Applications    ԧJS      ԑ�f       S  'Internal HD:Applications: OmniFocus.app     O m n i F o c u s . a p p    I n t e r n a l   H D  Applications/OmniFocus.app  / ��   $ m    ��
�� boovtrue " k     ( (  ) * ) O     + , + I   ������
�� .miscactvnull��� ��� null��  ��   , m     - -�                                                                                  OFOC  alis    V  Internal HD                Ԧ��H+     SOmniFocus.app                                                   	~�ԑ�        ����  	                Applications    ԧJS      ԑ�f       S  'Internal HD:Applications: OmniFocus.app     O m n i F o c u s . a p p    I n t e r n a l   H D  Applications/OmniFocus.app  / ��   *  .�� . r     / 0 / m    ��
�� boovtrue 0 o      ���� 0 
returnthis 
returnThis��  ��  ��      1�� 1 L    ! 2 2 o     ���� 0 
returnthis 
returnThis��     3 4 3 l     ��������  ��  ��   4  5 6 5 l      �� 7 8��   7 � �
	Handler: OpenQuickEntry
	Since: v1.0
	Type: Core Logic
	Description:
		This handler tells OmniFocus to open the quick entry window
	Returns:
		Nothing
	Parameters:
		None
    8 � 9 9Z 
 	 H a n d l e r :   O p e n Q u i c k E n t r y 
 	 S i n c e :   v 1 . 0 
 	 T y p e :   C o r e   L o g i c 
 	 D e s c r i p t i o n : 
 	 	 T h i s   h a n d l e r   t e l l s   O m n i F o c u s   t o   o p e n   t h e   q u i c k   e n t r y   w i n d o w 
 	 R e t u r n s : 
 	 	 N o t h i n g 
 	 P a r a m e t e r s : 
 	 	 N o n e 
 6  : ; : i     < = < I      ��������  0 openquickentry OpenQuickEntry��  ��   = k     & > >  ? @ ? q       A A ������ 0 newtask newTask��   @  B C B O     $ D E D O    # F G F k   
 " H H  I J I I  
 ������
�� .aevtodocnull  �    alis��  ��   J  K L K I   ������
�� .miscactvnull��� ��� null��  ��   L  M�� M O    " N O N I   !�� P Q
�� .prcskcodnull���     **** P m    ���� $ Q �� R��
�� 
faal R m    ��
�� eMdsKsft��   O m     S S�                                                                                  sevs  alis    �  Internal HD                Ԧ��H+     4System Events.app                                               ������        ����  	                CoreServices    ԧJS      ��#(       4   3   2  <Internal HD:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p    I n t e r n a l   H D  -System/Library/CoreServices/System Events.app   / ��  ��   G 1    ��
�� 
FCQE E m      T T�                                                                                  OFOC  alis    V  Internal HD                Ԧ��H+     SOmniFocus.app                                                   	~�ԑ�        ����  	                Applications    ԧJS      ԑ�f       S  'Internal HD:Applications: OmniFocus.app     O m n i F o c u s . a p p    I n t e r n a l   H D  Applications/OmniFocus.app  / ��   C  U�� U l  % %��������  ��  ��  ��   ;  V W V l     ��������  ��  ��   W  X Y X l      �� Z [��   Z � �
	Handler: run
	Since: v1.0
	Type: Core Logic
	Description:
		The �main method� of the application.
	Returns:
		None
	Parameters:
		None
    [ � \ \ 
 	 H a n d l e r :   r u n 
 	 S i n c e :   v 1 . 0 
 	 T y p e :   C o r e   L o g i c 
 	 D e s c r i p t i o n : 
 	 	 T h e    m a i n   m e t h o d    o f   t h e   a p p l i c a t i o n . 
 	 R e t u r n s : 
 	 	 N o n e 
 	 P a r a m e t e r s : 
 	 	 N o n e 
 Y  ] ^ ] i     _ ` _ I     �� a��
�� .aevtoappnull  �   � **** a J      ����  ��   ` Z      b c���� b =     d e d I     �������� "0 launchomnifocus LaunchOmniFocus��  ��   e m    ��
�� boovtrue c I   
 ��������  0 openquickentry OpenQuickEntry��  ��  ��  ��   ^  f g f l     ��������  ��  ��   g  h�� h l     ��������  ��  ��  ��       �� i j k l��   i �������� "0 launchomnifocus LaunchOmniFocus��  0 openquickentry OpenQuickEntry
�� .aevtoappnull  �   � **** j �� ���� m n���� "0 launchomnifocus LaunchOmniFocus��  ��   m ���� 0 
returnthis 
returnThis n  '����
�� 
prun
�� .miscactvnull��� ��� null�� "fE�O��,e � *j UOeE�Y hO� k �� =���� o p����  0 openquickentry OpenQuickEntry��  ��   o ���� 0 newtask newTask p 	 T������ S��������
�� 
FCQE
�� .aevtodocnull  �    alis
�� .miscactvnull��� ��� null�� $
�� 
faal
�� eMdsKsft
�� .prcskcodnull���     ****�� '� !*�, *j O*j O� 	���l UUUOP l �� `���� q r��
�� .aevtoappnull  �   � ****��  ��   q   r ������ "0 launchomnifocus LaunchOmniFocus��  0 openquickentry OpenQuickEntry�� *j+  e  
*j+ Y hascr  ��ޭ