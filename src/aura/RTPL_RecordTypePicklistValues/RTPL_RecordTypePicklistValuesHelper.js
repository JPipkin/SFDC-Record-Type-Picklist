({
	/**
     * check for errors from server
     * @param  {[type]} cmp      [description]
     * @param  {[type]} response [description]
     * @param  {[type]} mode     [description]
     * @return {[type]}          [description]
     */
    hlpCheckForError : function(cmp, response, mode) {
        try
        {
            var state = response.getState();
            if (state !== "SUCCESS")
            {
                var unknownError = true;
                if(state === 'ERROR')
                {
                    var errors = response.getError();
                    if (errors)
                    {
                        if (errors[0] && errors[0].message)
                        {
                            unknownError = false;
                            this.hlpShowToast(cmp,'Error', {'msg' : errors[0].message, 'mode' : mode});
                        }
                    }
                }
                if(unknownError)
                {
                    this.hlpShowToast(cmp, 'Error', {'msg' : 'Unknown error from Apex class', 'mode' : mode});
                }
                return false;
            }
            return true;
        }
        catch(e)
        {
            this.hlpShowToast(cmp, 'Error', {'msg' : e.message, 'mode' : mode});
            return false;
        }
    },

    /**
     * fires toast events
     * @param  {[type]} message [toast message]
     * @param  {[type]} mode    [toast mode]
     * @return {[type]}         [description]
     */
    hlpShowToast : function(component, ttype, args){
        console.error(args.msg);
        var tst = $A.get('e.force:showToast');
        var tobj = {
            'type' : ttype,
            'mode' : args.mode || 'dismissible',
            'message' : args.msg,
            'duration' : args.duration
        }
        tst.setParams(tobj);
        tst.fire();
    },
})