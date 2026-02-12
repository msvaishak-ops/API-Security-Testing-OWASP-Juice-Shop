# API-Security-Testing-OWASP-Juice-Shop
 Project Overview

This project demonstrates hands-on API security testing performed against a local instance of OWASP Juice Shop using Kali Linux and cURL.

The objective was to assess authentication, authorization, input validation, and rate limiting mechanisms and map findings to OWASP API Security Top 10.

 Tools Used

Kali Linux

cURL

Browser Developer Tools

OWASP Juice Shop (Docker local setup)

 Testing Methodology

Captured API endpoints via browser DevTools

Performed authentication testing using JWT

Tested Broken Object Level Authorization (IDOR)

Tested input validation using malformed JSON

Assessed rate limiting via automated brute-force attempts

 Identified Vulnerabilities
 1. Broken Object Level Authorization (OWASP API1)

Endpoint: GET /api/Users/{id}

Issue: Accessed other users’ data by modifying ID

Impact: Horizontal privilege escalation

 2. Missing Rate Limiting (OWASP API4)

Endpoint: POST /rest/user/login

Issue: No restriction on multiple rapid login attempts

Impact: Brute-force attack possible

OWASP API Top 10 Mapping
Vulnerability	OWASP API Risk
IDOR	API1 – Broken Object Level Authorization
No Rate Limiting	API4 – Unrestricted Resource Consumption

Screenshots

Refer to /screenshots directory for proof-of-concept evidence.

Learning Outcome

This lab improved understanding of:

JWT-based authentication

Object-level authorization flaws

API attack surface analysis

Security testing using command-line tools
