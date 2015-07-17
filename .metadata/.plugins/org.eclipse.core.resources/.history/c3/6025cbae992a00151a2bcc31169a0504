public with sharing class Assignment10 {
    public void QueryPrintContact()
    {
          for(Contact con : [SELECT id, Name 
                             FROM Contact
                             LIMIT 50])
          {
          	System.debug('....'+con.id+'...'+con.Name);
          }
                             
    }
}