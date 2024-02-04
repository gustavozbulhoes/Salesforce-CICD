//Used only for test deploys
public without sharing class Utils {
    public static integer getSum(Integer a, Integer b) {
        return a+b;
    }

    //test PMD alert
    public void integer emptyClass(){
        
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