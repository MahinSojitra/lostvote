# LostVote - be bright, vote for the right. \t <font color="blue">@MahinSojitra</font>

[NetBeans IDE Version] : version 8.2 <br>
[Java SDK Version] : version 8.x <br>
[Java EE Version] : version 8 <br>
[XAMPP Version] : any version <br>

## Instructions :
1. Open Project in NetBeans IDE
2. Resolve Dependency JAR javax.mail-1.6.2 from Required JARs folder.

## Changing the Port of Server :
1. Start Glassfish Server.
2. Open any browser.
3. Goto : https://localhost:4848/ 
4. Goto : Configurations -> server-config -> HTTP Service -> HTTP Listeners -> http-listener-1.
5. Change the Port to 8787 and save the changes. 
6. Restart the Glassfish Server.

## Data base Configurations :
1. Open XAMPP Control Panel.
2. Start Apache and MySQL Services.
3. Goto PhpMyAdmin : http://localhost/phpmyadmin/ 
4. Create new database named lostvote.
5. Import the lostvote.sql file from Database folder.

## GoLive
1. Run the index file of LostVote from NetBeans IDE.

## Credentials
=> Admin : <br>
Username : MahinSojitra <br>
Password : mahin123 <br>

=> Voter : <br>
Username : Mahin <br>
Password : mahin123 <br>

#### <font color="red">Note : Internet connection must required to run this project.</font>