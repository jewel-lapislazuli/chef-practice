default["arch"] = node["kernel"]["machine"] =~ /x86_64/ ? "x86_64" : "i586"

default["java"]["i586"]["modname"] = "jre-7u17-linux-i586.tar.gz"
default["java"]["x86_64"]["modname"] = "jre-7u17-linux-x64.tar.gz"

default["java"]["modpath"] = "/root/javapkg/"
default["java"]["installdir"] = "/usr/java/"
