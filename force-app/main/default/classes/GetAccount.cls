public with sharing class etAccount {
   public static List<Account> getAccountDetails(String accId){
        if(Schema.sObjectType.Account.fields.Email.isAccessible()){
            List<Account> accIdList =[Select id,Email from Account where ID = '1234'];
            if(accIdList.size()>0){
                for(Account acc : accIdList){
                    system.debug(acc);
                }
            }
        }
        return accIdList;
    }
}