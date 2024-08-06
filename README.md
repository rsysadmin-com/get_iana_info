# get_iana_info.sh

This is a very simple and stupid script to fetch the latest list of ports and services from IANA and search for what we want.

## why?
Simple; not everyting is available from `/etc/services` so I decided to write this in 5 min :-)

## usage
You can search for either port numbers (e.g.: `80`, `443`, `9001`...) or service handles (e.g.: `https`, `ssh`...)

Run the script without arguments to see its usage info:

```
./get_iana_info.sh       
get_iana_info.sh <port||service>
e.g.: get_iana_info.sh 443
      get_iana_info.sh https
```

As of this moment, the script is a bit stupid and will just spill all the information it finds matching your search criteria.

For example:

```
./get_iana_info.sh ssh 
ssh                 22         tcp    The Secure Shell (SSH)                                                                                                                                                 [RFC4251]                                                                                    Defined TXT keys: u=<username> p=<password>
ssh                 22         udp    The Secure Shell (SSH)                                                                                                                                                 [RFC4251]                                                                                    Defined TXT keys: u=<username> p=<password>
ssh                 22        sctp    SSH                          [Randall_Stewart]                                     [Randall_Stewart]                                                      2022-02-07   [RFC9260]                                                                                    Defined TXT keys: u=<username> p=<password>
sshell              614        tcp    SSLshell                     [Simon_J_Gerraty]                                     [Simon_J_Gerraty]
sshell              614        udp    SSLshell                     [Simon_J_Gerraty]                                     [Simon_J_Gerraty]
netconf-ssh         830        tcp    NETCONF over SSH                                                                                                                                                       [RFC6242]
netconf-ssh         830        udp    NETCONF over SSH                                                                                                                                                       [RFC6242]
enpp               2968        tcp    ENPP                         [Kazuhito_Gassho]                                     [Kazuhito_Gassho]
enpp               2968        udp    ENPP                         [Kazuhito_Gassho]                                     [Kazuhito_Gassho]
sdo-ssh            3897        tcp    Simple Distributed Objects   [Alexander_Philippou]                                 [Alexander_Philippou]                                     2003-10
sdo-ssh            3897        udp    Simple Distributed Objects   [Alexander_Philippou]                                 [Alexander_Philippou]                                     2003-10
netconf-ch-ssh     4334        tcp    NETCONF Call Home (SSH)      [IESG]                                                [IETF_Chair]                                              2016-01-12                [RFC8071]
snmpssh            5161        tcp    SNMP over SSH Transport                                                                                                                                                [RFC5592]
snmpssh-trap       5162        tcp    SNMP Notification over SSH                                                                                                                                             [RFC5592]                                                                       Unauthorized
tl1-ssh            6252        tcp    TL1 over SSH                 [Jim_Humphreys]                                       [Jim_Humphreys]                                           2008-01-25
tl1-ssh            6252        udp    TL1 over SSH                 [Jim_Humphreys]                                       [Jim_Humphreys]                                           2008-01-25
ssh-mgmt           17235       tcp    SSH Tectia Manager           [Ville_Laurikari]                                     [Ville_Laurikari]                                         2005-08
ssh-mgmt           17235       udp    SSH Tectia Manager           [Ville_Laurikari]                                     [Ville_Laurikari]                                         2005-08
sftp-ssh                              Secure File Transfer         [Bryan_Cole]                                          [Bryan_Cole]                                                                                                                                                                     Defined TXT keys: u=<username> p=<password> path=<path>
                                      Window Shifter server                                                                                                                                                                                                                                               ssh_tunnel Whether an SSH tunnel must be used (required) iface
ssh                            tcp    SSH Remote Login Protocol    [Tatu_Ylonen]                                         [Tatu_Ylonen]                                                                                                                                                                    Defined TXT keys: u=<username> p=<password>
[Kazuhito_Gassho]                                         Kazuhito Gassho                                     mailto:Gassho.Kasuhito&exc.epson.co.jp
[Ville_Laurikari]                                         Ville Laurikari                                     mailto:vlaurika&ssh.com                                       2005-08
```

## bugs, improvements, etc
Please, let me know if you find any issues when using this script.

Ideally, create a fork and raise a PR with your improvements :-) 


## disclaimer
This script is provided on an "AS IS" basis.

The author is not to be held resposible for any damage that its use or misuse may cause.
