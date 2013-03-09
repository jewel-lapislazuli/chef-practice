default["arch"] = node["kernel"]["machine"] =~ /x86_64/ ? "x86_64" : "i586"

default["java"]["control"] = "remove"
default["java"]["rpmdir"] = "/root/rpms/"

default["java"]["x86_64"]["rpmpath"] = default["java"]["rpmdir"] + "jre-7u15-linux-x64.rpm"
default["java"]["i586"]["rpmpath"] = default["java"]["rpmdir"] + "jre-7u15-linux-i586.rpm"

default["java"]["x86_64"]["pkgname"] = "jre-1.7.0_15-fcs.x86_64"
default["java"]["i586"]["pkgname"] = "jre-1.7.0_15-fcs.i586"
