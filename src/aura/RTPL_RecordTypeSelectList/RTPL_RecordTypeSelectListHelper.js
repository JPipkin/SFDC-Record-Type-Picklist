({
	setOptions : function(component) {
		var properties = component.get('v.properties');
		if(!properties) return;

		// get field information from UI api
		properties = properties[component.get('v.fieldName')];
		if(!properties){
			console.error(component.get('v.fieldName') + ' does not exist');
			return;
		}

		// init info
		var controllerValue = component.get('v.depends');
		var options = component.get('v.addSelectOpt') === true ? [{label:"--Select--",value:null,selected:false}] : [];
		var currentValue = component.get('v.value');
		var isPopulated = false;

		// loop through picklist values for this field
		for(var o in properties.values){
			var opt = properties.values[o];
			// check if field has a controlling field
			if(this.hasController(properties)){
				// get index for dependent field value
				var indx = this.getControllerIndex(properties, component.get('v.depends'));
				// check if the depende field value index is valid for this picklist item
				if(!opt.validFor.includes(indx)){
					// if the current value is now invalid, clear field value
					if(opt.value == currentValue){
						component.set('v.value', null);
					}
					continue;
				}
			}
			if(!isPopulated) isPopulated = opt.value == currentValue;

			// add option to picklist
			options.push({label : opt.label, value : opt.value, selected : opt.value == currentValue})
		}
		component.set('v.options',options);

		// if field value is not assigned to any options, assign it to the first options
		if(!isPopulated){
			component.set('v.value', options[0].value);
		}
		
	},

	hasController : function(prop){
		return !$A.util.isEmpty(prop.controllerValues) && !$A.util.isUndefinedOrNull(prop.controllerValues);
	},

	getControllerIndex : function(prop, ctrl){
		return prop.controllerValues[ctrl];
	}
})