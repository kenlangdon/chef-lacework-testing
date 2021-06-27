# Testing Lacework Deployment Using Chef

## An example of how to use Chef to test Lacwork

## Environment Set-up

1. Install [Chef Workstation](https://downloads.chef.io/chef-workstation)
2. Clone this repo
3. Try out the recipe that's included in the recipes folder (installs and starts httpd with a "Hello World" index.html) or modify it to use other [resources](https://docs.chef.io/resources/)

To use the kitchen.yml I've included you also need [vagrant](https://www.vagrantup.com/downloads.html) and [VirtualBox](https://www.virtualbox.org/wiki/Downloads) - You could also alter the kitchen.yml to use one of the other [Kitchen Drivers](https://kitchen.ci/docs/drivers/)

Once you're ready to try it, change into the repo's root where the kitchen.yml is found and run ...

`kitchen converge`

