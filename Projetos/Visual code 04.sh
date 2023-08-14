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
