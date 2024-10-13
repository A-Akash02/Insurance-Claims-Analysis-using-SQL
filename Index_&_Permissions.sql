--4th and 5th Steps
-- Task 4: 4. Optimization with 
-- Discuss the creation of indexes on any columns used frequently in WHERE clauses or as join keys to improve performance.

CREATE INDEX idx_claims_claimdate ON Claims(ClaimDate);

--Task 5: Roles and Permissions
	-- Create roles: ClaimsAnalyst and ClaimsManager.
	-- ‘ClaimsAnalyst’ role should have read-only access to claims and policies data.
	-- ‘ClaimsManager’ role should have full access to claims data and the ability to update policy information.
	
CREATE ROLE ClaimsAnalyst  LOGIN PASSWORD 'password1';

-- Create ClaimsManager Role
CREATE ROLE ClaimsManager  LOGIN PASSWORD 'password2';


-- Grant select on necessary tables
GRANT SELECT ON Claims, Policies, PolicyTypes TO ClaimsAnalyst;

GRANT SELECT, INSERT, UPDATE, DELETE ON Claims, Policies, PolicyTypes TO ClaimsManager;

