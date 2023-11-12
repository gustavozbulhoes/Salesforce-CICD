//Used only for test deploys.
@isTest
public class UtilsTestTwo{
    @isTest
    public static void getSum() {
        Integer result = UtilsTwo.getSum(3,2);
        assert.areEqual(5, result,'5 was expected');
    }

    @isTest
    public static void createRandomContact(){
        UtilsTwo.createRandomContact();
        List<contact> cs = [SELECT Id FROM Contact LIMIT 1];
        assert.areEqual(false,cs.isEmpty(),'contact was not created');
    }

    @isTest
    public static void createRandomAccount(){
        UtilsTwo.createRandomAccount();
        List<Account> accs = [SELECT Id FROM Account LIMIT 1];
        assert.areEqual(false,accs.isEmpty(),'account was not created');
    }

    @isTest
    public static void createRandomCase(){
        UtilsTwo.createRandomCase();
        List<Case> cases = [SELECT Id FROM Case LIMIT 1];
        assert.areEqual(false,cases.isEmpty(),'case was not created');
    }
}