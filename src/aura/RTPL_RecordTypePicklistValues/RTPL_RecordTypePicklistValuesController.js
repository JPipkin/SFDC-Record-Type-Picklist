({
	init : function(component, event, helper) {

		// gather data for callout 
		var action = component.get('c.getPicklistValues');

		// if sobjectField is supplied, then we need to parse sobject and field name
		var f = component.get('v.sobjectField');
		if(f){
			var fparts = f.split('.')
			component.set('v.sobject', fparts[0]);
			component.set('v.fieldName', fparts[1]);
		}

		action.setParams({
			sobjectName : component.get('v.sobject'),
			recordTypeId : component.get('v.recordTypeId'),
			recordTypeName : component.get('v.recordTypeName')
		});

		// store this in cache
		action.setStorable();

		action.setCallback(this,function(result){
			// check server response
			if(!helper.hlpCheckForError(component, result, 'sticky')){
				// error
				return
			}

			// parse return to object. For some reason, lightning does not like the wrapper instance so
			// it has to be returned as json
			var retObj = JSON.parse(result.getReturnValue());
			component.set('v.recordTypeProperties', retObj.picklistFieldValues);
		});
		$A.enqueueAction(action);
	}
})