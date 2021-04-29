# SmsSendRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SenderName** | **String** |  | 
**Body** | **String** |  | 
**Phone** | **String** |  | 
**Source** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$SmsSendRequest = Initialize-PSNvtCelmanApiSmsSendRequest  -SenderName null `
 -Body null `
 -Phone null `
 -Source null
```

- Convert the resource to JSON
```powershell
$SmsSendRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

