--liquibase formatted sql

--changeset TechSolvi:1 labels:chatapp_db_setup context:vertxTutorial
--comment: Creating chatapp schema
CREATE SCHEMA chatapp;
COMMIT;

GRANT USAGE ON SCHEMA chatapp TO postgres;
COMMIT;
--rollback DROP SCHEMA IF EXISTS chatapp CASCADE;