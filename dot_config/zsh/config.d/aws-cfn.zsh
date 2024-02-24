function awscfnbackup() {
    local profile=$1
    local stack=$2
    awscfntemplate $profile $stack > $stack.yaml
    awscfnstackparams $profile $stack > $stack.params
}

function awscfnbackuptemplate() {
    local profile=$1
    local stack=$2
    awscfntemplate $profile $stack > $stack.yaml
}

function awscfntemplate() {
    local stack=$1  # Corrected variable assignment
    aws cloudformation get-template --stack-name $stack --profile $1 | jq '.TemplateBody' -r 
}

function awscfntemplateparams() {
    local stack=$2 
    aws cloudformation describe-stacks --stack-name $2 --query 'Stacks[].Parameters' --profile $1
}

function awscfnstacknames() {
    aws cloudformation describe-stacks --profile $1 | jq '.Stacks[] | "\(.StackName)"' -r
}

function awscfnstack() {
    aws cloudformation describe-stacks --stack-name $2 --profile $1  
}

function awscfnstackparamsjson() {
    aws cloudformation describe-stacks --profile $1 | jq '.Stacks[0].Parameters'
}

function awscfnstackparams() {
    aws cloudformation describe-stacks --profile $1 --stack-name $2 | jq '.Stacks[0].Parameters[] | [.ParameterKey, if .ParameterValue | contains(" ") then "\"\(.ParameterValue)\"" else .ParameterValue end] | "\(.[0])=\(.[1])"' -r
}
