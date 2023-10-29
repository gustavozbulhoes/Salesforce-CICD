//comment
public without sharing class Utils {
    public static integer getSum(Integer a, Integer b) {
        return a+b;
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

    public static void wait(Integer milisecToWait){
        Integer start = System.Now().millisecond();
        while(System.Now().millisecond()< start+milisecToWait){
        }
    }
}