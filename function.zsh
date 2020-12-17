bashman() {
	man bash | less -p"^       ${1} "
}

fg() {
    if [[ $# -eq 1 && $1 = - ]]; then
        builtin fg %-
    else
        builtin fg %"$@"
    fi
}

bg() {
    if [[ $# -eq 1 && $1 = - ]]; then
        builtin bg %-
    else
        builtin bg %"$@"
    fi
}

disown() {
    if [[ $# -eq 1 && $1 = - ]]; then
        builtin disown %-
    else
        builtin disown %"$@"
    fi
}

gtb.acp() {
	git add .
	git commit -m 'add gtb comments'
	git push -u origin comments
}

acp() {
    local message=${1:?commit message is required!}
    git add .
	git commit -m "$message"
    git push
}

ac() {
    git add .
	git commit -m "${1:-first commit}"
}

# maven
mvng() {
    local artifactId=${1:?artifact id is required!}
    local groupId=${2:-com.example}
    mvn archetype:generate \
    -DgroupId="$groupId" \
    -DartifactId="$artifactId" \
    -DarchetypeArtifactId=maven-archetype-quickstart \
    -DinteractiveMode=false \
    -DarchetypeCatalog=internal
}

mvnphaseg() {
    local phase=${1:?plugin id is required!}
    mvn help:describe -Dcmd="$phase"
}

mvnpluging() {
    local plugin=${1:?plugin id is required!}
    mvn "$plugin":help
}

mvnplugingd() {
    local plugin=${1:?plugin id is required!}
    local goal=${2:?goal id is required!}
    mvn help:describe -DartifactId=maven-"$plugin"-plugin -DgroupId=org.apache.maven.plugins -Dgoal="$goal" -Ddetail
}

# kerrySmart
swagger() {
    echo http://localhost:${1:-8080}/swagger-ui.html
}