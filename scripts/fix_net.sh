#!/bin/bash

sed -i '/^HWADDR=.*$/d' /etc/sysconfig/network-scripts/ifcfg-en*
sed -i '/^UUID=.*$/d' /etc/sysconfig/network-scripts/ifcfg-en*

cat > /etc/udev/rules.d/70-persistent-net.rules  <<EOL
# ignore VMware virtual interfaces
ATTR{address}=="00:0c:29:*", GOTO="persistent_net_generator_end"
ATTR{address}=="00:50:56:*", GOTO="persistent_net_generator_end"
EOL
