COMANDO........................
enable
disable

configuração de data e hora do switch
clock set 14:18:00 14 august 2023
configure terminal
    hostname sw - 12-2960-1 
    service password-encryption
    service timestamps log datetime msec
    no ip domain- lookup
    banner motd #AVISO; acesso autorizado somente para funcionarios#
    enable secret  123@senac
    end
    copy running-config startup-config
---------------------------------------------------------------
enable
    configure terminal
       username senac secret 123@senac
       line console 0
          login local
          password 123@senac
          logging synchronous
          exec-timeout 5 30
          end
          write
-----------------------------------------------------------------    
enable
   configure terminal
   line vty 0 4
   login local
   password 123@senac
   logging synchronous
   exec-timeout 5 30
   transport input all
   end
   write
---------------------------------------------
O que é Ethernet / Maior velocidade é 10Mbps
o que é FastEthernet/ 100Mbps
GigabitEthernet/ 1000Mbps
-----------------------------------------------------
enable
Show running-config
configure terminal
ip default-gateway 192.168.1.254
interface vlan 1
description interface de SVI
ip address 192.168.1.250 255.255.255.0
no shutdown
end
write

 show ip interface brief

 -----------------------------------------------
 enable
 configure terminal
 ip domain-name senac.intra
 crypto key generate rsa general-keys modulus 1024
 ip ssh version 2
 ip ssh time-out 60 
 ip ssh authentication-retries 2
 line vty 0 4
 transport input ssh
 end
 write
 Show running-config