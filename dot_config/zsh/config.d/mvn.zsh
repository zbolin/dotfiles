alias mci="mvn clean install"
alias mciq="mvn clean install -q"
alias main='f () { mvn exec:java -Dexec.mainClass="com.bozilla.$1" };f'
