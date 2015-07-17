trigger CreateCaseOnInsertionOfTransaction on EFT_Transaction_Status__c (after insert) {
    if(Trigger.isafter && Trigger.isinsert)
    { 
    	 Que5HandlerClass.createCase(Trigger.new);
    }
}