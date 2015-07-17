public class Queryfunctions {
         //List<Account> Alist =  [SELECT Id, AccountNumber , Industry FROM  Account LIMIT 8];
//List<Lead> Llist =  [SELECT Id FROM  Lead LIMIT 8];
    public void listacc(){
        List<Lead> LeadList = [Select Id, Name, Status FROM Lead WHERE Status = 'Closed - Not Converted'];
          System.debug(LeadList);
        for(Lead L : LeadList){
            L.Status = 'Status changed';
        }
        Update LeadList;
        System.debug(LeadList);
    //Find all the Lead records having Status as Won & update the stage with New value        
        /* Set<Id> leadIds = new Set<Id>();
        for(Lead L : Llist)
             leadIds.add(L.Id);
        System.debug(leadIds);  */
    
      /* for(Account currAcc : Alist)
           System.debug(currAcc); // for each loop
         
       for(Integer i=0; i<Alist.size();i++)
            System.debug(Alist[i]);    //for loop
        Integer i=0;
        while(i<Alist.size()){                    //while loop
             System.debug(Alist[i]);
            i++;
        }*/
    }

}