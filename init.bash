#!/bin/bash
git_clone() {
	git clone https://github.com/bob-crutchley/$1
}
repositories=(account-processor account-service ticket-service offer-service)

maven_clean_install() {
	pushd $1
	mvn clean install
	popd
}

for repository in ${repositories[@]}; do
	rm -rf ${repository}
	git_clone ${repository}
done
