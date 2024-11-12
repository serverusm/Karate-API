@CreateUser
Feature: Create user

    Background:
        * url 'https://gorest.co.in/public/v2'
        * header Authorization = 'Bearer 700d0c7a86eb84028bf5cd204b11587f812f9d7cd880dc4edbdbd1d407ae9954'

    Scenario: Crear un nuevo usuario exitosamente
        And path 'users'
        And header Accept = 'application/json'
        And header Content-Type = 'application/json'
        And request { name: 'Tenali Ramakrishna', gender: 'male', email: 'tenali.ramakrishna@125ce.com', status: 'active' }
        When method POST
        Then status 201
        And assert response.id != null
        And match response contains { name: 'Tenali Ramakrishna', gender: 'male', email: 'tenali.ramakrishna@125ce.com', status: 'active' }
