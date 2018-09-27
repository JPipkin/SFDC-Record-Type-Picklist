({
	init : function(component, event, helper) {
		component.set('v.acct1.Controller__c','Control 1');
	},

	changed : function(component, event, helper) {
		console.log('change');
	},

	getVal : function(component, event, helper) {
		var sel = component.find('plid').getSelected();
		console.log(sel);
	},
})