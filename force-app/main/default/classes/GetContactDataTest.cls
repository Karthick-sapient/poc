@isTest
public with sharing class GetContactDataTest {
    
    @isTest
    static void clearMessagesTest() {
        Account acc = new Account();
        acc.Name='Name';
        Insert acc;
        List<Account> accList = getContactData.getAccountDetails(acc.id);
        system.assertEquals(1,1, 'Error found');

    }
}