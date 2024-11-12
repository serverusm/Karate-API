Feature: CRUD Validaciones de API para usuarios

    Background:
        * url 'https://gorest.co.in/public/v2'
        * header Accept = 'application/json'
        * header Content-Type = 'application/json'
        * header Authorization = 'Bearer 700d0c7a86eb84028bf5cd204b11587f812f9d7cd880dc4edbdbd1d407ae9954'

    @ListUsers
    Scenario: Get list users
        Given path 'users'
        When method GET
        Then status 200
        And assert response != null
        And match response[0].id != null
        And match response[0].name != null
        And assert response != null && karate.sizeOf(response) > 0

    @CreateUser
    Scenario: Create a new user
        Given path 'users'
        And request { name: 'Tenali Ramakrishna', gender: 'male', email: 'tenali.ramakrishna@155ce.com', status: 'active' }
        When method POST
        Then status 201
        And assert response.id != null
        And match response.name == 'Tenali Ramakrishna'
        And match response.status == 'active'

    @UpdateUser
    Scenario: Update an user
        Given path 'users/7519276'
        And request { name: 'Allasani Peddana', email: 'allasani.peddana@15ce.com', status: 'active' }
        When method PATCH
        Then status 200
        And match response.name == 'Allasani Peddana'
        And match response.status == 'active'

    @DeleteUser
    Scenario: Eliminar un usuario existente
        Given path 'users/7519382'
        When method DELETE
        Then status 204
