FasdUAS 1.101.10   ��   ��    l    S ��  O     S    k    R     	  l   �� 
��   
 1 + Make a list of all the notification types     	     l   �� ��    ' ! that this script will ever send:         r    
    l 	   ��  J           m        Test Notification      ��  m        Another Test Notification   ��  ��    l      ��  o      ���� ,0 allnotificationslist allNotificationsList��        l   ������  ��        l   �� ��    ( " Make a list of the notifications           l   �� !��   ! - ' that will be enabled by default.             " # " l   �� $��   $ 9 3 Those not enabled by default can be enabled later     #  % & % l   �� '��   ' 7 1 in the 'Applications' tab of the growl prefpane.    &  ( ) ( r     * + * l 	   ,�� , J     - -  .�� . m     / /  Test Notification   ��  ��   + l      0�� 0 o      ���� 40 enablednotificationslist enabledNotificationsList��   )  1 2 1 l   ������  ��   2  3 4 3 l   �� 5��   5 &   Register our script with growl.    4  6 7 6 l   �� 8��   8 7 1 You can optionally (as here) set a default icon     7  9 : 9 l   �� ;��   ; ' ! for this script's notifications.    :  < = < I   ���� >
�� .registernull��� ��� null��   > �� ? @
�� 
appl ? l 	   A�� A m     B B  Growl AppleScript Sample   ��   @ �� C D
�� 
anot C l 
   E�� E o    ���� ,0 allnotificationslist allNotificationsList��   D �� F G
�� 
dnot F l 
   H�� H o    ���� 40 enablednotificationslist enabledNotificationsList��   G �� I��
�� 
iapp I m     J J  Script Editor   ��   =  K L K l   ������  ��   L  M N M l   �� O��   O #        Send a Notification...    N  P Q P I   6���� R
�� .notifygrnull��� ��� null��   R �� S T
�� 
name S l 	 ! " U�� U m   ! " V V  Test Notification   ��   T �� W X
�� 
titl W l 	 % ( Y�� Y m   % ( Z Z  Test Notification   ��   X �� [ \
�� 
desc [ l 	 + . ]�� ] m   + . ^ ^ . (This is a test AppleScript notification.   ��   \ �� _��
�� 
appl _ m   / 2 ` `  Growl AppleScript Sample   ��   Q  a b a l  7 7������  ��   b  c d c I  7 P���� e
�� .notifygrnull��� ��� null��   e �� f g
�� 
name f l 	 9 < h�� h m   9 < i i  Another Test Notification   ��   g �� j k
�� 
titl j l 	 ? B l�� l m   ? B m m # Another Test Notification :)    ��   k �� n o
�� 
desc n l 	 E H p�� p m   E H q q 4 .Alas � you won't see me until you enable me...   ��   o �� r��
�� 
appl r m   I L s s  Growl AppleScript Sample   ��   d  t�� t l  Q Q������  ��  ��    m      u uLnull     ߀�� L�NGrowlHelperApp.appL��� 7�������� �p   )       �(�K� ��� �GRRR   alis    �  WideBoy                    ��.1H+   M�GrowlHelperApp.app                                              M��!�,        ����  	                	Resources     ��.1      �!�,     M� M� M� +m �� ��  |  bWideBoy:Users:diggory:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app  &  G r o w l H e l p e r A p p . a p p    W i d e B o y  ZUsers/diggory/Library/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  /    ��  ��       �� v w x y����   v ��������
�� .aevtoappnull  �   � ****�� ,0 allnotificationslist allNotificationsList�� 40 enablednotificationslist enabledNotificationsList��   w �� z���� { |��
�� .aevtoappnull  �   � **** z k     S } }  ����  ��  ��   {   |  u  �� /���� B������ J������ V�� Z�� ^ `�� i m q s�� ,0 allnotificationslist allNotificationsList�� 40 enablednotificationslist enabledNotificationsList
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
�� .notifygrnull��� ��� null�� T� P��lvE�O�kvE�O*��������� O*��a a a a �a � O*�a a a a a �a � OPU x �� ~��  ~     y �� ��     /��   ascr  ��ޭ