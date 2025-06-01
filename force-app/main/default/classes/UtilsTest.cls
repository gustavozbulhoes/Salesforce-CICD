//Used only for test deploys.
@isTest
private class UtilsTest {
    @isTest
    private static void getSum() {
        Integer result = Utils.getSum(3,2);
        assert.areEqual(5, result,'5 was expected');
    }

    @isTest
    private static void createRandomContact(){
        Utils.createRandomContact();
        List<contact> cs = [SELECT Id FROM Contact LIMIT 1];
        assert.areEqual(false,cs.isEmpty(),'contact was not created');
    }

    @isTest
    private static void createRandomAccount(){
        Utils.createRandomAccount();
        List<Account> accs = [SELECT Id FROM Account LIMIT 1];
        assert.areEqual(false,accs.isEmpty(),'account was not created');
    }

    @isTest
    private static void createRandomCase(){
        Utils.createRandomCase();
        List<Case> cases = [SELECT Id FROM Case LIMIT 1];
        assert.areEqual(false,cases.isEmpty(),'case was not created');
    }
}