Fork from liuqun

���÷�һ��
=====

	��winscp��ѹȫ���ļ���rootĿ¼

	ִ��<code>chmod +x run.sh<\code>

	ִ��
  <code>./run.sh ����˺� ������� ���� mac��ַ</code>
	��mac��ַ������ɲ��䣬���忴����ѧУ�Ƿ��mac��
	
	����
	1.��mac
		<code>./run.sh 12345678 abcba eth0.2 "AA:BB:CC:DD:EE:FF:GG"</code>
	2.����mac
		<code>./run.sh 12345678 abcba eth0.2</code>


�÷�����
====
	����k2p,k2
	��winscp��ѹȫ���ļ���rootĿ¼<\code>
	ִ��chmod +x njit-client-mips<\code>
	ִ��<code>./njit-client-mips �˺� ���� ����<\code>


##���������

1.�������Server success�����ۣ���ô��ϲ����ܳɹ��ˣ�����һ�����ϸ�����֪��
2.�������mac ���룬ȥǰ��192.168.2.1�����忴���·��������wan�ڵ�mac��ַ�����û�ĸģ��������·���

	<code>ifconfig ���� down<\code>
	<code>ifconfig ���� hw ether mac��ַ<\code>
	<code>ifconfig ���� up<\code>
mac��ַ�鿴������window��win+r ����cmd�������̨������ipconfig /all
�ҵ���̫����Ӧ�������ַ
����ȥwindow��inode�ͻ����ҡ�������>����-->INCs--> Ethernet ��Ӧ�� Mac address




##��ô������?
����ipconfig,���һ�� ��eth��һ�����·����wan�ڵ�����
��������ipconfig�������
lo :
	blalbalk

eth0:
	blalbala
eth1
	balabala

eth0.2
	blalbala
ens
	blabala

��ô�������eth0.2���ܾ��������̫������
