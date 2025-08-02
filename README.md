# HAPI-FHIR Server
Welcome to my implementation of a HAPI-FHIR Server for personal interest, learning, and testing!
## Local setup directions

1. Build the image
```
docker build -t hapi-fhir-server .
```

2. Run the image on a container
```
docker run -p 8080:8080 my-hapi-fhir
```

3. View the ui in the browser
navigate to `http://localhost:8080/fhir`

---

## POSTING a patient to the server

```
curl -X POST "http://localhost:8080/fhir/Patient" \
  -H "Content-Type: application/fhir+json" \
  -d '{
    "resourceType": "Patient",
    "name": [
      {"family": "Smith", "given": ["John"]}
    ],
    "gender": "male",
    "birthDate": "1970-01-01"
  }'
```

---

## GETTING patients from the server

```
curl "http://localhost:8080/fhir/Patient"
```
to retrieve a list of patients, or:
```
curl "http://localhost:8080/fhir/Patient/1234"
```
to retrieve patient with id = 1234

--- 