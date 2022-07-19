--liquibase formatted sql

--changeset TechSolvi:3 labels:chatapp_db_setup context:vertxTutorial
--comment: Granting Read Access to User
GRANT SELECT,INSERT,DELETE,UPDATE ON chatapp.api_config TO postgres;
--rollback REVOKE SELECT,INSERT,DELETE,UPDATE ON chatapp.api_config FROM postgres CASCADE;