({
    fetchAllPropertyHelper : function(component, event, helper) {
       var action = component.get('c.getLatestProperty');
       action.setCallback(this,function(response){
            var responseValues = response.getReturnValue();
            component.set('v.propertyList',responseValues);
            component.set('v.propertiesFound',true);
       });
       $A.enqueueAction(action,false);
    },
    ownerDetailsClickHelper : function(component, event, helper) {
        var eventSource = event.getSource()
        var propOwnerId = eventSource.get('v.value');
        component.set('v.propOwnerId',propOwnerId);
        component.set('v.openOwnerDetails',"true");
    },
    feedbackClickedHelper : function(component, event, helper) {

    },
    NavigateToPropDetailsHelper : function(component, event, helper) {

    },
    closeOwnerModalHelper : function(component, event, helper) {
        component.set('v.openOwnerDetails',"false");
    }
})
