# lemp-wp-docker


To help with install and run the site.  
Git must be installed before starting.


## Installation

Clone project to local repository
```bash
  git clone https://github.com/dcpamir/lemp-wp-docker.git
  cd lemp-wp-docker
```
Give execute permission to script -
```bash
  chmod +x cli-script.sh
```
Run script with sudo and provide site name -
```bash
  sudo ./cli-script.sh [site-name]
```
Site should be up and running with this.  
To disable site -
```bash
  sudo ./cli-script.sh [site-name] disable
```
To enable site again -
```bash
  sudo ./cli-script.sh [site-name] enable
```
To delete site and local files -
```bash
  sudo ./cli-script.sh [site-name] delete
```
