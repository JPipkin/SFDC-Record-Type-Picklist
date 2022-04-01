({
	init : function(component, event, helper) {
		var componentArray = [];
		componentArray.push(["c:RTPL_RecordTypeSelectList",{
			sobject: component.get('v.sobject'),
			recordTypeId: component.get('v.recordTypeId'),
			recordTypeName: component.get('v.recordTypeName'),
			fieldName: component.get('v.controllingFieldName'),
			value: component.getReference('v.controllingFieldValue'),
			label: component.get('v.controllingFieldLabel'),
			required : component.get('v.controllingFieldRequired'),
			addSelectOpt: component.get('v.addSelectOpt'),
			class : component.get('v.controllingFieldSize') ? 'slds-size_' + component.get('v.controllingFieldSize') + '-of-12' : ''

		}]);

		if(component.get('v.dependentfieldName1')){
			componentArray.push(["c:RTPL_RecordTypeSelectList",{
				sobject: component.get('v.sobject'),
				recordTypeId: component.get('v.recordTypeId'),
				recordTypeName: component.get('v.recordTypeName'),
				fieldName: component.get('v.dependentfieldName1'),
				depends : component.getReference('v.controllingFieldValue'),
				value: component.getReference('v.dependentfieldValue1'),
				label: component.get('v.dependentfieldLabel1'),
				required : component.get('v.dependentfieldRequired1'),
				addSelectOpt: component.get('v.addSelectOpt'),
				class : component.get('v.dependentfieldSize1') ? 'slds-size_' + component.get('v.dependentfieldSize1') + '-of-12' : ''
			}]);
		}
		if(component.get('v.dependentfieldName2')){
			componentArray.push(["c:RTPL_RecordTypeSelectList",{
				sobject: component.get('v.sobject'),
				recordTypeId: component.get('v.recordTypeId'),
				recordTypeName: component.get('v.recordTypeName'),
				fieldName: component.get('v.dependentfieldName2'),
				depends: component.getReference('v.dependentfieldValue1'),
				value: component.getReference('v.dependentfieldValue2'),
				label: component.get('v.dependentfieldLabel2'),
				required : component.get('v.dependentfieldRequired2'),
				addSelectOpt: component.get('v.addSelectOpt'),
				class : component.get('v.dependentfieldSize2') ? 'slds-size_' + component.get('v.dependentfieldSize2') + '-of-12' : ''
			}]);
		}
		if(component.get('v.dependentfieldName3')){
			componentArray.push(["c:RTPL_RecordTypeSelectList",{
				sobject: component.get('v.sobject'),
				recordTypeId: component.get('v.recordTypeId'),
				recordTypeName: component.get('v.recordTypeName'),
				fieldName: component.get('v.dependentfieldName3'),
				depends: component.getReference('v.dependentfieldValue2'),
				value: component.getReference('v.dependentfieldValue3'),
				required : component.get('v.dependentfieldRequired3'),
				label: component.get('v.dependentfieldLabel3'),
				addSelectOpt: component.get('v.addSelectOpt'),
				class : component.get('v.dependentfieldSize3') ? 'slds-size_' + component.get('v.dependentfieldSize3') + '-of-12' : ''
			}]);
		}
		if(component.get('v.dependentfieldName4')){
			componentArray.push(["c:RTPL_RecordTypeSelectList",{
				sobject: component.get('v.sobject'),
				recordTypeId: component.get('v.recordTypeId'),
				recordTypeName: component.get('v.recordTypeName'),
				fieldName: component.get('v.dependentfieldName4'),
				depends: component.getReference('v.dependentfieldValue3'),
				value: component.getReference('v.dependentfieldValue4'),
				required : component.get('v.dependentfieldRequired4'),
				label: component.get('v.dependentfieldLabel4'),
				addSelectOpt: component.get('v.addSelectOpt'),
				class : component.get('v.dependentfieldSize4') ? 'slds-size_' + component.get('v.dependentfieldSize4') + '-of-12' : ''
			}]);
		}

		component.set('v.validate', function () {
			let isValid = true;

			if (component.get('v.controllingFieldRequired') && $A.util.isEmpty(component.get('v.controllingFieldValue'))) {
				isValid = false;
			}

			if (component.get('v.dependentfieldName1') && component.get('v.dependentfieldRequired1') && $A.util.isEmpty(component.get('v.dependentfieldValue1'))){
				isValid = false;
			}

			
			if (component.get('v.dependentfieldName2') && component.get('v.dependentfieldRequired2') && $A.util.isEmpty(component.get('v.dependentfieldValue2'))){
				isValid = false;
			}

			
			if (component.get('v.dependentfieldName3') && component.get('v.dependentfieldRequired3') && $A.util.isEmpty(component.get('v.dependentfieldValue3'))){
				isValid = false;
			}

			
			if (component.get('v.dependentfieldName4') && component.get('v.dependentfieldRequired4') && $A.util.isEmpty(component.get('v.dependentfieldValue4'))){
				isValid = false;
			}

			
			if (!isValid){
				return {
					isValid: false,
					errorMessage: 'error message'
				}
			}

		});

		$A.createComponents(componentArray, function(components, status, msg){
			if(status === 'SUCCESS'){
				component.find('pl_container').set('v.body', components);
			}
			else{
				console.log(msg)
			}
		})
	}
})