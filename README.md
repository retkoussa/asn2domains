# 🌐 asn2ip

Simple tool for resolving domain names from an ASN.

## Installation
Before running the script, ensure go, prips,  and hakrevdns are installed on your system.

```sh
go install github.com/hakluke/hakrevdns@latest
```

Then clone the repository and run the script.
```sh
git clone https://github.com/retkoussa/asn2domains.git
cd asn2domains
bash asn2domains.sh
```

If you want to run it from anywhere on your linux system.

```sh
cp ./asn2domains/asn2domains.sh /usr/local/bin/asn2domains
chmod +x /usr/local/bin/asn2domains
```

## Usage
All you have to do is feed the script an ASN number. It will automatically output the results to a file prefixed with the ASN number.

```sh
(bb㉿kali)-[~/gists]~ asn2domains AS12812

gw-faculty.aub.edu.lb
sclerosis.aub.edu.lb
library.aub.edu.lb
fafsweb.aub.edu.lb
library2.aub.edu.lb
linked.aub.edu.lb
VDK-DC.win2k.aub.edu.lb
<SNIP>
```

The output file
```sh
(bb㉿kali)-[~/gists]~ cat AS12812_domains.txt
gw-faculty.aub.edu.lb
sclerosis.aub.edu.lb
library.aub.edu.lb
fafsweb.aub.edu.lb
library2.aub.edu.lb
linked.aub.edu.lb
VDK-DC.win2k.aub.edu.lb
<SNIP>
```


