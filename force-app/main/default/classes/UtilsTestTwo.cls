@isTest
public class UtilsTestTwo {
    @isTest
    public static void createRandomAccount(){
        Utils.createRandomAccount();
        List<Account> accs = [SELECT Id FROM Account LIMIT 1];
        assert.areEqual(false,accs.isEmpty(),'account was not created');
    }

    @isTest
    public static void createRandomCase(){
        Utils.createRandomCase();
        List<Case> cases = [SELECT Id FROM Case LIMIT 1];
        assert.areEqual(false,cases.isEmpty(),'case was not created');
    }
}