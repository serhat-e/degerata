Örnek Kullanımı (Apache 'nin standart dinleme portu olan 80 değerini 81 olarak değiştirmek)

serhat@eyisekerciler:~$ sudo ./degerata.sh
[sudo] password for serhat: 
Dosya Adını ve Yolunu girin: (Örneğin:/etc/var/test.conf)
/etc/apache2/ports.conf
Dosya Adı: /etc/apache2/ports.conf
Dosyada değiştirilecek eski değeri tam olarak girin: (Örneğin:timeout_limit=90)
Listen 80
Değişecek olan değer: Listen 80
Yeni değeri tam olarak girin: (Örneğin:timeout_limit=120)
Listen 81
Orjinal dosyanın yedeği alındı...
Değişiklik yapıldı: Dosya içeriğini okumak istermisiniz? [e/h]
e
# If you just change the port or add more ports here, you will likely also
# have to change the VirtualHost statement in
# /etc/apache2/sites-enabled/000-default
# This is also true if you have upgraded from before 2.2.9-3 (i.e. from
# Debian etch). See /usr/share/doc/apache2.2-common/NEWS.Debian.gz and
# README.Debian.gz                                                                                        
                                                                                                          
NameVirtualHost *:80                                                                                      
Listen 81                                                                                                 
                                                                                                          
<IfModule mod_ssl.c>                                                                                      
    # If you add NameVirtualHost *:443 here, you will also have to change                                 
    # the VirtualHost statement in /etc/apache2/sites-available/default-ssl                               
    # to <VirtualHost *:443>                                                                              
    # Server Name Indication for SSL named virtual hosts is currently not                                 
    # supported by MSIE on Windows XP.                                                                    
    Listen 443                                                                                            
</IfModule>                                                                                               
                                                                                                          
<IfModule mod_gnutls.c>
    Listen 443
</IfModule>

serhat@eyisekerciler:~$ 

