//comment test
@isTest
public class UtilsTest {
    @isTest
    public static void getSum() {
        Integer result = Utils.getSum(3,2);
        assert.areEqual(5, result,'5 was expected');
    }

    @isTest
    public static void createRandomContact(){
        Utils.createRandomContact();
        List<contact> cs = [SELECT Id FROM Contact LIMIT 1];
        assert.areEqual(false,cs.isEmpty(),'contact was not created');
    }

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

    @isTest
    public static void wait(){
        Integer start = System.Now().millisecond();
        Utils.wait(300);
        assert.areEqual(true,start<system.Now().millisecond(),'delay did not happen');
    }
}