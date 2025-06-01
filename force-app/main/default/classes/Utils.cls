//Used only to test deploys
public without sharing class Utils {
    public integer getSum(Integer a, Integer b) {
        return a+b;
    }

    public void createRandomContact(){
        Contact c = new Contact(lastName = 'test');
        insert c;
    }

    public void createRandomAccount(){
        Account acc = new Account(Name = 'test');
        insert acc;
    }

    public void createRandomCase(){
        Case c = new Case(Subject = 'Test');
        insert c;
    }
}