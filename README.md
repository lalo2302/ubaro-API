# Money exchange

A simple web api simulating money exchange between two parties.

## Request a Person object
```
<url>/endpoints/authenticate/<phone>**.json**?pass=<password>
```
This will return something like this:
```
{"id":1,"name":"Lalo","balance":"900.0","phone":"XXXXX","password":"1234","created_at":"2016-09-20T17:30:59.406Z","updated_at":"2016-09-21T01:29:35.377Z"}
```

## Get all the transactions of a person
```
<url>/endpoints/transactions/<id>.json
```
This will return something like this
```
[{"id":1,"amount":"100.0","date":null,"created_at":"2016-09-21T01:29:35.380Z","updated_at":"2016-09-21T01:29:35.380Z","sender_id":1,"receiver_id":2},{"id":2,"amount":"100.0","date":null,"created_at":"2016-09-21T13:37:25.513Z","updated_at":"2016-09-21T13:37:25.513Z","sender_id":1,"receiver_id":2}]
```
## Get the balance of a person
Send a GET request to:
```
<url>/endpoints/balance/<id>.json
```
This wil return the balance
```
800.00
```
## Make a transaction
Send a POST request with the id of the sender, the phone number of the receiver, and the amount like this
```
<<url>>/endpoints/transaction/<id>.json?<phone>&amount=<amount>
```
This will return 'true' or 'false' if the transaction was successful
