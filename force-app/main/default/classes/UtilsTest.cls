@isTest
public class UtilsTest {
    @isTest
    public static void getSum() {
        Integer result = Utils.getSum(3,2);
        assert.areEqual(5, result,'5 was expected');
    }
}