# brew services start tomcat@8
# brew servcies stop tomcat@8
# find where tomcat is:
# brew ls tomcat @8 
tomcatusers ()  {
    nvim '/opt/homebrew/Cellar/tomcat@8/8.5.85/libexec/conf/tomcat-users.xml'
}
