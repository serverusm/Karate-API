Feature: List users

    Background:
        * url 'https://gorest.co.in/public/v2'
        * header Authorization = 'Bearer 700d0c7a86eb84028bf5cd204b11587f812f9d7cd880dc4edbdbd1d407ae9954'

    Scenario: Obtener la lista de usuarios
        Given path 'users'
        And header Accept = 'application/json'
        And header Content-Type = 'application/json'
        When method GET
        Then status 200
        And match response == '#[]'

    Scenario: Validar la estructura un usuario
        Given path 'users'
        And header Accept = 'application/json'
        And header Content-Type = 'application/json'
        When method GET
        Then status 200
        And match response[0] contains { id: '#number', name: '#string', email: '#string', gender: '#string', status: '#string' }
