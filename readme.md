# S2I
## Introducció
Aquest és un exemple de com fer un scriprt de instal·lació utilitzant un repositori de fitxer de configuració allotjats al github.
En aquest projecte trobam diferents carpetes les quals es corresponen a diferents sistemes o serveis.
A cada una de les carpetes es es guarden els scripts de instal·lació i els fitxers de configuració a la carpeta etc.

## Prerequisist
Abans de començar a utilitzar els scrips per poder baixar els scripts i carpetes de configuració s'ha d'instal·lar el curl. l'avantatges d'utilitzar el 'curl'  es la possibilitat d'accedir als recursos privats.
```
apt install curl
```

## Utilització
Abans d'utilitzar s'ha de descarregar l'script del github, desprès s'ha de donar permisos d'execució a l'script i després executar l'script.

```
curl --remote-name -L https://raw.githubusercontent.com/josemmol/S2I/main/CON-UBS-22-DHCP/dhcpd_curl.sh
chmod 755 dhcpd_curl.sh./dh	
./dhcpd_curl.sh 
```

