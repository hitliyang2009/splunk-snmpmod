#!/bin/bash 

for x in SNMPv2-SMI SNMPv2-TC IANAifType-MIB SNMPv2-CONF RFC1155-SMI RFC-1212 SNMPv2-MIB RFC1213-MIB IF-MIB RFC1271-MIB BRIDGE-MIB TOKEN-RING-RMON-MIB RMON-MIB RMON2-MIB SNMP-FRAMEWORK-MIB P-BRIDGE-MIB CISCO-SMI Q-BRIDGE-MIB CISCO-QOS-PIB-MIB RFC-1215 SNMPv2-TC-v1 CISCO-RTTMON-TC-MIB CISCO-ETHER-CFM-MIB CISCO-RTTMON-MIB ; do
    echo ============== Working on $x  ==============
    build-pysnmp-mib $x.my > $x.py
    echo ============== Done ==============

done