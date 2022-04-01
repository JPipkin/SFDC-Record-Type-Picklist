# Salesforce Enhanced Picklists

<a href="https://githubsfdeploy.herokuapp.com?owner=Garywoo&repo=SFDC-Record-Type-Picklist&ref=validate">
  <img alt="Deploy to Salesforce"
       src="https://raw.githubusercontent.com/afawcett/githubsfdeploy/master/src/main/webapp/resources/img/deploy.png">
</a>

## Introduction

This component allows easy implementation of adding picklist fields to lightning component and visual flows that enforce Record Type visibility as well as field dependencies.

## Installation

*NOTE: You must have at least 1 object with record types enabled to deploy this package to your organization.*

1. Create a Connected App
	1. Search for "App Manager" in setup
	2. Click "New Connected App"
	3. Fill out Basic Information
	4. Enable OAuth Settings
	5. Populate "Callback URL" with "https://login.salesforce.com" (we will change this later)
	6. Choose OAuth Scopes: Full Access (full), Perform requests on your behalf at any time (refresh_token, offline_access)
	7. Click "Save"
	8. Note the "Consumer Key" and "Consumer Secret" for step #2
2. Create an Auth Provider
	1. Search for "Auth. Providers" in setup
	2. Click "New"
	3. Set "Provider Type" to "Salesforce"
	4. Populate "Name" and "URL Suffix" with whatever you would like
	5. Populate "Consumer Key" and "Consumer Secret" with values from #1
	6. Click "Save"
	7. Copy the generated "Callback URL"
3. Update Connected App callback URL
	1. Go back to the connected app from step #1
	2. Update the callback url with the callback url from the Auth Provider in step #2
4. Create a Named Credential
	1. Search for "Named Credentials" in setup
	2. Click "New Named Credential"
	3. Fill out the Label with whatever name you would like to give it
	4. The "URL" should be the base url of your org. Format: https://[mydomain].my.salesforce.com, https://[instance].salesforce.com
	5. Set "Identity Type" to "Named Principal"
	6. Set "Authentication Protocol" to "OAuth 2.0"
	7. Set "Authentication Provider" to the Auth Provider you created in step #2
	8. Set "Scope" to "full refresh_token offline_access"
	9. Check the "Start Authentication Flow on Save"
	10. Under "Callout Options" select "Generate Authorization Header" and "Allow Merge Fields in HTTP Body"
	11. Click "Save"
	12. Salesforce will ask you to login. Login and grant access to the app when prompted.
5. Update "RTPL Settings" custom setting
	1. Search for "Custom Settings" in setup
	2. Next to "RTPL Settings", click "Manage"
	3. Above "Default Organization Level Value" section, click "New"
	4. Set "Named Credential" to the API name of the Named Credential you created in step #4
	5. Set "Api Version" to the api version of the salesforce User Interface API you would like to use. (Currently 44.0)
	6. Click "Save"

## Code Samples

### Visual Flows

To add to visual flow, add "RTPL_FlowRecordTypeSelectList" to a screen element. This flow component supports up to 4 dependent picklists. There are 5 attributes you can set for each field:
- Name: The field API name
- Label: The field label
- Value: The selected value of the field
- Size: The width size of the picklist field (divided into 12). ie: "6" would be 50% width, "12" would be 100% width
- Required: Determines if the field is required

There are 3 more properties that apply to the whole component:
- addSelectOpt: Determines if the default picklist option is "--Select--" (true) or the first picklist value (false)
- sobject: SObject API Name that holds the field
- recordTypeName: Record Type label. Required if recordTypeId is not supplied
- recordTypeId: Record Type Id. Required if recordTypeName is not supplied

### Lightning Components

To add to a lightning component, use "c:RTPL_RecordTypeSelectList". This component inherits all of the properties of lightning:select. Here are the additional attributes:
- addSelectOpt: Determines if the default picklist option is "--Select--" (true) or the first picklist value (false)
- sobject: SObject API Name that holds the field. Required if sobjectField is not supplied
- recordTypeName: Record Type label. Required if recordTypeId is not supplied
- recordTypeId: Record Type Id. Required if recordTypeName is not supplied
- sobjectField: Fully qualified API name. If provided, sobject and fieldName are not used
- fieldName: The field API name

There is 1 method, getSelected(), that will return the value of the field if the "value" attribute is not set. Usage:
<pre>var selectedValue = component.find('mypicklist').getSelected();</pre>

#### Build Your Own UI

If you want to display the picklist values based on record type and dependencies in a different way, use the component "RTPL_RecordTypePicklistValues." This component will retrieve the 
picklist properties and return the information. Here are the attributes:
- sobject: SObject API Name that holds the field. Required if sobjectField is not supplied
- recordTypeId: Record Type Id. Required if recordTypeName is not supplied
- recordTypeName: Record Type label. Required if recordTypeId is not supplied
- recordTypeProperties: The picklist properties returned by the User Interface API. Returns instance of RTPL_PicklistValues wrapper.
- sobjectField: Fully qualified API name. If provided, sobject and fieldName are not used
- fieldName: The field API name





