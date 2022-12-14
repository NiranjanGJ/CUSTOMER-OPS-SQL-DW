CREATE PROC [HANA].[SP_PARTNER_FUNCTION_MERGE] AS
BEGIN
MERGE [HANA].[PARTNER_FUNCTION] AS Target_PF
USING [HANA].[PARTNER_FUNCTION_DELTA] AS Source_PF
ON Source_PF.PART_FUNC_COMP_KEY = Target_PF.PART_FUNC_COMP_KEY

WHEN MATCHED THEN
    UPDATE SET Target_PF.AUTHORIZATION_GROUP=Source_PF.AUTHORIZATION_GROUP,
Target_PF.BILLING_BLOCK_FOR_SALES_AREA=Source_PF.BILLING_BLOCK_FOR_SALES_AREA,
Target_PF.CREATED_BY=Source_PF.CREATED_BY,
Target_PF.CREATED_ON=Source_PF.CREATED_ON,
Target_PF.CUSTOMER_ACCOUNT_ASSIGNMENT_GROUP_CODE=Source_PF.CUSTOMER_ACCOUNT_ASSIGNMENT_GROUP_CODE,
Target_PF.CUSTOMER_ASSIGNED_PRICING_PROCEDURE_CODE=Source_PF.CUSTOMER_ASSIGNED_PRICING_PROCEDURE_CODE,
Target_PF.CUSTOMER_COMPANY_CODE=Source_PF.CUSTOMER_COMPANY_CODE,
Target_PF.CUSTOMER_GROUP_CODE=Source_PF.CUSTOMER_GROUP_CODE,
Target_PF.CUSTOMER_PARTNER_FUNCTION_CUSTOMER_NUMBER=Source_PF.CUSTOMER_PARTNER_FUNCTION_CUSTOMER_NUMBER,
Target_PF.CUSTOMER_SALES_CREATE_BY=Source_PF.CUSTOMER_SALES_CREATE_BY,
Target_PF.CUSTOMER_SALES_CREATE_DATE=Source_PF.CUSTOMER_SALES_CREATE_DATE,
Target_PF.DELIVERING_PLANT=Source_PF.DELIVERING_PLANT,
Target_PF.DELIVERY_BLOCK_FOR_SALES_AREA=Source_PF.DELIVERY_BLOCK_FOR_SALES_AREA,
Target_PF.DELIVERY_PRIORITY_CODE=Source_PF.DELIVERY_PRIORITY_CODE,
Target_PF.DISTRIBUTION_CHANNEL_CODE=Source_PF.DISTRIBUTION_CHANNEL_CODE,
Target_PF.DIVISION_CODE=Source_PF.DIVISION_CODE,
Target_PF.EXCHANGE_RATE_TYPE=Source_PF.EXCHANGE_RATE_TYPE,
Target_PF.INCOTERM_CODE=Source_PF.INCOTERM_CODE,
Target_PF.INCOTERM_DESCRIPTION=Source_PF.INCOTERM_DESCRIPTION,
Target_PF.ORDER_BLOCK_FOR_SALES_AREA=Source_PF.ORDER_BLOCK_FOR_SALES_AREA,
Target_PF.PARTNER_FUNCTION=Source_PF.PARTNER_FUNCTION,
Target_PF.PERSONNEL_NUMBER=Source_PF.PERSONNEL_NUMBER,
Target_PF.POD_PROCESS_RELEVANT_IND=Source_PF.POD_PROCESS_RELEVANT_IND,
Target_PF.PRICE_GROUP_CODE=Source_PF.PRICE_GROUP_CODE,
Target_PF.PRICE_LIST_CODE=Source_PF.PRICE_LIST_CODE,
Target_PF.REBATE_RELEVANT_CUSTOMER_IND=Source_PF.REBATE_RELEVANT_CUSTOMER_IND,
Target_PF.SALES_BLOCK_FOR_SALES_AREA=Source_PF.SALES_BLOCK_FOR_SALES_AREA,
Target_PF.SALES_GROUP_CODE=Source_PF.SALES_GROUP_CODE,
Target_PF.SALES_OFFICE_CODE=Source_PF.SALES_OFFICE_CODE,
Target_PF.SALES_ORG_CODE=Source_PF.SALES_ORG_CODE,
Target_PF.SHIPPING_CONDITION_CODE=Source_PF.SHIPPING_CONDITION_CODE,
Target_PF.HANDLING_TYPE=Source_PF.HANDLING_TYPE,
Target_PF.ITEM_LEVEL_PARTIAL_DELIVERY_IND=Source_PF.ITEM_LEVEL_PARTIAL_DELIVERY_IND,
Target_PF.ITEM_PROPOSAL=Source_PF.ITEM_PROPOSAL,
Target_PF.CUSTOMER_CHANNEL_CLASS_CODE=Source_PF.CUSTOMER_CHANNEL_CLASS_CODE,
Target_PF.CUSTOMER_CHANNEL_ID=Source_PF.CUSTOMER_CHANNEL_ID,
Target_PF.CUSTOMER_CARD_TYPE_CODE=Source_PF.CUSTOMER_CARD_TYPE_CODE,
Target_PF.CUSTOMER_ACCOUNT_LOCAL_CODE=Source_PF.CUSTOMER_ACCOUNT_LOCAL_CODE,
Target_PF.CUSTOMER_EXPORT_TYPE_CODE=Source_PF.CUSTOMER_EXPORT_TYPE_CODE,
Target_PF.ACCOUNT_GROUP=Source_PF.ACCOUNT_GROUP,
Target_PF.INDUSTRY_CODE_1=Source_PF.INDUSTRY_CODE_1,
Target_PF.INDUSTRY_CODE_2=Source_PF.INDUSTRY_CODE_2,
Target_PF.INDUSTRY=Source_PF.INDUSTRY,
Target_PF.SALES_AREA_PAYMENT_METHOD_CODE=Source_PF.SALES_AREA_PAYMENT_METHOD_CODE,
Target_PF.TERMS_OF_PAYMENT=Source_PF.TERMS_OF_PAYMENT,
Target_PF.INVOICE_DATE_CALENDAR_CODE=Source_PF.INVOICE_DATE_CALENDAR_CODE,
Target_PF.GSAP_ATTRIBUTE_1=Source_PF.GSAP_ATTRIBUTE_1,
Target_PF.GSAP_ATTRIBUTE_2=Source_PF.GSAP_ATTRIBUTE_2,
Target_PF.ADDITIONAL_SALES_DATA_ATTR3=Source_PF.ADDITIONAL_SALES_DATA_ATTR3,
Target_PF.ADDITIONAL_SALES_DATA_ATTR4=Source_PF.ADDITIONAL_SALES_DATA_ATTR4,
Target_PF.GSAP_ATTRIBUTE_5=Source_PF.GSAP_ATTRIBUTE_5,
Target_PF.END_USE_TYPE=Source_PF.END_USE_TYPE,
Target_PF.GSAP_ATTRIBUTE_7=Source_PF.GSAP_ATTRIBUTE_7,
Target_PF.GSAP_ATTRIBUTE_8=Source_PF.GSAP_ATTRIBUTE_8,
Target_PF.GSAP_ATTRIBUTE_9=Source_PF.GSAP_ATTRIBUTE_9,
Target_PF.GSAP_ATTRIBUTE_10=Source_PF.GSAP_ATTRIBUTE_10,
Target_PF.CENTRAL_DELETION_FLAG=Source_PF.CENTRAL_DELETION_FLAG,
Target_PF.DEL_INDICATOR_FOR_SALES_AREA=Source_PF.DEL_INDICATOR_FOR_SALES_AREA,
Target_PF.PARTNER_COUNTER=Source_PF.PARTNER_COUNTER,
Target_PF.CUSTOMER_MASTER_CUSTOMER=Source_PF.CUSTOMER_MASTER_CUSTOMER,
Target_PF.CUSTOMER_MASTER_REUSABLE_LAST_DTM=Source_PF.CUSTOMER_MASTER_REUSABLE_LAST_DTM

