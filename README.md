# Testing Lacework Deployment Using Chef

## An example of how to use Chef and Test Kitchen to test the Lacwork agent

## Environment Set-up

1. Install [Chef Workstation](https://downloads.chef.io/chef-workstation)
2. Clone this repo
3. Ensure the LW_ACCESS_TOKEN environment variable has a valid agent token from your Lacework tenant.

To use the kitchen.yml I've included you also need [vagrant](https://www.vagrantup.com/downloads.html) and [VirtualBox](https://www.virtualbox.org/wiki/Downloads) - You could also alter the kitchen.yml to use one of the other [Kitchen Drivers](https://kitchen.ci/docs/drivers/)

The Policyfile.rb contains the configuration state we require for our infrastructure. In this case just ensure the Lacework agent is installed.

Since there is no cookbook in this repo we use the policyfile to download the cookbook from github. To do this run `chef install` from the directory where the policyfile resides.  

Once you're ready to try it, change into the repo's root where the kitchen.yml is found and run ...

`kitchen converge`

