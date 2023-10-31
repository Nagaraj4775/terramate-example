In this branch we added 2 features

1. added new env var called environment
2. created 2 workspaces called dev and prod

run "terraform workspace new dev"  and "terraform workspace new prod" to create 2 new workspaces
run "terraform workspace show" to which workspace you are in
run "terraform workspace list" to list all workspace

if you observe it has created a new folder called terraform.tfstate.d which is used for maintaing the all statefiles, internally creates folder on workspace names and store statefiles in isolated way.

Problem?

The main problem here is we cannot customize the code based on environment. For example, i wanted to create another container when it is prod but unfortunately with workspace concept we can segrigate the statefile but not modules/code, we need to copy into new directory and modify the code and make the change

The main problem here is code redundancy and not able to control/create the code dynamically 
