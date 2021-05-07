# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
engagement = Engagement.create(name: "Generic CTF Challenge", status: "No flags captured")
target = Target.create(engagement_id: 1, ipaddress: "1.3.3.7", hostname: "EasyCtfBox.com", sysinfo: "Requires Enumeration!", vulns: "None found yet, keep enumerating!", log: "Log activities and enter notes here.", loot: "Flags, Credentials, Hashes go here.", status: "Vacant")
engagement2 = Engagement.create(name:"Completed CTF Challenge", status: "2/2 flags captured!")
target2 = Target.create(
    engagement_id: 2, 
    ipaddress: "256.256.256.256", 
    hostname: "PwnBox.net", 
    sysinfo: "PORT   STATE SERVICE VERSION
    22/tcp open  ssh     OpenSSH 7.6p1 Ubuntu 4ubuntu0.3 (Ubuntu Linux; protocol 2.0)
    80/tcp open  http    Apache httpd 2.4.29 ((Ubuntu))
    Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel", 
    vulns: "LFI vulnerability discovered!", 
    log: "(Example log portions from old ctf notes)
    -Looking at mainpage we see the proper domainname at mafialive.thm (top under send us a mail)
    -adding mafialive.thm to the /etc/hosts file we get the proper dev server
    
    We've got an LFI possibly!  This test button sorta just revealed that to me... just drop what you want to see after http://mafialive.thm/test.php?view=
    We must construct a payload that bypasses the ../.. check and passes the path check! We can actually bypass this restriction by simply adding ./ in between two ../'s.

    curl 'http://mafialive.thm/test.php?view=php://filter/resource=/var/www/html/development_testing/.././.././.././../etc/passwd && whoami'", 
    loot: "admin:password123", 
    status: "Rooted"
)