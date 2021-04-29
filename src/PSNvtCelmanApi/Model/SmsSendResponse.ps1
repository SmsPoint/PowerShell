#
# sms-client
# API for sms-send functions
# Version: 1.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

The structure to describe a response to a text message send request.

.PARAMETER Success
No description available.
.PARAMETER ErrorMessage
No description available.
.OUTPUTS

SmsSendResponse<PSCustomObject>
#>

function Initialize-SmsSendResponse {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Success},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ErrorMessage}
    )

    Process {
        'Creating PSCustomObject: PSNvtCelmanApi => SmsSendResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "success" = ${Success}
            "errorMessage" = ${ErrorMessage}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SmsSendResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to SmsSendResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SmsSendResponse<PSCustomObject>
#>
function ConvertFrom-JsonToSmsSendResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSNvtCelmanApi => SmsSendResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in SmsSendResponse
        $AllProperties = ("success", "errorMessage")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "success"))) { #optional property not found
            $Success = $null
        } else {
            $Success = $JsonParameters.PSobject.Properties["success"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "errorMessage"))) { #optional property not found
            $ErrorMessage = $null
        } else {
            $ErrorMessage = $JsonParameters.PSobject.Properties["errorMessage"].value
        }

        $PSO = [PSCustomObject]@{
            "success" = ${Success}
            "errorMessage" = ${ErrorMessage}
        }

        return $PSO
    }

}

