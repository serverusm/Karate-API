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
        And assert response.size() > 0
        And match response[0] contains { id: '#number', name: '#string', email: '#string', gender: '#string', status: '#string' }

    @CreateUser
    Scenario: Create a new user
        Given path 'users'
        And request { name: 'Blas Maldonado', gender: 'male', email: 'blas.maldonado@15ce.com', status: 'active' }
        When method POST
        Then status 201
        And assert response.id != null
        And match response contains { name: 'Blas Maldonado', gender: 'male', email: 'blas.maldonado@15ce.com', status: 'active' }

    @UpdateUser
    Scenario: Update an user
        Given path 'users/7517794'
        And request { name: 'PEdro MAmani', email: 'pedro.mamania@15ce.com', status: 'active' }
        When method PATCH
        Then status 200
        And match response.name == 'PEdro MAmani'
        And match response.email == 'pedro.mamania@15ce.com'
        And match response.status == 'active'

    @DeleteUser
    Scenario: Eliminar un usuario existente
        Given path 'users/7517794'
        When method DELETE
        Then status 204
