# api_design

## API Endpoints

### Store General Endpoints

#### GET requests

```
api.neighbourhood.com/v1/people
api.neighbourhood.com/v1/house
api.neighbourhood.com/v1/address
```

### Look up a specific address, house or owner

#### GET requests 

```
api.neighbourhood.com/v1/address/:id
api.neighbourhood.com/v1/house/:id
api.neighbourhood.com/v1/owner/:id
```

### Look up people within a certain age brackets and with specific household sizes

#### GET Requests

Request Parameters:

- age(integer) : search by age brackets
- size(integer): search with a specific household sizes

```
api.neighbourhood.com/v1/people/search?age=4&size=10
```
