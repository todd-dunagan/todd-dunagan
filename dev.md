Gathering, sifting, condensing knowledge

# Software Dev
## Tools/Cheats:

### Docker
Alias | Command | Description
----- | ------- | -----------
dils | docker image ls | List docker images
dcin | docker container inspect | Display detailed information on one or more containers
dlo | docker container logs | Fetch the logs of a docker container
dcls | docker container ls | List all the running docker containers
dclsa | docker container ls -a | List all running and stopped containers

from: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/docker

### Kubernetes (K8s)
Alias | Command | Description
----- | ------- | -----------
kgp | kubectl get pods | List all pods in ps output format
kgpa | kubectl get all, all namespaces pods | List all pods in ps output format
kgpl | kgp -l | Get pods by label. Example: kgpl "app=myapp" -n myns
kgpn | kgp -n | Get pods by namespace. Example: kgpn kube-system
kdp | kubectl describe pods | Describe all pods
kl | kubectl logs | Print the logs for a container or resource
klf | kubectl logs -f | Stream the logs for a container or resource (follow)

from: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/kubectl

## Environment Setup
### Tools:
#### Postman
#### Alfred
#### IntelliJ
#### Atom
#### Bash/Zsh
#### [Oh My Zsh!](https://github.com/ohmyzsh/ohmyzsh)
```
plugins=(
 git
 github
 golang
 helm
 jira
 kubectl
 mvn
 history
 zsh-autosuggestions
)
```
#### [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh)

### Bash

#### Handling parameters in bash script
```
while getopts u:a:f: flag
do
    case "${flag}" in
        u) username=${OPTARG};;
        a) age=${OPTARG};;
        f) fullname=${OPTARG};;
    esac
done
echo "Username: $username";
echo "Age: $age";
echo "Full Name: $fullname";
```
from: https://www.baeldung.com/linux/use-command-line-arguments-in-bash-script

#### Grep
##### Recursive with include / exclude
```
grep -r "[test to find]" . --exclude-dir={[array of vals]} --include="*.[file_ext]"
```

#### Bash CheatSheet
https://devhints.io/bash
