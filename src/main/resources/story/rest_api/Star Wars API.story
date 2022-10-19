Description: Test demoing VIVIDUS capabilities for REST API

Scenario: Verify Luke's eyes are blue
When I execute HTTP GET request for resource with URL `https://swapi.dev/api/people/1/`
Then `${responseCode}` is equal to `200`
Then JSON element value from context by JSON path `$.name` is equal to `Luke Skywalker`
Then JSON element value from context by JSON path `$.eye_color` is equal to `blue`

Scenario: Verify that the population of planet 1 is 200000
When I execute HTTP GET request for resource with URL `https://swapi.dev/api/planets/1/`
Then `${responseCode}` is equal to `200`
Then JSON element value from context by JSON path `$.population` is equal to `200000`

Scenario: Verify that the "A New Hope" film have correct director and release_date
When I execute HTTP GET request for resource with URL `https://swapi.dev/api/films/1/`
Then `${responseCode}` is equal to `200`
Then JSON element value from context by JSON path `$.director` is equal to `George Lucas`
Then JSON element value from context by JSON path `$.release_date` is equal to `1977-05-25`
