trigger QueOnAccount on Account (before update) 
	{
	if(Trigger.isbefore)
	{
		if(Trigger.isupdate)
		{
			 System.debug('This is a trigger to be exeecuted before update(old)'+Trigger.old);
			 System.debug('This is a trigger to be exeecuted before update(oldmap)'+Trigger.oldMap);
             System.debug('This is a trigger to be exeecuted after update(new)'+Trigger.new);
             System.debug('This is a trigger to be exeecuted after update(newmap)'+Trigger.newMap);
 		}		
	}
}