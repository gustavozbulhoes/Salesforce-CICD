//comment
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
}