WHEN NOT MATCHED THEN
INSERT (AUTHORIZATION_GROUP,BILLING_BLOCK_FOR_SALES_AREA,CREATED_BY,CREATED_ON,CUSTOMER_ACCOUNT_ASSIGNMENT_GROUP_CODE,CUSTOMER_ASSIGNED_PRICING_PROCEDURE_CODE,CUSTOMER_COMPANY_CODE,CUSTOMER_GROUP_CODE,CUSTOMER_PARTNER_FUNCTION_CUSTOMER_NUMBER,CUSTOMER_SALES_CREATE_BY,CUSTOMER_SALES_CREATE_DATE,DELIVERING_PLANT,DELIVERY_BLOCK_FOR_SALES_AREA,DELIVERY_PRIORITY_CODE,DISTRIBUTION_CHANNEL_CODE,DIVISION_CODE,EXCHANGE_RATE_TYPE,INCOTERM_CODE,INCOTERM_DESCRIPTION,ORDER_BLOCK_FOR_SALES_AREA,PARTNER_FUNCTION,PERSONNEL_NUMBER,POD_PROCESS_RELEVANT_IND,PRICE_GROUP_CODE,PRICE_LIST_CODE,REBATE_RELEVANT_CUSTOMER_IND,SALES_BLOCK_FOR_SALES_AREA,SALES_GROUP_CODE,SALES_OFFICE_CODE,SALES_ORG_CODE,SHIPPING_CONDITION_CODE,HANDLING_TYPE,ITEM_LEVEL_PARTIAL_DELIVERY_IND,ITEM_PROPOSAL,CUSTOMER_CHANNEL_CLASS_CODE,CUSTOMER_CHANNEL_ID,CUSTOMER_CARD_TYPE_CODE,CUSTOMER_ACCOUNT_LOCAL_CODE,CUSTOMER_EXPORT_TYPE_CODE,ACCOUNT_GROUP,INDUSTRY_CODE_1,INDUSTRY_CODE_2,INDUSTRY,SALES_AREA_PAYMENT_METHOD_CODE,TERMS_OF_PAYMENT,INVOICE_DATE_CALENDAR_CODE,GSAP_ATTRIBUTE_1,GSAP_ATTRIBUTE_2,ADDITIONAL_SALES_DATA_ATTR3,ADDITIONAL_SALES_DATA_ATTR4,GSAP_ATTRIBUTE_5,END_USE_TYPE,GSAP_ATTRIBUTE_7,GSAP_ATTRIBUTE_8,GSAP_ATTRIBUTE_9,GSAP_ATTRIBUTE_10,CENTRAL_DELETION_FLAG,DEL_INDICATOR_FOR_SALES_AREA,PARTNER_COUNTER,CUSTOMER_MASTER_CUSTOMER,CUSTOMER_MASTER_REUSABLE_LAST_DTM,PART_FUNC_COMP_KEY)
VALUES (Source_PF.AUTHORIZATION_GROUP,Source_PF.BILLING_BLOCK_FOR_SALES_AREA,Source_PF.CREATED_BY,Source_PF.CREATED_ON,Source_PF.CUSTOMER_ACCOUNT_ASSIGNMENT_GROUP_CODE,Source_PF.CUSTOMER_ASSIGNED_PRICING_PROCEDURE_CODE,Source_PF.CUSTOMER_COMPANY_CODE,Source_PF.CUSTOMER_GROUP_CODE,Source_PF.CUSTOMER_PARTNER_FUNCTION_CUSTOMER_NUMBER,Source_PF.CUSTOMER_SALES_CREATE_BY,Source_PF.CUSTOMER_SALES_CREATE_DATE,Source_PF.DELIVERING_PLANT,Source_PF.DELIVERY_BLOCK_FOR_SALES_AREA,Source_PF.DELIVERY_PRIORITY_CODE,Source_PF.DISTRIBUTION_CHANNEL_CODE,Source_PF.DIVISION_CODE,Source_PF.EXCHANGE_RATE_TYPE,Source_PF.INCOTERM_CODE,Source_PF.INCOTERM_DESCRIPTION,Source_PF.ORDER_BLOCK_FOR_SALES_AREA,Source_PF.PARTNER_FUNCTION,Source_PF.PERSONNEL_NUMBER,Source_PF.POD_PROCESS_RELEVANT_IND,Source_PF.PRICE_GROUP_CODE,Source_PF.PRICE_LIST_CODE,Source_PF.REBATE_RELEVANT_CUSTOMER_IND,Source_PF.SALES_BLOCK_FOR_SALES_AREA,Source_PF.SALES_GROUP_CODE,Source_PF.SALES_OFFICE_CODE,Source_PF.SALES_ORG_CODE,Source_PF.SHIPPING_CONDITION_CODE,Source_PF.HANDLING_TYPE,Source_PF.ITEM_LEVEL_PARTIAL_DELIVERY_IND,Source_PF.ITEM_PROPOSAL,Source_PF.CUSTOMER_CHANNEL_CLASS_CODE,Source_PF.CUSTOMER_CHANNEL_ID,Source_PF.CUSTOMER_CARD_TYPE_CODE,Source_PF.CUSTOMER_ACCOUNT_LOCAL_CODE,Source_PF.CUSTOMER_EXPORT_TYPE_CODE,Source_PF.ACCOUNT_GROUP,Source_PF.INDUSTRY_CODE_1,Source_PF.INDUSTRY_CODE_2,Source_PF.INDUSTRY,Source_PF.SALES_AREA_PAYMENT_METHOD_CODE,Source_PF.TERMS_OF_PAYMENT,Source_PF.INVOICE_DATE_CALENDAR_CODE,Source_PF.GSAP_ATTRIBUTE_1,Source_PF.GSAP_ATTRIBUTE_2,Source_PF.ADDITIONAL_SALES_DATA_ATTR3,Source_PF.ADDITIONAL_SALES_DATA_ATTR4,Source_PF.GSAP_ATTRIBUTE_5,Source_PF.END_USE_TYPE,Source_PF.GSAP_ATTRIBUTE_7,Source_PF.GSAP_ATTRIBUTE_8,Source_PF.GSAP_ATTRIBUTE_9,Source_PF.GSAP_ATTRIBUTE_10,Source_PF.CENTRAL_DELETION_FLAG,Source_PF.DEL_INDICATOR_FOR_SALES_AREA,Source_PF.PARTNER_COUNTER,Source_PF.CUSTOMER_MASTER_CUSTOMER,Source_PF.CUSTOMER_MASTER_REUSABLE_LAST_DTM,Source_PF.PART_FUNC_COMP_KEY);
END
