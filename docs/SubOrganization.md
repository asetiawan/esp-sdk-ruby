# ESP::SubOrganization

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Unique ID | [optional] 
**name** | **String** | Name of the sub organization | [optional] 
**created_at** | **DateTime** | ISO 8601 timestamp when the resource was created | [optional] 
**updated_at** | **DateTime** | ISO 8601 timestamp when the resource was updated | [optional] 
**external_accounts** | [**Array&lt;ExternalAccount&gt;**](ExternalAccount.md) | Associated External Accounts | [optional] 
**external_account_ids** | **Array&lt;Integer&gt;** | Associated External Accounts IDs | [optional] 
**organization** | [**Organization**](Organization.md) | Associated Organization | [optional] 
**organization_id** | **Integer** | Associated Organization ID | [optional] 
**teams** | [**Array&lt;Team&gt;**](Team.md) | Associated Teams | [optional] 
**team_ids** | **Array&lt;Integer&gt;** | Associated Teams IDs | [optional] 


