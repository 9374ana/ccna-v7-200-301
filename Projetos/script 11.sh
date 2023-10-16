/11-ConfguraçãoInterfaceSerial.txt


!Acessando o modo exec user
enable

	!Acessar modo de configuração global
	configure terminal
		
	!Configuração da interface Serial0/0/0
	interface serial 0/0/0
	
		!Descrição da Interface
		!OBSERVAÇÃO IMPORTANTE: veja o arquivo 00-DocumentacaoDaRede.txt
		description Interface Grupo-2 para Grupo-3
		
		!Configuração do endereçamento IPv4
		!Verificar a tabela de endereçamento IP dos Grupos
		!Sempre vai ser o Endereço IPv4 IMPAR na Interface Serial 0/0/0
		ip address 192.168.1.5 255.255.255.252 -----------------------------------------------------------------------------------------------------------------------
		
		!Configurando o Clock Rate, Velocidade do Link
		clock rate 64000
		
		!Configurando a Largura de Banda
		bandwidth 64
		
		!Habilitando a interface
		no shutdown
		
		!Saindo das configurações da interface
		exit
		
	!Configuração da interface Serial0/0/1
	interface serial 0/0/1
	
		!Descrição da Interface
		!OBSERVAÇÃO IMPORTANTE: veja o arquivo 00-DocumentacaoDaRede.txt
		description Interface Grupo-1 para Grupo 2
		
		!Configuração do endereçamento IP
		!Verificar a tabela de endereçamento IP dos Grupos
		!Sempre vai ser o Endereço IPv4 PAR na Interface Serial 0/0/1
		ip address 192.168.1.2 255.255.255.252
		
		!Configurando a Largura de Banda
		bandwidth 64
		
		!Habilitando a interface
		no shutdown
		
		!Saindo das configurações da interface
		end

	!Salvando as informações
	copy running-config startup-config
	
!Comandos para visualização das informações:
show running-config
show ip interface brief
show ip route
ping 192.168.1.??? (serial 0/0/0)
ping 192.168.1.??? (serial 0/0/1)