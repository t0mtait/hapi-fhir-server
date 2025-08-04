# HAPI-FHIR Server
Welcome to my implementation of a HAPI-FHIR Server
## Local setup

Create a `hapi.postgres.data` folder in the root project directory. <br>
This directory is mounted into the postgres container and will store your fhir data even between container restarts.

To run the images:
```
docker-compose up --build
```

View the UI in-browser by navigating to `http://localhost:8080/fhir`

---

Dummy patient fhir data if you'd like to test the Patient POST request:

```
{
  "resourceType": "Patient",
  "name": [
    {
      "use": "official",
      "family": "Doe",
      "given": ["John"]
    }
  ],
  "gender": "male",
  "birthDate": "1980-01-01",
  "address": [
    {
      "use": "home",
      "line": ["123 Main St"],
      "city": "Exampletown",
      "state": "EX",
      "postalCode": "12345",
      "country": "USA"
    }
  ]
}
```