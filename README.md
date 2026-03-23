# Gateway Error Reporting

ABAP CDS views and an OData service for tracking SAP Gateway errors. Gives you a queryable, analytics-ready view of your Gateway error logs so you can spot patterns, identify problem services, and debug OData issues faster.

## What's included

- **Interface CDS view** (`/MINDSET/I_ERROR_LOG`) — Analytics cube over Gateway error logs with user, timestamp, service, HTTP status, request/response sizes, and call stack info.
- **Consumption view** (`/MINDSET/C_ERROR_LOG`) — Ready for Fiori Elements or CDS-based analytics consumption.
- **Metadata extension** (`/MINDSET/E_ERROR_LOG`) — UI annotations for field labels and grouping.
- **OData service** — Exposes the views for frontend consumption.
- **Test class** — Basic unit tests for the CDS views.

## Installation

1. Import via [abapGit](https://abapgit.org) into your SAP system (ECC or S/4HANA).
2. Activate all objects in the `/MINDSET/` namespace.
3. Register and activate the OData service in `/IWFND/MAINT_SERVICE`.

## Prerequisites

- SAP NetWeaver 7.50+ or S/4HANA (CDS view support required).
- Gateway error logging enabled in your system.

## License

See [LICENSE](LICENSE) file.

## Contact

jonathanbragg@mindsetconsulting.com

Built by [Mindset Consulting](https://mindsetconsulting.com).
