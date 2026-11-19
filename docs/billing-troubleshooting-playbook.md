# Billing Support Troubleshooting Playbook

This playbook is an independent practice artifact for fictional SaaS billing scenarios.

## 1. Establish the customer-reported issue
Capture the customer's description without assuming the cause. Examples include a failed payment, a payment that appears complete while an invoice remains open, an unexpected invoice total, a payment-extension request, or a possible duplicate charge.

## 2. Gather the minimum useful identifiers
- Customer or workspace identifier
- Invoice identifier
- Payment-attempt identifier
- Invoice date and billing period
- Amount and currency
- Approximate event time, including timezone
- Exact error message or status shown to the customer

Do not request or store full card numbers, security codes, passwords, access tokens, or other secrets in a support ticket.

## 3. Reconstruct the timeline
1. Invoice created.
2. Payment attempt initiated.
3. Payment provider or internal system returned a result.
4. Invoice status changed—or did not change.
5. Customer observed the issue.

Compare timestamps and statuses across available systems. Distinguish a failed attempt from an invoice that is still open, and distinguish a pending payment from a settled payment.

## 4. Classify the issue
| Category | What to verify | Possible next step |
|---|---|---|
| Failed payment | Attempt status, failure code, retry history | Explain confirmed status; follow approved retry guidance or escalate |
| Unsettled payment | Provider status, settlement evidence, invoice state | Check for processing delay or status mismatch |
| Open invoice | Amount due, due date, payment history | Explain balance and due date; investigate conflicting records |
| Duplicate-charge concern | Multiple successful attempts, refunds, reversals | Reconcile each transaction before confirming whether a duplicate occurred |
| Extension request | Eligibility, account history, policy | Apply documented policy or route for approval |
| Invoice dispute | Line items, usage period, plan changes, adjustments | Explain verified charges and escalate disputed calculations |

These are investigation categories, not promises that any particular outcome or policy is available.

## 5. Communicate clearly
A useful customer response should acknowledge the concern, state what was checked, separate confirmed facts from open questions, explain the next step and owner, and avoid promising a resolution time unless one is confirmed.

## 6. Escalate with reproducible detail
Escalate when records conflict, a payment state appears inconsistent, an error may be systemic, or the issue requires access or action outside the support role. Include a concise timeline, identifiers, expected behavior, actual behavior, relevant error text, troubleshooting already completed, and customer impact. Exclude secrets and unnecessary personal data.
