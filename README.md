���÷�һ��
====

	��winscp��ѹȫ���ļ���rootĿ¼

	ִ��chmod +x run.sh

	ִ��
	<code>./run.sh ����˺� ������� ���� mac��ַ</code>
	��mac��ַ������ɲ��䣬���忴����ѧУ�Ƿ��mac��
	
	����
	1.��mac
		./run.sh 12345678 abcba eth0.2 "AA:BB:CC:DD:EE:FF:GG"
	2.����mac
		./run.sh 12345678 abcba eth0.2


�÷�����
====
	����k2p,k2
	��winscp��ѹȫ���ļ���rootĿ¼
	ִ��chmod +x njit-client-mips
	ִ��./njit-client-mips �˺� ���� ����


##���������
1.�������Server success�����ۣ���ô��ϲ����ܳɹ��ˣ�����һ�����ϸ�����֪��
2.�������mac ���룬ȥǰ��192.168.2.1�����忴���·��������wan�ڵ�mac��ַ�����û�ĸģ��������·���

	ifconfig ���� down
	ifconfig ���� hw ether mac��ַ
	ifconfig ���� up
##mac��ַ�鿴������window��win+r ����cmd�������̨������ipconfig /all
�ҵ���̫����Ӧ�������ַ
����ȥwindow��inode�ͻ����ҡ�������>����-->INCs--> Ethernet ��Ӧ�� Mac address




##��ô��������
����ipconfig,���һ�� ��eth��һ�����·����wan�ڵ�����
####��������ipconfig�������

<code>
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
</code>
��ô�������eth0.2���ܾ��������̫������
