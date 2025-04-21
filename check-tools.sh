#!/bin/bash

echo "🔍 [CHECK] Validating installed DevOps tools..."

function success() { echo -e "✅ \e[32m$1\e[0m"; }
function fail()    { echo -e "❌ \e[31m$1\e[0m"; }

function check() {
    CMD=$1
    DESC=$2
    ARG=$3

    if command -v $CMD &>/dev/null; then
        VER=$($CMD $ARG 2>/dev/null | head -n 1)
        success "$DESC: $VER"
    else
        fail "$DESC not found"
    fi
}

# Sample checks (extend as needed)
check "aws"       "AWS CLI" "--version"
check "terraform" "Terraform" "-version"
check "kubectl"   "kubectl" "version --client"
check "java"      "Java" "-version"
check "mvn"       "Maven" "-v"
check "gradle"    "Gradle" "-v"
check "trivy"     "Trivy" "--version"
check "checkov"   "Checkov" "--version"
check "gh"        "GitHub CLI" "--version"
check "go"        "Golang" "version"
check "node"      "Node.js" "--version"
check "python3"   "Python" "--version"

echo "🎉 [CHECK] Validation complete."
