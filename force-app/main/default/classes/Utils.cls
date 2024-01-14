//Used only for test deploys.
public without sharing class Utils {
    public static integer getSum(Integer a, Integer b) {
        return a+b;
    }

    public static void createRandomContact(){
        Contact c = new Contact(lastName = 'test');
        insert c;
    }

    public static void testPMDAlert(){
        List<Account> accs = [SELECT Id FROM Account];
        for(Account acc:accs){
            acc.Name = 'test';
            update acc;
        }
    }

    public static void createRandomAccount(){
        Account acc = new Account(Name = 'test');
        insert acc;
    }

    public static void createRandomCase(){
        Case c = new Case(Subject = 'Test');
        insert c;
    }
}