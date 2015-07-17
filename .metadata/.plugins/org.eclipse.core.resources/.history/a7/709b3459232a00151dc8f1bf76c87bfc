public class Day10 {
    List<Contact> conList =[Select Id, Name From Contact Limit 50];
    public void question1(){
        System.debug(conList);
    }
        public void question2(){
        List<User> userList =[ Select Id, Name From User Where IsActive = TRUE ];
        System.debug(userList);
        Map<Id, User> userMap= new Map<Id, User>();
        for(User u: userList){
            userMap.put(u.id, u);
        
        }
        }
    public void question3(){
        Map<Id, Account> Accountmap =  new Map<Id, Account>();
       // System.debug(Accountmap);
         Map< String,Id> Accountmap2 =  new Map< String,Id>();
        //System.debug(Accountmap2);
    }
    public void question4(){
         List<Account> L1 = [Select Id, Name From Account Where Enrollment_Year__c includes ('2010') ];
        System.debug(L1);
         List<Account> L2 = [Select Id, Name From Account Where Enrollment_Year__c includes ('2013','2014') ];
        System.debug(L2);
    }
     public void question5(){
            
        List<Account> L3 = [select name , Billing_State__c from Account  where Billing_State__c  not in ('Maharashtra', 'Kerala') ORDER by Billing_State__c DESC nulls last limit 1000];
         System.debug(L3);
        }
    public void question6(){
      list<Opportunity> l4= [select name,id, amount  from Opportunity  where amount > 10000 ORDER by  CreatedDate limit 100 offset 2 all rows];
       System.debug(l4);  
    }
}