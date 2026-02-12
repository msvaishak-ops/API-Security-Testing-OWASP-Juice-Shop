#!/bin/bash

for i in {1..50}
do
curl -X POST http://localhost:3000/rest/user/login \
-H "Content-Type: application/json" \
-d '{"email":"admin@juice-sh.op","password":"wrong"}'
done
