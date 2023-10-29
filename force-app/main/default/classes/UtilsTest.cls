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
    public static void waitSeconds(){
        Integer start = System.Now().millisecond();
        DateTime startDateTime = System.Now();
        while(System.Now().millisecond()< start+10000){ 
        }
        assert.areEqual(true,startDateTime.addSeconds(5)<system.Now(),'delay did not happen');
    }
}