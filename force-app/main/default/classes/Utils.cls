//Used only for test deploys
public without sharing class Utils {
    public static integer getSum(Integer a, Integer b) {
        return a+b;
    }

    //test PMD alert
    public static void emptyMethod(){
        List<Account> accs = [SELECT Id FROM Account LIMIT 10];
        for(Account acc:accs){
            Contact c = new Contact(lastName = 'test');
            insert c;
        }
    }
    
    public static void createRandomContact(){
        Contact c = new Contact(lastName = 'test');
        insert c;
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