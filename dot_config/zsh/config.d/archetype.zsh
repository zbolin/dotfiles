gen-spring-mvc-01() {
    local project="Article API"
    local artifact="article-api"
    local controller="Dummy"
    local controllerLower="dummy"
    local model="Foo"
    local modelLower="foo"
    local attrib="Name"
    local attribLower="name"
    gen-spring-mvc $project $artifact $controller $controllerLower $model $modelLower $attrib $attribLower
}
gen-spring-mvc-01() {
    local project="Bank"
    local artifact="bank-api"
    local controller="Bank"
    local controllerLower="bank"
    local model="Client"
    local modelLower="client"
    local attrib="Name"
    local attribLower="name"
    gen-spring-mvc $project $artifact $controller $controllerLower $model $modelLower $attrib $attribLower
}
gen-spring-mvc () {
    local project=$1
    local package="com.zbolin"
    local artifact=$2
    local controller=$3
    local controllerLower=$4
    local model=$5
    local modelLower=$6
    local attrib=$7
    local attribLower=$8
    local archetypeGroupId="com.zbolin"
    local archetypeArtifactId="spring-mvc"
    local archetypeArtifactVersion="1.0-SNAPSHOT"

    gh repo create $artifact --private

    mvn archetype:generate \
	-DarchetypeGroupId=$archetypeGroupId \
	-DarchetypeArtifactId=$archetypeArtifactId \
	-DarchetypeVersion=$archetypeArtifactVersion \
	-DgroupId=$package \
	-DartifactId=$artifact \
    -Dproject=$project \
    -Dpackage=$package \
    -Dcontroller=$controller \
    -DcontrollerLower=$controllerLower \
    -Dmodel=$model \
    -DmodelLower=$modelLower \
    -Dattrib=$attrib \
    -DattribLower=$attribLower \
    -Dversion="1.0-SNAPSHOT" \
    -DinteractiveMode=false

    cd $artifact
    echo ".classpath" >> .gitignore
    echo ".project" >> .gitignore
    echo ".idea/" >> .gitignore
    echo ".settings/" >> .gitignore
    echo "target/" >> .gitignore
}
gen-spring-01 () {
    local project="HelloWorldRestSpring"
    local artifact="helloworldrestspring"
    gen-spring $project $artifact
}

gen-spring () {
    local project=$1
    local package="com.zbolin"
    local artifact=$2
    local archetypeGroupId="com.zbolin"
    local archetypeArtifactId="spring"
    local archetypeArtifactVersion="1.0-SNAPSHOT"

    gh repo create $artifact --private

    mvn archetype:generate \
	-DarchetypeGroupId=$archetypeGroupId \
	-DarchetypeArtifactId=$archetypeArtifactId \
	-DarchetypeVersion=$archetypeArtifactVersion \
	-DgroupId=$package \
	-DartifactId=$artifact \
    -Dproject=$project \
    -Dpackage=$package \
    -Dspring-version="2.7.3" \
    -Dversion="1.0-SNAPSHOT" \
    -DinteractiveMode=false

    cd $artifact
    echo ".classpath" >> .gitignore
    echo ".project" >> .gitignore
    echo ".idea/" >> .gitignore
    echo ".settings/" >> .gitignore
    echo "target/" >> .gitignore
}

gen-solution-01() {
    local artifact="battleship"
    local returnType="void"
    local method="playGame"
    local paramenters="String input"
    local vars="input"
    gen-solution $artifact $returnType $method $parameters $vars
}

gen-solution () {
    local package="com.zbolin"
    local artifact=$1
    local returnType=$2
    local method=$3
    local parameters=$4
    local vars=$5
    local archetypeGroupId="com.zbolin"
    local archetypeArtifactId="solution"
    local archetypeArtifactVersion="1.0-SNAPSHOT"

    gh repo create $artifact --private

    mvn archetype:generate \
	-DarchetypeGroupId=$archetypeGroupId \
	-DarchetypeArtifactId=$archetypeArtifactId \
	-DarchetypeVersion=$archetypeArtifactVersion \
	-DgroupId=$package \
	-DartifactId=$artifact \
    -Dpackage=$package \
    -DreturnType=$returnType \
    -DmethodName=$method \
    -Dparameters=$parameters \
    -Dvars=$vars \
    -Dversion="1.0-SNAPSHOT" \
    -DinteractiveMode=false

    cd $artifact
    echo ".classpath" >> .gitignore
    echo ".project" >> .gitignore
    echo ".idea/" >> .gitignore
    echo ".settings/" >> .gitignore
    echo "target/" >> .gitignore
}

