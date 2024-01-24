public with sharing class getContactData {
   public static List<Account> getAccountDetails(String accId){
        List<Account> accIdList= new List<Account>();
        if(Schema.sObjectType.Account.fields.Name.isAccessible()){
            accIdList =[Select id,Name from Account where ID = :accId];
            if(accIdList.size()>0){
                for(Account acc : accIdList){
                    system.debug(acc);
                }
            }
        }
        return accIdList;
    }
    
}