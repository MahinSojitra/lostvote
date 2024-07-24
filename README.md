## LostVote - be bright, vote for the right.

[NetBeans IDE Version] : version 8.2
[Java SDK Version] : version 8.x
[Java EE Version] : version 8
[XAMPP Version] : any version

# Important Note ** 
- Internet connection must required to run this project.

# Instructions :
1. Open Project in NetBeans IDE
2. Resolve Dependency JAR javax.mail-1.6.2 from Required JARs folder.

# Changing the Port of Server :
1. Start Glassfish Server.
2. Open any browser.
3. Goto : https://localhost:4848/ 
4. Goto : Configurations -> server-config -> HTTP Service -> HTTP Listeners -> http-listener-1.
5. Change the Port* to 8787 and save the changes. 
6. Restart the Glassfish Server.

# Data base Configurations :
1. Open XAMPP Control Panel.
2. Start Apache and MySQL Services.
3. Goto PhpMyAdmin : http://localhost/phpmyadmin/ 
4. Create new database named lostvote.
5. Import the lostvote.sql file from Database folder.

# GoLive
1. Run the index file of LostVote from NetBeans IDE.

# Credentials
=> Admin :
Username : MahinSojitra
Password : mahin123

=> Voter :
Username : Mahin
Password : mahin123

