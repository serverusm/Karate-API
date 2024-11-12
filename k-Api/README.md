Automatizacion usando Karate

Run scenario

```shell
mvn test -Dkarate.options="--tags @exampleTag"
````
```
necesitamos pasar un parametro
- tags: tags de ejecucion @ListUsers, @CreateUser, @UpdateUser, @DeleteUser

Run features
```shell
mvn test -Dkarate.options="classpath:test/java/examples/features/crud-test.feature"

````