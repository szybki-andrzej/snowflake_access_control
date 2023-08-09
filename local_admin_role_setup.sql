USE ROLE LOCAL_ADMIN_ROLE;

CREATE ROLE DEVELOPER_ROLE;

GRANT ROLE DEVELOPER_ROLE TO ROLE LOCAL_ADMIN_ROLE;

GRANT ROLE D_USAGE, S_WRITE TO ROLE DEVELOPER_ROLE;

CREATE ROLE ANALYST_ROLE;

GRANT ROLE D_USAGE, S_READ TO ROLE ANALYST_ROLE;

CREATE USER dev_user PASSWORD = 'abc';

GRANT ROLE DEVELOPER_ROLE TO USER dev_user;

ALTER USER dev_user SET DEFAULT_ROLE = DEVELOPER_ROLE;