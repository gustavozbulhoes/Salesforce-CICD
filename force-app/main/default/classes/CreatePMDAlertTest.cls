//Tests on PR. This class should be not deployed.
@isTest
public class CreatePMDAlertTest {
    @TestSetup
    static void makeData(){
        Account acc = new Account(Name = 'test');
        insert acc;
    }

    @isTest
    static void createContactForAccount() {
        createPMDAlert.createContactForAccount();
        Account acc = [SELECT Id,(SELECT Id FROM Contacts) FROM Account WHERE Name = 'test'];
        assert.areEqual(1,acc.Contacts.size(),'Contact was not created as expected');
    }
}