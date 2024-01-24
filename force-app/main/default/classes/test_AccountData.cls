@isTest
public with sharing class test_AccountData {
    @isTest
    static void clearMessagesTest() {
        Account acc = new Account();
        acc.Name='Name';
        Insert acc;
        List<Account> accList = getContactData.getAccountDetails(acc.id);
        system.assertEquals(accList[0].id, acc.id, 'Error found');

    }
}