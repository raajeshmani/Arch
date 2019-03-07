**Ethernet Cable Not Detecting**

Its a bug [https://bugzilla.redhat.com/show_bug.cgi?id=990139]

Note: I don't need to reset my interface, I don't need to restart NetworkMangager via

systemctl restart NetworkManager

I only need to restart the interface
sudo ifconfig em1 down
sudo ifconfig em1 up
