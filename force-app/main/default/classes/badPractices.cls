public without sharing class badPractices {
    public static void badPractices() {
        List<Account> accs = [SELECT Id FROM Account LIMIT 10];
        for(Account acc:accs){
            acc.name = 'test';
            update acc;
        }
    }
}