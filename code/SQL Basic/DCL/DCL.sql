-- grant privilege_name on object_name
-- to {user_name | public | role_name} 

-- revoke privilege_name on object_name
-- from {user_name | public | role_name}

GRANT insert, 
select on studentdb to root
-- We give permision of insrt into studentdb to root

REVOKE insert, 
select on studentdb from root
-- We revoke permision of insrt into studentdb from root