FasdUAS 1.101.10   ��   ��    k             i         I      �� 	����  0 findandreplace findAndReplace 	  
  
 o      ���� 0 subject        o      ���� 0 find     ��  o      ���� 0 replace  ��  ��    k     &       r         n         1    ��
�� 
txdl  1     ��
�� 
ascr  o      ���� 0 prevtids prevTIDs      r        o    ���� 0 find    n          1    
��
�� 
txdl  1    ��
�� 
ascr      r        n       !   2   ��
�� 
citm ! o    ���� 0 subject    o      ���� 0 subject     " # " l   ��������  ��  ��   #  $ % $ r     & ' & o    ���� 0 replace   ' n       ( ) ( 1    ��
�� 
txdl ) 1    ��
�� 
ascr %  * + * r     , - , b     . / . m     0 0 � 1 1   / o    ���� 0 subject   - o      ���� 0 subject   +  2 3 2 r    # 4 5 4 o    ���� 0 prevtids prevTIDs 5 n       6 7 6 1     "��
�� 
txdl 7 1     ��
�� 
ascr 3  8 9 8 l  $ $��������  ��  ��   9  :�� : L   $ & ; ; o   $ %���� 0 subject  ��     < = < l     ��������  ��  ��   =  > ? > l     @���� @ r      A B A m      C C � D D   B o      ���� 0 mailmessage mailMessage��  ��   ?  E F E l     ��������  ��  ��   F  G H G l   I���� I O    J K J X    L�� M L k    � N N  O P O l   �� Q R��   Q C =- do something with each inbox to do using inboxToDo variable    R � S S z -   d o   s o m e t h i n g   w i t h   e a c h   i n b o x   t o   d o   u s i n g   i n b o x T o D o   v a r i a b l e P  T U T l   �� V W��   V   name, due date, notes    W � X X ,   n a m e ,   d u e   d a t e ,   n o t e s U  Y Z Y r    * [ \ [ b    ( ] ^ ] b    & _ ` _ b      a b a m     c c � d d 
 T A S K : b 1    ��
�� 
spac ` l    % e���� e c     % f g f n     # h i h 1   ! #��
�� 
pnam i o     !���� 0 todo   g m   # $��
�� 
TEXT��  ��   ^ o   & '��
�� 
ret  \ o      ���� 0 messagedata MessageData Z  j k j l  + +��������  ��  ��   k  l m l Z   + T n o�� p n A + 4 q r q l  + . s���� s n   + . t u t 1   , .��
�� 
dued u o   + ,���� 0 todo  ��  ��   r l  . 3 v���� v I  . 3������
�� .misccurdldt    ��� null��  ��  ��  ��   o r   7 D w x w b   7 B y z y b   7 @ { | { b   7 < } ~ } o   7 8���� 0 messagedata MessageData ~ 1   8 ;��
�� 
tab  | m   < ?   � � �  O V E R D U E : z 1   @ A��
�� 
spac x o      ���� 0 messagedata MessageData��   p r   G T � � � b   G R � � � b   G P � � � b   G L � � � o   G H���� 0 messagedata MessageData � 1   H K��
�� 
tab  � m   L O � � � � �  D U E : � 1   P Q��
�� 
spac � o      ���� 0 messagedata MessageData m  � � � r   U ` � � � b   U ^ � � � b   U \ � � � o   U V���� 0 messagedata MessageData � l  V [ ����� � c   V [ � � � n   V Y � � � 1   W Y��
�� 
dued � o   V W���� 0 todo   � m   Y Z��
�� 
TEXT��  ��   � o   \ ]��
�� 
ret  � o      ���� 0 messagedata MessageData �  � � � l  a a��������  ��  ��   �  � � � Z   a � � ����� � >  a j � � � l  a f ����� � n   a f � � � 1   b f��
�� 
note � o   a b���� 0 todo  ��  ��   � m   f i��
�� 
msng � k   m � � �  � � � r   m x � � � l  m t ����� � c   m t � � � n   m r � � � 1   n r��
�� 
note � o   m n���� 0 todo   � m   r s��
�� 
TEXT��  ��   � o      ���� 0 	todonotes 	todoNotes �  � � � r   y � � � � n  y � � � � I   z ��� �����  0 findandreplace findAndReplace �  � � � o   z }���� 0 	todonotes 	todoNotes �  � � � l  } � ����� � I  } ��� ���
�� .sysontocTEXT       shor � m   } ����� 
��  ��  ��   �  ��� � m   � � � � � � �  ��  ��   �  f   y z � o      ���� 0 	todonotes 	todoNotes �  � � � r   � � � � � n  � � � � � I   � ��� �����  0 findandreplace findAndReplace �  � � � o   � ����� 0 	todonotes 	todoNotes �  � � � l  � � ����� � I  � ��� ���
�� .sysontocTEXT       shor � m   � ����� ��  ��  ��   �  ��� � m   � � � � � � �   ��  ��   �  f   � � � o      ���� 0 	todonotes 	todoNotes �  � � � r   � � � � � n  � � � � � I   � ��� �����  0 findandreplace findAndReplace �  � � � o   � ����� 0 	todonotes 	todoNotes �  � � � 1   � ���
�� 
tab  �  ��� � m   � � � � � � �     ��  ��   �  f   � � � o      ���� 0 	todonotes 	todoNotes �  � � � l  � ���������  ��  ��   �  � � � l  � �� � ��   � 9 3 also get rid of the extraneous XML bits and pieces    � � � � f   a l s o   g e t   r i d   o f   t h e   e x t r a n e o u s   X M L   b i t s   a n d   p i e c e s �  � � � r   � � � � � n  � � � � � I   � ��~ ��}�~  0 findandreplace findAndReplace �  � � � o   � ��|�| 0 	todonotes 	todoNotes �  � � � m   � � � � � � � 6 < n o t e   x m l : s p a c e = " p r e s e r v e " > �  ��{ � m   � � � � � � �  �{  �}   �  f   � � � o      �z�z 0 	todonotes 	todoNotes �  � � � r   � � � � � n  � � � � � I   � ��y ��x�y  0 findandreplace findAndReplace �  � � � o   � ��w�w 0 	todonotes 	todoNotes �  � � � m   � � � � � � �  < / n o t e > �  ��v � m   � �   �  �v  �x   �  f   � � � o      �u�u 0 	todonotes 	todoNotes � �t r   � � b   � � b   � � b   � �	
	 b   � � b   � � o   � ��s�s 0 messagedata MessageData 1   � ��r
�r 
tab  m   � � �  N O T E S :
 1   � ��q
�q 
spac o   � ��p�p 0 	todonotes 	todoNotes o   � ��o
�o 
ret  o      �n�n 0 messagedata MessageData�t  ��  ��   � �m r   � � b   � � b   � � o   � ��l�l 0 mailmessage mailMessage o   � ��k�k 0 messagedata MessageData o   � ��j
�j 
ret  o      �i�i 0 mailmessage mailMessage�m  �� 0 todo   M n     2   �h
�h 
tstk 4    �g
�g 
tsls m     � 
 T o d a y K m    �                                                                                  Thgs  alis    N  Macintosh HD               �x_pH+   ^dQ
Things.app                                                      },��{�E        ����  	                Applications    �xQ`      �{�5     ^dQ  %Macintosh HD:Applications: Things.app    
 T h i n g s . a p p    M a c i n t o s h   H D  Applications/Things.app   / ��  ��  ��   H  l     �f�e�d�f  �e  �d    !  l ^"�c�b" O  ^#$# k  ]%% &'& r  0()( I ,�a�`*
�a .corecrel****      � null�`  * �_+,
�_ 
kocl+ m  �^
�^ 
bcke, �]-�\
�] 
prdt- K  &.. �[/0
�[ 
subj/ m  11 �22  T o d a y ' s   T o D o s .0 �Z34
�Z 
ctnt3 o  �Y�Y 0 mailmessage mailMessage4 �X5�W
�X 
pvis5 m  !"�V
�V boovtrue�W  �\  ) o      �U�U 0 thenewmessage theNewMessage' 6�T6 O  1]787 k  7\99 :;: I 7V�S�R<
�S .corecrel****      � null�R  < �Q=>
�Q 
kocl= m  9<�P
�P 
trcp> �O?@
�O 
insh? n  ?EABA  ;  DEB 2 ?D�N
�N 
trcp@ �MC�L
�M 
prdtC K  HPDD �KE�J
�K 
raddE m  KNFF �GG . d a r t h . s a r c a s m @ g m a i l . c o m�J  �L  ; H�IH I W\�H�G�F
�H .emsgsendnull���     bcke�G  �F  �I  8 o  14�E�E 0 thenewmessage theNewMessage�T  $ m  	II�                                                                                  emal  alis    F  Macintosh HD               �x_pH+   ^dQMail.app                                                        `���-Ӓ        ����  	                Applications    �xQ`      �-ł     ^dQ  #Macintosh HD:Applications: Mail.app     M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��  �c  �b  ! JKJ l     �D�C�B�D  �C  �B  K L�AL l _�M�@�?M O  _�NON k  e�PP QRQ l ee�>ST�>  S Q K Make a list of all the notification types that this script will ever send:   T �UU �   M a k e   a   l i s t   o f   a l l   t h e   n o t i f i c a t i o n   t y p e s   t h a t   t h i s   s c r i p t   w i l l   e v e r   s e n d :R VWV r  enXYX l 	ejZ�=�<Z J  ej[[ \�;\ m  eh]] �^^   M a i l i n g   C o m p l e t e�;  �=  �<  Y l     _�:�9_ o      �8�8 ,0 allnotificationslist allNotificationsList�:  �9  W `a` l oo�7�6�5�7  �6  �5  a bcb l oo�4de�4  d N H Make a list of the notifications that will be enabled by default.         e �ff �   M a k e   a   l i s t   o f   t h e   n o t i f i c a t i o n s   t h a t   w i l l   b e   e n a b l e d   b y   d e f a u l t .            c ghg l oo�3ij�3  i i c Those not enabled by default can be enabled later in the 'Applications' tab of the growl prefpane.   j �kk �   T h o s e   n o t   e n a b l e d   b y   d e f a u l t   c a n   b e   e n a b l e d   l a t e r   i n   t h e   ' A p p l i c a t i o n s '   t a b   o f   t h e   g r o w l   p r e f p a n e .h lml r  oxnon l 	otp�2�1p J  otqq r�0r m  orss �tt   M a i l i n g   C o m p l e t e�0  �2  �1  o l     u�/�.u o      �-�- 40 enablednotificationslist enabledNotificationsList�/  �.  m vwv l yy�,�+�*�,  �+  �*  w xyx l yy�)z{�)  z &   Register our script with growl.   { �|| @   R e g i s t e r   o u r   s c r i p t   w i t h   g r o w l .y }~} l yy�(��(   W Q You can optionally (as here) set a default icon for this script's notifications.   � ��� �   Y o u   c a n   o p t i o n a l l y   ( a s   h e r e )   s e t   a   d e f a u l t   i c o n   f o r   t h i s   s c r i p t ' s   n o t i f i c a t i o n s .~ ��� I y��'�&�
�' .registernull��� ��� null�&  � �%��
�% 
appl� l 	}���$�#� m  }��� ��� , T h i n g s :   M a i l i n g   S c r i p t�$  �#  � �"��
�" 
anot� l 
����!� � o  ���� ,0 allnotificationslist allNotificationsList�!  �   � ���
� 
dnot� l 
������ o  ���� 40 enablednotificationslist enabledNotificationsList�  �  � ���
� 
iapp� m  ���� ��� $ A p p l e S c r i p t   E d i t o r�  � ��� l ������  �  �  � ��� l ������  � #        Send a Notification...   � ��� :               S e n d   a   N o t i f i c a t i o n . . .� ��� I �����
� .notifygrnull��� ��� null�  � ���
� 
name� l 	������ m  ���� ���   M a i l i n g   C o m p l e t e�  �  � ���
� 
titl� l 	������ m  ���� ���   M a i l i n g   C o m p l e t e�  �  � ���
� 
desc� l 	�����
� m  ���� ��� & M a i l   s e n d   c o m p l e t e .�  �
  � �	��
�	 
appl� m  ���� ��� , T h i n g s :   M a i l i n g   S c r i p t�  � ��� l ������  �  �  �  O m  _b���                                                                                  GRRR  alis    H  Macintosh HD               �x_pH+   ^dQ	Growl.app                                                       ��Mʥ�        ����  	                Applications    �xQ`      ʥ�      ^dQ  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��  �@  �?  �A       �����  � ���  0 findandreplace findAndReplace
� .aevtoappnull  �   � ****� �  ���������   0 findandreplace findAndReplace�� ����� �  �������� 0 subject  �� 0 find  �� 0 replace  ��  � ���������� 0 subject  �� 0 find  �� 0 replace  �� 0 prevtids prevTIDs� ������ 0
�� 
ascr
�� 
txdl
�� 
citm�� '��,E�O���,FO��-E�O���,FO�%E�O���,FO�� �����������
�� .aevtoappnull  �   � ****� k    ���  >��  G��  �� L����  ��  ��  � ���� 0 todo  � H C������������ c����������������  ����������� ����� � � � � � I������1������������������F���]��s������������������������������ 0 mailmessage mailMessage
�� 
tsls
�� 
tstk
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
spac
�� 
pnam
�� 
TEXT
�� 
ret �� 0 messagedata MessageData
�� 
dued
�� .misccurdldt    ��� null
�� 
tab 
�� 
note
�� 
msng�� 0 	todonotes 	todoNotes�� 

�� .sysontocTEXT       shor��  0 findandreplace findAndReplace�� 
�� 
bcke
�� 
prdt
�� 
subj
�� 
ctnt
�� 
pvis�� �� 
�� .corecrel****      � null�� 0 thenewmessage theNewMessage
�� 
trcp
�� 
insh
�� 
radd
�� .emsgsendnull���     bcke�� ,0 allnotificationslist allNotificationsList�� 40 enablednotificationslist enabledNotificationsList
�� 
appl
�� 
anot
�� 
dnot
�� 
iapp�� 
�� .registernull��� ��� null
�� 
name
�� 
titl
�� 
desc
�� .notifygrnull��� ��� null����E�O� � �*��/�-[��l kh  ��%��,�&%�%E�O��,*j  �_ %a %�%E�Y �_ %a %�%E�OΠ�,�&%�%E�O�a ,a  ��a ,�&E` O)_ a j a m+ E` O)_ a j a m+ E` O)_ _ a m+ E` O)_ a a m+ E` O)_ a  a !m+ E` O�_ %a "%�%_ %�%E�Y hO��%�%E�[OY�UOa # S*�a $a %a &a 'a (�a )ea *a + ,E` -O_ - '*�a .a /*a .-6a %a 0a 1la * ,O*j 2UUOa 3 Wa 4kvE` 5Oa 6kvE` 7O*a 8a 9a :_ 5a ;_ 7a <a =a > ?O*a @a Aa Ba Ca Da Ea 8a Fa > GOPUascr  ��ޭ