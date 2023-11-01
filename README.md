
A plain code is used here to start from and it has 1 module, main.tf for module invoke and provider.tf 

1. first create a terramate.tm.hcl file which used to configure the terramate in root dir 
2. Update git settings to master branch as a base branch to compare other branches, this is the feature terramate highlight 
3. After adding it check we have any untracked files using git status. it shows terramate.tm.hcl file and the add and commit 
4. Now create terramate stacks, stacks are used to manage the environments with customizations. Run "terramate create dev/docker-app"
5. This will create a folder called dev and inside that docker-app and create stack.tm.hcl file this file indicates to the etrramate that it is a stack in terramate 
6. now you can run terramate list to see available stacks in the code 
7. After creating stacks, we need to shape the code to generate the files or call the modules to create the resources 
8. For demonstate purpose i am importing the provider file from root directory, that means when we run terraform generate it creates the required files in stack directory and then we can go for executing below commands 


git add .
git commit -m "Adding stacks"

terraform generate
terramate run sudo terraform init
terramate run sudo terraform plan
terramate run sudo terraform apply
