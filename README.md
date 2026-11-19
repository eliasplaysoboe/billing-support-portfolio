# Billing Support Portfolio

A small, independent portfolio project demonstrating a structured approach to SaaS billing support.

**Important:** This is a self-directed practice project. All records and scenarios are synthetic. It is not affiliated with Supabase or any past or current employer, and it does not represent production support work.

## What this project demonstrates
- A repeatable workflow for investigating failed payments and invoice discrepancies
- Clear separation of customer-reported symptoms, verified facts, and next actions
- Useful escalation notes for Billing Engineering or another technical team
- Introductory PostgreSQL queries over a small fictional billing dataset
- Privacy-conscious support documentation

## Repository structure
- `data/` — fictional invoices and payment attempts
- `docs/billing-troubleshooting-playbook.md` — investigation and triage workflow
- `docs/sample-case-notes.md` — example case investigations using synthetic records
- `sql/` — practice queries for billing support investigations
- `templates/escalation-template.md` — reusable engineering escalation format

## How to explore
1. Read the troubleshooting playbook.
2. Review the sample invoice and payment-attempt CSV files.
3. Open the SQL practice file and compare each query with the comments.
4. Review the sample case notes and escalation template.

## Data model
The examples use two tables: `invoices` (one row per invoice) and `payment_attempts` (one row per attempt to collect payment for an invoice). An invoice can have multiple payment attempts. The sample SQL uses PostgreSQL-compatible syntax.

## Learning note
The SQL file is included as an introductory practice artifact. It should not be presented as professional SQL proficiency or production database experience.
