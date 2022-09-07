EXECUTE sp_addrolemember @rolename = N'db_datareader', @membername = N'AZ-DNA-GRP-SG-N-DS-CUSTOPS_DW_DATAREAD_DEV';


GO
EXECUTE sp_addrolemember @rolename = N'db_datawriter', @membername = N'AZ-DNA-GRP-SG-N-DS-CUSTOPS_DW_DATAWRITE_DEV';


GO
EXECUTE sp_addrolemember @rolename = N'db_ddladmin', @membername = N'AZ-DNA-GRP-SG-N-DS-CUSTOPS_DW_DDLADMIN_DEV';


GO
EXECUTE sp_addrolemember @rolename = N'db_owner', @membername = N'AZ-DNA-GRP-SG-N-DS-CUSTOPS_DW_OWNER_DEV';


GO
EXECUTE sp_addrolemember @rolename = N'db_ddladmin', @membername = N'shell-02-eun-adf-smgmtnsyztkngurlpvp';


GO
EXECUTE sp_addrolemember @rolename = N'db_datareader', @membername = N'shell-02-eun-adf-smgmtnsyztkngurlpvp';


GO
EXECUTE sp_addrolemember @rolename = N'db_datawriter', @membername = N'shell-02-eun-adf-smgmtnsyztkngurlpvp';


GO
EXECUTE sp_addrolemember @rolename = N'db_ddladmin', @membername = N'CUST_OPS_USER';


GO
EXECUTE sp_addrolemember @rolename = N'db_datareader', @membername = N'CUST_OPS_USER';


GO
EXECUTE sp_addrolemember @rolename = N'db_owner', @membername = N'Ravidas.Shiudkar@shell.com';

