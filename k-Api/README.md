Automation Karate

endpoint technical document
https://gorest.co.in/

Getting Started
Dependencies
* This tool require the follow tools to be executed
* NodeJS V16

Installing for desktop test cases
* configuration meven 
    * Environment variables configuration > system variables > path
* have Java 8 or greater configuration


Run scenario

```shell
mvn test -Dkarate.options="--tags @exampleTag"
````

necesitamos pasar un parametro
- tags: tags de ejecucion @ListUsers, @CreateUser, @UpdateUser, @DeleteUser

Run features
```shell
mvn test -Dkarate.options="classpath:features/crud-test.feature"
````
