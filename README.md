<b>COMP9321 Assignment 2 Movie Website</b><br>
@UNSW

<b>Collaborator</b><br>
  @Zeyang Yu<br>
  @Shuwen Zhou<br>
Group<br>
  ' or 1=1#<br>

<b>Reference</b><br>
  http://www.cse.unsw.edu.au/~cs9321/14s2/assignments/assignment2.html

<b>Development plan and Documentation</b><br> 
  Agile: https://www.pivotaltracker.com/n/projects/1171138<br>
  UML:design.pdf https://repository.genmymodel.com/jacobc3/MovieWebsite<br>
  Hibernate Tutorial: http://www.tutorialspoint.com/hibernate/hibernate_tutorial.pdf <br>

<b>Coding Setting</b><br>
  J2EE<br>
  JSP/Servlet<br>
  Hibernate<br>
  mySQL<br>
  
<b>Design</b><br>
  MVC Pattern<br>
  UML<br>
  
<b>Academic Rules</b><br>
  Due Week 10 (12 Oct 2014?)<br>
  Worth 25 marks<br>
  
  
 IMPORTANT BASIC SETUP:<br>
 database name 9321Ass2<br>
 username root<br>
 password 123<br>
<br>
Random name Generator: http://zh-cn.fakenamegenerator.com/<br>
Lorem ipsum: http://www.lipsum.com/feed/html <br>


------------------------------------
TO RUN ON CSE MACHINE on account szho690
-----
<b>tomcat</b><br>
source /home/szho690/apache-tomcat-7.0.42/setTomcat
cd $CATALINA_HOME/bin
sh startup.sh

sh shutdown.sh

--
mysql

priv srvr
cd /srvr/szho690
mysqld_safe --datadir=/srvr/szho690/database --log=mysqld.log --pid-file=mysqld.pid --log-error=mysqld_err.log --socket=mysql.sock &
mysql -u root -p123:
mysqladmin -u root -p123 shutdown
