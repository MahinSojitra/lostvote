# LostVote - be bright, vote for the right.

[NetBeans IDE Version] : version 8.2 <br>
[Java SDK Version] : version 8.x <br>
[Java EE Version] : version 8 <br>
[XAMPP Version] : any version <br>

<h3>Instructions</h3>
<ol>
    <li>Open Project in NetBeans IDE</li>
    <li>Resolve Dependency JAR javax.mail-1.6.2 from Required JARs folder.</li>
</ol>

<h3>Changing the Port of Server</h3>
<ol>
    <li>Start Glassfish Server.</li>
    <li>Open any browser.</li>
    <li>Goto : https://localhost:4848/</li>
    <li>Goto : Configurations -> server-config -> HTTP Service -> HTTP Listeners -> http-listener-1.</li>
    <li>Change the Port to 8787 and save the changes.</li>
    <li>Restart the Glassfish Server.</li>
</ol>

<h3>Data base Configurations</h3>
<ol>
    <li>Open XAMPP Control Panel.</li>
    <li>Start Apache and MySQL Services.</li>
    <li>Goto PhpMyAdmin : http://localhost/phpmyadmin/</li>
    <li>Create new database named lostvote.</li>
    <li>Import the lostvote.sql file from Database folder.</li>
</ol>

<h3>GoLive</h3>
<ol>
    <li>Run the index file of LostVote from NetBeans IDE.</li>
</ol>

<h3>Credentials</h3>
<ul>
    <li>Admin</li>
    <ul>
        <li>Username : MahinSojitra</li>
        <li>Password : mahin123</li>
    </ul>
    <li>Voter</li>
    <ul>
        <li>Username : Mahin</li>
        <li>Password : mahin123</li>
    </ul>
</ul>

#### Note : Internet connection must required to run this project.