aws-profiles() {
  cat ~/.aws/credentials | grep '\[' | grep -v '#' | tr -d '[' | tr -d ']'
}

