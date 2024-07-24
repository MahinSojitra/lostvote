# LostVote - be bright, vote for the right.

[NetBeans IDE Version] : version 8.2 <br>
[Java SDK Version] : version 8.x <br>
[Java EE Version] : version 8 <br>
[XAMPP Version] : any version <br>

<h4>Instructions</h4>
<ol>
    <li>Open Project in NetBeans IDE<li>
    <li>Resolve Dependency JAR javax.mail-1.6.2 from Required JARs folder.<li>
</ol>

<h4>Changing the Port of Server</h4>
<ol>
    <li>Start Glassfish Server.</li>
    <li>Open any browser.</li>
    <li>Goto : https://localhost:4848/</li>
    <li>Goto : Configurations -> server-config -> HTTP Service -> HTTP Listeners -> http-listener-1.</li>
    <li>Change the Port to 8787 and save the changes.</li>
    <li>Restart the Glassfish Server.</li>
</ol>

<h4>Data base Configurations</h4>
<ol>
    <li>Open XAMPP Control Panel.</li>
    <li>Start Apache and MySQL Services.</li>
    <li>Goto PhpMyAdmin : http://localhost/phpmyadmin/</li>
    <li>Create new database named lostvote.</li>
    <li>Import the lostvote.sql file from Database folder.</li>
</ol>

<h4>GoLive</h4>
<ol>
    <li>Run the index file of LostVote from NetBeans IDE.</li>
</ol>

<h4>Credentials</h4>
<ul style='list-style-type:square;'>
    <li>Admin</li>
    <li>
        <li>Username : MahinSojitra</li>
        <li>Password : mahin123</li>
    </li>
    <li>Voter</li>
    <li>
        <li>Username : Mahin</li>
        <li>Password : mahin123</li>
    </li>
</ul>

#### Note : Internet connection must required to run this project.