# README

## Routes

### Owners

1. GET /owners: Retrieve a list of all owners.
2. GET /owners/:id: Retrieve a specific owner by ID.
3. POST /owners: Create a new owner.
4. PATCH/PUT /owners/:id: Update an existing owner.
5. DELETE /owners/:id: Delete an owner.

### Buildings

1. GET /buildings: Retrieve a list of all buildings.
2. GET /buildings/:id: Retrieve a specific building by ID.
3. POST /buildings: Create a new building.
4. PATCH/PUT /buildings/:id: Update an existing building.
5. DELETE /buildings/:id: Delete a building.

### Units

1. GET /units: Retrieve a list of all units.
2. GET /units/:id: Retrieve a specific unit by ID.
3. POST /units: Create a new unit.
4. PATCH/PUT /units/:id: Update an existing unit.
5. DELETE /units/:id: Delete a unit.

### Tenants

1. GET /tenants: Retrieve a list of all tenants.
2. GET /tenants/:id: Retrieve a specific tenant by ID. 
3. POST /tenants: Create a new tenant. 
4. PATCH/PUT /tenants/:id: Update an existing tenant. 
5. DELETE /tenants/:id: Delete a tenant.

### Rent Payments

1. GET /tenants/:tenant_id/rent_payments: Retrieve rent payments for a specific tenant.
2. GET /rent_payments/:id: Retrieve a specific rent payment by ID.
3. POST /tenants/:tenant_id/rent_payments: Create a new rent payment for a tenant.
4. PATCH/PUT /rent_payments/:id: Update an existing rent payment.
5. DELETE /rent_payments/:id: Delete a rent payment.

### Utility Payments

1. GET /tenants/:tenant_id/utility_payments: Retrieve utility payments for a specific tenant.
2. GET /utility_payments/:id: Retrieve a specific utility payment by ID.
3. POST /tenants/:tenant_id/utility_payments: Create a new utility payment for a tenant.
4. PATCH/PUT /utility_payments/:id: Update an existing utility payment.
5. DELETE /utility_payments/:id: Delete a utility payment.

### Service Payments

1. GET /tenants/:tenant_id/service_payments: Retrieve service payments for a specific tenant.
2. GET /service_payments/:id: Retrieve a specific service payment by ID.
3. POST /tenants/:tenant_id/service_payments: Create a new service payment for a tenant.
4. PATCH/PUT /service_payments/:id: Update an existing service payment.
5. DELETE /service_payments/:id: Delete a service payment.

## Controllers

1. OwnersController: Handles CRUD operations for owners.
2. BuildingsController: Handles CRUD operations for buildings.
3. UnitsController: Handles CRUD operations for units.
4. TenantsController: Handles CRUD operations for tenants.
5. RentPaymentsController: Handles CRUD operations for rent payments.
6. UtilityPaymentsController: Handles CRUD operations for utility payments.
7. ServicePaymentsController: Handles CRUD operations for service payments.