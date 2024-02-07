#!/bin/bash

# Configuració
ldap_server="ldap://your_ldap_server"
ldap_base_dn="dc=example,dc=com"
ldap_user="cn=admin,dc=example,dc=com"
ldap_password="your_password"

# Fitxer on es guardarà la informació
fitxer_dns="dns_usuaris.txt"

# Executa la comanda ldapsearch per obtenir els DNs dels usuaris
ldapsearch -x -H "$ldap_server" -b "$ldap_base_dn" -D "$ldap_user" -w "$ldap_password" -LLL "(objectClass=inetOrgPerson)" dn | grep "dn: " | cut -d' ' -f2 > "$fitxer_dns"

# Comprova si la comanda s'ha executat amb èxit
if [ $? -eq 0 ]; then
    echo "Distinguished Names (DNs) dels usuaris han estat guardats en $fitxer_dns."
else
    echo "Error en obtenir Distinguished Names (DNs) dels usuaris."
fi
