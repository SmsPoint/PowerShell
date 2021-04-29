# SmsSendResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** |  | [optional] 
**ErrorMessage** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SmsSendResponse = Initialize-PSNvtCelmanApiSmsSendResponse  -Success null `
 -ErrorMessage null
```

- Convert the resource to JSON
```powershell
$SmsSendResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

