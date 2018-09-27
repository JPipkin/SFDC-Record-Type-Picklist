({
	init : function(component, event, helper) {
		helper.setOptions(component);
	},

	controlChange : function(component, event, helper) {
		helper.setOptions(component);
	},

	getSelected : function(component, event, helper) {
		return component.get('v.value');
	}
})