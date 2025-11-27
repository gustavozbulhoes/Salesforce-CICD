//Used only to test deploys.
@IsTest
public class UtilsTest {
    @IsTest
    public static void createRandomContact(){
        Utils.createRandomContact();
        List<contact> cs = [SELECT Id FROM Contact WHERE lastName = 'test' LIMIT 1];
        assert.areEqual(false,cs.isEmpty(),'contact was not created');
    }

    @IsTest
    public static void createRandomAccount(){
        Utils.createRandomAccount();
        List<Account> accs = [SELECT Id FROM Account LIMIT 1];
        assert.areEqual(false,accs.isEmpty(),'account was not created');
    }

    @IsTest
    public static void createRandomCase(){
        Utils.createRandomCase();
        List<Case> cases = [SELECT Id FROM Case LIMIT 1];
        assert.areEqual(false,cases.isEmpty(),'case was not created');
    }
}