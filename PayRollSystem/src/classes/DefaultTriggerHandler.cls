public with sharing class DefaultTriggerHandler 
{ 
	public static boolean Stop=true; 
    /*public static void Triggerque1(List<account> Alist)
   {
	   account accClone = new account();
   	   for(account a: Alist)
   	   {  	   	  
   	   	 accClone = a.clone(false, true,true,true);
   	   }
   	   if(Stop) 
   	   {
   	   	 Stop=false;
   	   	 insert accClone;
   	   }
   }*/
   public static void DuplicateCheckOnContact(List<Contact> ContactList){
   	  map<string,boolean> m1=new map<string,boolean>();
      map<string,boolean> m2=new map<string,boolean>();
      for(contact c1: contactList)
      {
         m1.put(c1.email,false);
         m2.put(c1.phone,false);
      }
     for(Contact contactOld : [select Email, Phone 
                               From contact 
                               Where Email IN: m1.keySet() OR Phone IN: m2.keySet()]){
      if(m1.containsKey(contactOld.Email)){
    m1.put(contactOld.Email,true);
    }
    if(m2.containskey(contactOld.phone)){
    m2.put(contactOld.Phone,true);
    }
   }
  
   for(contact contactNew:contactList){
    if((m1.containsKey(contactNew.Email) && m1.get(contactNew.Email))==true){
    contactNew.addError('A Contact with the same email address or phone number already exists in system.'); 
    }
   
   }
  
   	  	
   
   }
   	   
     
   /*public static void CreateCase(List<EFT_Transaction_Status__c> TList)
   {
   	    List<Case> c1 =new List<Case>();  	 
   	    for(EFT_Transaction_Status__c T : TList)
        { 
    	    if(T.Method__c == 'Credit Card Address Verify' && T.Transaction_Status__c == 'Declined' && T.SalesHeader__r.Status__c == 'Open' )
    	    {
    	  
    	               Case cs= new Case();
    	               cs.AccountId = T.SalesHeader__r.Account__c;
    	               cs.ContactId = T.SalesHeader__r.Contact__c;    	
    	               cs.RecordType.Name = 'Assignment';
    	               cs.Origin = 'Internal'; 
    	               cs.OwnerId = '00G28000000ZPDu'; 
    	               cs.Reason = 'Address Did Not Verify'; 
    	               cs.Priority = 'High';
    	               cs.Status = 'New'; 
    	               cs.Subject= cs.Account.Name + ' ' + cs.Type;
    	               cs.Open_Sales_Order__c= T.SalesHeader__r.Name;
    	               cs.Transaction_Status__c=T.Transaction_Status__c;
    	               cs.Sales_Order_Name__c= T.SalesHeader__r.Id;
    	               c1.add(cs); 
    	               System.debug(trigger.new); 	
    	          }
    	       }
    	     
    	    
        
        if(Stop) 
   	   {
   	   	 Stop=false;
   	   	 insert c1;
   	   }
    }*/
}