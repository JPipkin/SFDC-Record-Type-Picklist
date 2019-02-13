/**
 * Copyright 2018 OpFocus, Inc
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation 
 * files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, 
 * modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the 
 * Software is furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES 
 * OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE 
 * LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR 
 * IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

@isTest
public class RTPL_RecordTypePicklistValuesCtrlTest {
	

	static final String testResponse = '{"picklistFieldValues":{"UpsellOpportunity__c":'+
		'{"values":[{"value":"Maybe","validFor":[],"label":"Maybe","attributes":null},'+
		'{"value":"No","validFor":[],"label":"No","attributes":null},{"value":"Yes",'+
		'"validFor":[],"label":"Yes","attributes":null}],"url":"/services/data/v43.0/'+
		'ui-api/object-info/Account/picklist-values/0125A000000zUZLQA2/UpsellOpportunity__c"'+
		',"defaultValue":null,"controllerValues":{}},"Type":{"values":[{"value":"Prospect",'+
		'"validFor":[],"label":"Prospect","attributes":null},{"value":"Customer - Direct",'+
		'"validFor":[],"label":"Customer - Direct","attributes":null},{"value":"Customer - Channel"'+
		',"validFor":[],"label":"Customer - Channel","attributes":null},{"value":"Channel Partner / Reseller",'+
		'"validFor":[],"label":"Channel Partner / Reseller","attributes":null},{"value":"Installation Partner",'+
		'"validFor":[],"label":"Installation Partner","attributes":null},{"value":"Technology Partner",'+
		'"validFor":[],"label":"Technology Partner","attributes":null},{"value":"Other","validFor":[],'+
		'"label":"Other","attributes":null}],"url":"/services/data/v43.0/ui-api/object-info/Account/'+
		'picklist-values/0125A000000zUZLQA2/Type","defaultValue":null,"controllerValues":{}},'+
		'"ShippingGeocodeAccuracy":{"values":[{"value":"Address","validFor":[],"label":"Address","a'+
		'ttributes":null},{"value":"NearAddress","validFor":[],"label":"NearAddress","attributes":'+
		'null},{"value":"Block","validFor":[],"label":"Block","attributes":null},{"value":"Street"'+
		',"validFor":[],"label":"Street","attributes":null},{"value":"ExtendedZip","validFor":[],"'+
		'label":"ExtendedZip","attributes":null},{"value":"Zip","validFor":[],"label":"Zip","attri'+
		'butes":null},{"value":"Neighborhood","validFor":[],"label":"Neighborhood","attributes":nu'+
		'll},{"value":"City","validFor":[],"label":"City","attributes":null},{"value":"County","va'+
		'lidFor":[],"label":"County","attributes":null},{"value":"State","validFor":[],"label":"St'+
		'ate","attributes":null},{"value":"Unknown","validFor":[],"label":"Unknown","attributes":nu'+
		'll}],"url":"/services/data/v43.0/ui-api/object-info/Account/picklist-values/0125A000000zUZ'+
		'LQA2/ShippingGeocodeAccuracy","defaultValue":null,"controllerValues":{}},"SLA__c":{"values'+
		'":[{"value":"Gold","validFor":[],"label":"Gold","attributes":null},{"value":"Silver","valid'+
		'For":[],"label":"Silver","attributes":null},{"value":"Platinum","validFor":[],"label":"Plat'+
		'inum","attributes":null},{"value":"Bronze","validFor":[],"label":"Bronze","attributes":null'+
		'}],"url":"/services/data/v43.0/ui-api/object-info/Account/picklist-values/0125A000000zUZLQA'+
		'2/SLA__c","defaultValue":null,"controllerValues":{}},"Rating":{"values":[{"value":"Hot","va'+
		'lidFor":[],"label":"Hot","attributes":null},{"value":"Warm","validFor":[],"label":"Warm","a'+
		'ttributes":null},{"value":"Cold","validFor":[],"label":"Cold","attributes":null}],"url":"/s'+
		'ervices/data/v43.0/ui-api/object-info/Account/picklist-values/0125A000000zUZLQA2/Rating","d'+
		'efaultValue":null,"controllerValues":{}},"Ownership":{"values":[{"value":"Public","validFor'+
		'":[],"label":"Public","attributes":null},{"value":"Private","validFor":[],"label":"Private",'+
		'"attributes":null},{"value":"Subsidiary","validFor":[],"label":"Subsidiary","attributes":nul'+
		'l},{"value":"Other","validFor":[],"label":"Other","attributes":null}],"url":"/services/data/v'+
		'43.0/ui-api/object-info/Account/picklist-values/0125A000000zUZLQA2/Ownership","defaultValue":'+
		'null,"controllerValues":{}},"Industry":{"values":[{"value":"Agriculture","validFor":[],"label'+
		'":"Agriculture","attributes":null},{"value":"Apparel","validFor":[],"label":"Apparel","attribu'+
		'tes":null},{"value":"Banking","validFor":[],"label":"Banking","attributes":null},{"value":"Bio'+
		'technology","validFor":[],"label":"Biotechnology","attributes":null},{"value":"Chemicals","vali'+
		'dFor":[],"label":"Chemicals","attributes":null},{"value":"Communications","validFor":[],"label"'+
		':"Communications","attributes":null},{"value":"Construction","validFor":[],"label":"Constructio'+
		'n","attributes":null},{"value":"Consulting","validFor":[],"label":"Consulting","attributes":nul'+
		'l},{"value":"Education","validFor":[],"label":"Education","attributes":null},{"value":"Electroni'+
		'cs","validFor":[],"label":"Electronics","attributes":null},{"value":"Energy","validFor":[],"labe'+
		'l":"Energy","attributes":null},{"value":"Engineering","validFor":[],"label":"Engineering","attri'+
		'butes":null},{"value":"Entertainment","validFor":[],"label":"Entertainment","attributes":null},{'+
		'"value":"Environmental","validFor":[],"label":"Environmental","attributes":null},{"value":"Finan'+
		'ce","validFor":[],"label":"Finance","attributes":null},{"value":"Food &amp; Beverage","validFor"'+
		':[],"label":"Food &amp; Beverage","attributes":null},{"value":"Government","validFor":[],"label"'+
		':"Government","attributes":null},{"value":"Healthcare","validFor":[],"label":"Healthcare","attri'+
		'butes":null},{"value":"Hospitality","validFor":[],"label":"Hospitality","attributes":null},{"val'+
		'ue":"Insurance","validFor":[],"label":"Insurance","attributes":null},{"value":"Machinery","validF'+
		'or":[],"label":"Machinery","attributes":null},{"value":"Manufacturing","validFor":[],"label":"Ma'+
		'nufacturing","attributes":null},{"value":"Media","validFor":[],"label":"Media","attributes":null}'+
		',{"value":"Not For Profit","validFor":[],"label":"Not For Profit","attributes":null},{"value":"Re'+
		'creation","validFor":[],"label":"Recreation","attributes":null},{"value":"Retail","validFor":[],"'+
		'label":"Retail","attributes":null},{"value":"Shipping","validFor":[],"label":"Shipping","attribut'+
		'es":null},{"value":"Technology","validFor":[],"label":"Technology","attributes":null},{"value":"Te'+
		'lecommunications","validFor":[],"label":"Telecommunications","attributes":null},{"value":"Transpor'+
		'tation","validFor":[],"label":"Transportation","attributes":null},{"value":"Utilities","validFor":['+
		'],"label":"Utilities","attributes":null},{"value":"Other","validFor":[],"label":"Other","attributes'+
		'":null}],"url":"/services/data/v43.0/ui-api/object-info/Account/picklist-values/0125A000000zUZLQA2/'+
		'Industry","defaultValue":null,"controllerValues":{}},"Dependent__c":{"values":[{"value":"Dependent 1'+
		' C1","validFor":[0],"label":"Dependent 1 C1","attributes":null},{"value":"Dependent 2 C1","validFor"'+
		':[0],"label":"Dependent 2 C1","attributes":null},{"value":"Dependent 1 C3","validFor":[1],"label":"D'+
		'ependent 1 C3","attributes":null},{"value":"Dependent 2 C3","validFor":[1],"label":"Dependent 2 C3",'+
		'"attributes":null},{"value":"Dependent 3 C3","validFor":[1],"label":"Dependent 3 C3","attributes":null}]'+
		',"url":"/services/data/v43.0/ui-api/object-info/Account/picklist-values/0125A000000zUZLQA2/Dependent__c",'+
		'"defaultValue":null,"controllerValues":{"Control 3":1,"Control 1":0}},"CustomerPriority__c":{"values":[{"'+
		'value":"High","validFor":[],"label":"High","attributes":null},{"value":"Low","validFor":[],"label":"Low",'+
		'"attributes":null},{"value":"Medium","validFor":[],"label":"Medium","attributes":null}],"url":"/services/'+
		'data/v43.0/ui-api/object-info/Account/picklist-values/0125A000000zUZLQA2/CustomerPriority__c","defaultValu'+
		'e":null,"controllerValues":{}},"Controller__c":{"values":[{"value":"Control 1","validFor":[],"label":"Cont'+
		'rol 1","attributes":null},{"value":"Control 3","validFor":[],"label":"Control 3","attributes":null}],"url"'+
		':"/services/data/v43.0/ui-api/object-info/Account/picklist-values/0125A000000zUZLQA2/Controller__c","defaul'+
		'tValue":null,"controllerValues":{}},"CleanStatus":{"values":[{"value":"Matched","validFor":[],"label":"In Sy'+
		'nc","attributes":null},{"value":"Different","validFor":[],"label":"Different","attributes":null},{"value":"A'+
		'cknowledged","validFor":[],"label":"Reviewed","attributes":null},{"value":"NotFound","validFor":[],"label":"N'+
		'ot Found","attributes":null},{"value":"Inactive","validFor":[],"label":"Inactive","attributes":null},{"value"'+
		':"Pending","validFor":[],"label":"Not Compared","attributes":null},{"value":"SelectMatch","validFor":[],"labe'+
		'l":"Select Match","attributes":null},{"value":"Skipped","validFor":[],"label":"Skipped","attributes":null}],"ur'+
		'l":"/services/data/v43.0/ui-api/object-info/Account/picklist-values/0125A000000zUZLQA2/CleanStatus","defaultVal'+
		'ue":null,"controllerValues":{}},"BillingGeocodeAccuracy":{"values":[{"value":"Address","validFor":[],"label":"A'+
		'ddress","attributes":null},{"value":"NearAddress","validFor":[],"label":"NearAddress","attributes":null},{"valu'+
		'e":"Block","validFor":[],"label":"Block","attributes":null},{"value":"Street","validFor":[],"label":"Street","a'+
		'ttributes":null},{"value":"ExtendedZip","validFor":[],"label":"ExtendedZip","attributes":null},{"value":"Zip","'+
		'validFor":[],"label":"Zip","attributes":null},{"value":"Neighborhood","validFor":[],"label":"Neighborhood","attr'+
		'ibutes":null},{"value":"City","validFor":[],"label":"City","attributes":null},{"value":"County","validFor":[],"l'+
		'abel":"County","attributes":null},{"value":"State","validFor":[],"label":"State","attributes":null},{"value":"Un'+
		'known","validFor":[],"label":"Unknown","attributes":null}],"url":"/services/data/v43.0/ui-api/object-info/Accoun'+
		't/picklist-values/0125A000000zUZLQA2/BillingGeocodeAccuracy","defaultValue":null,"controllerValues":{}},"Active__'+
		'c":{"values":[{"value":"No","validFor":[],"label":"No","attributes":null},{"value":"Yes","validFor":[],"label":"'+
		'Yes","attributes":null}],"url":"/services/data/v43.0/ui-api/object-info/Account/picklist-values/0125A000000zUZLQ'+
		'A2/Active__c","defaultValue":null,"controllerValues":{}},"AccountSource":{"values":[{"value":"Web","validFor":[],'+
		'"label":"Web","attributes":null},{"value":"Phone Inquiry","validFor":[],"label":"Phone Inquiry","attributes":null'+
		'},{"value":"Partner Referral","validFor":[],"label":"Partner Referral","attributes":null},{"value":"Purchased Lis'+
		't","validFor":[],"label":"Purchased List","attributes":null},{"value":"Other","validFor":[],"label":"Other","attrib'+
		'utes":null}],"url":"/services/data/v43.0/ui-api/object-info/Account/picklist-values/0125A000000zUZLQA2/AccountSource","defaultValue":null,"controllerValues":{}}}}';

	//test methods

	static testMethod void myTest1() {
		RecordType[] lstRT = [Select Id, Name, SobjectType from RecordType LIMIT 1];
		Test.setMock(HttpCalloutMock.class, new TestHttpMock(testResponse));
		String res = RTPL_RecordTypePicklistValuesCtrl.getPicklistValues(lstRT[0].SobjectType,lstRT[0].Id,null);
		RTPL_PicklistValues pl = (RTPL_PicklistValues) JSON.deserialize(res, RTPL_PicklistValues.class);
		System.assert(pl.picklistFieldValues.containsKey('Controller__c'));
		RTPL_PicklistValues.PicklistValues plv = pl.picklistFieldValues.get('Controller__c');
		System.assertEquals(0, plv.controllerValues.size());
		System.assertEquals(2, plv.values.size());

		plv = pl.picklistFieldValues.get('Dependent__c');
		System.assertEquals(2, plv.controllerValues.size());
		System.assertEquals(5, plv.values.size());
		System.assertEquals(1, plv.values[0].validFor.size());
	}
	
	static testMethod void myTest2() {
		RecordType[] lstRT = [Select Id, Name, SobjectType from RecordType LIMIT 1];
		Test.setMock(HttpCalloutMock.class, new TestHttpMock(testResponse));
		String res = RTPL_RecordTypePicklistValuesCtrl.getPicklistValues(lstRT[0].SobjectType,null, lstRT[0].Name);
		RTPL_PicklistValues pl = (RTPL_PicklistValues) JSON.deserialize(res, RTPL_PicklistValues.class);
		System.assert(pl.picklistFieldValues.containsKey('Controller__c'));
		RTPL_PicklistValues.PicklistValues plv = pl.picklistFieldValues.get('Controller__c');
		System.assertEquals(0, plv.controllerValues.size());
		System.assertEquals(2, plv.values.size());

		plv = pl.picklistFieldValues.get('Dependent__c');
		System.assertEquals(2, plv.controllerValues.size());
		System.assertEquals(5, plv.values.size());
		System.assertEquals(1, plv.values[0].validFor.size());
	}

	static testMethod void myTest3(){
		try{
			RTPL_RecordTypePicklistValuesCtrl.getPicklistValues('Account',null, null);
			System.assert(false);
		}
		catch(RTPL_RecordTypePicklistValuesCtrl.RecordTypeValuesCtrlException ce){
			System.assert(true);
		}
		catch(Exception e){
			System.assert(false, e.getMessage());
		}
	}

	static testMethod void myTest4(){
		RecordType[] lstRT = [Select Id, Name, SobjectType from RecordType LIMIT 1];
		try{
			RTPL_RecordTypePicklistValuesCtrl.getPicklistValues(lstRT[0].SobjectType + 's',null, lstRT[0].Name);
			System.assert(false);
		}
		catch(RTPL_RecordTypePicklistValuesCtrl.RecordTypeValuesCtrlException ce){
			System.assert(true);
		}
		catch(Exception e){
			System.assert(false, e.getMessage());
		}
	}
	
}