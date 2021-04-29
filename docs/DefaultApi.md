# PSNvtCelmanApi.PSNvtCelmanApi/Api.DefaultApi

All URIs are relative to *http://localhost:9003/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-SmsSend**](DefaultApi.md#Invoke-SmsSend) | **POST** /sms/send | Send a text message request.


<a name="Invoke-SmsSend"></a>
# **Invoke-SmsSend**
> SmsSendResponse Invoke-SmsSend<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SmsSendRequest] <PSCustomObject><br>

Send a text message request.

### Example
```powershell
Import-Module -Name PSNvtCelmanApi

$Configuration = Get-PSNvtCelmanApiConfiguration
# Configure API key authorization: ApiKeyAuth
$Configuration["ApiKey"]["X-Auth-Token"] = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration["ApiKeyPrefix"]["X-Auth-Token"] = "Bearer"


$SmsSendRequest = (Initialize-SmsSendRequest-SenderName "SenderName_example" -Body "Body_example" -Phone "Phone_example" -Source "Source_example") # SmsSendRequest | 

# Send a text message request.
try {
     $Result = Invoke-SmsSend -SmsSendRequest $SmsSendRequest
} catch {
    Write-Host ("Exception occured when calling Invoke-SmsSend: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SmsSendRequest** | [**SmsSendRequest**](SmsSendRequest.md)|  | 

### Return type
# cmdlet returns PSCustomObject, the return object contains the properties of below type
[**SmsSendResponse**](SmsSendResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

