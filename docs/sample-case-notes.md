# Sample Case Notes

All examples below are fictional and correspond to the synthetic CSV data in `data/`.

## Case A — Invoice remains open after a failed attempt
**Customer report:** The customer says the invoice is unpaid and asks why the payment did not go through.

**Records reviewed:** Invoice `INV-1002`; payment attempt `PAY-2002`.

**Verified facts:** Invoice amount USD 49.00; invoice status `open`; attempt status `failed`; sample failure code `insufficient_funds`.

**Support assessment:** The sample records support that the attempt failed and the invoice remains open. They do not establish that a later payment succeeded.

**Next step:** Explain the recorded status and share only approved payment-update or retry instructions. Do not describe the invoice as paid.

## Case B — Payment marked succeeded but invoice still open
**Customer report:** The customer says a payment was made, but the invoice still shows as open.

**Records reviewed:** Invoice `INV-1003`; payment attempt `PAY-2003`.

**Verified facts:** Invoice amount USD 99.00; invoice status `open`; attempt status `succeeded`; sample attempt is not marked settled.

**Support assessment:** There is a status mismatch worth investigating. The word `succeeded` in this synthetic attempt record is not, by itself, proof of settlement or proof that the invoice ledger was updated correctly.

**Next step:** Escalate for verification of the provider result, settlement state, and invoice update event. Do not tell the customer the payment is fully settled until confirmed.

## Case C — Customer questions an invoice amount
**Customer report:** The customer expected USD 49.00 but sees USD 99.00.

**Records reviewed:** Invoice `INV-1003`, including amount and billing period.

**Verified facts:** The invoice record contains USD 99.00. The dataset does not include line-item or usage detail sufficient to explain the calculation.

**Support assessment:** The amount can be confirmed from the sample invoice row, but its underlying calculation cannot be explained from the available data.

**Next step:** Request or inspect the relevant line-item and usage records, then explain the amount or route a reproducible discrepancy to the appropriate team.
