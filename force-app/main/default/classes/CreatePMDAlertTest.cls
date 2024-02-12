//Tests on PR. This class should be not deployed.
@isTest
public class CreatePMDAlertTest {
    @TestSetup
    static void makeData(){
        Account acc = new Account(Name = 'test');
        insert acc;
    }

    @isTest
    static void pmdAlertTest() {
        createPMDAlert.pmdAlert();
    }
}