API Security Testing Report
1. Introduction

This assessment was performed against a local OWASP Juice Shop instance to evaluate API security posture.

2. Scope

Authentication endpoints

User resource endpoints

Login rate limiting

3. Findings
Finding 1: Broken Object Level Authorization

Severity: High
Endpoint: GET /api/Users/{id}

Description:
Authenticated users were able to access other users’ account data by modifying the resource identifier.

Impact:
Unauthorized access to user information.

Recommendation:
Implement object-level authorization checks verifying ownership before returning data.

OWASP Mapping: API1

Finding 2: Missing Rate Limiting

Severity: Medium
Endpoint: POST /rest/user/login

Description:
No restriction on repeated login attempts observed.

Impact:
Brute-force attack possible.

Recommendation:
Implement rate limiting and account lockout mechanisms.

OWASP Mapping: API4
