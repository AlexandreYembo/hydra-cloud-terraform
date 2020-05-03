
### Commands
This document contains steps to help you to build and create a infrastructure on Azure by Using terraform scripts.

### Configuring variables
1- On ```variables.tf``` you need to specify your Azure SubscriptionId on the variable name: ```AzSubscriptionId```

2- On ```variable-db.tf``` you can define your SQL credential that you want to use to create the SQL Server infrastructure on Azure.
By default it is defined a value there, but feel free to change.

### Second step - Creating the Start State
Once you have your variables configured, we now have to create a start state that will contain you main resource group. For this you will need to do the follow commands:

If you are not logged on Azure SDK, you will need to do so.

Command:```az login``` to login on Azure SDK

On the azure cloud from this project:
```cd start-state```
Then ```terraform init```

This command will create some outfiles that is basically all configuration that will be used when you run this by using Azure SDK and it will be done on the next command.
```terraform apply``` or ```terraform plan```

It will take some time to process this command. Also they will ask you if you want to confirm the information. Just type ```'yes'```

Now after finish the ```start-state``` let's create the infrastructure on Azure. This will provide infrastructure such: Sql Server Database, Web app. For this you can do the follow commands:
```cd .. ```
And if you are in the folder azure, you only need to follow the same steps:
1. ```terraform init```

2. ```terraform apply``` or ```terraform plan```

Then you do the same, confirm the information and that is it. :)

If you go to your Portal azure you will see the resource group. There will have 2 resources, one for your account identity and the second for your app infrastructure (Web App and SQL Server).

Feel free to fork this project and do some changes you need for your business. :)
