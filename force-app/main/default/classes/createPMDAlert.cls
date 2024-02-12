public with sharing class createPMDAlert {
    //test PMD alert
    public static void pmdAlert(){
        List<Account> accs = [SELECT Id FROM Account LIMIT 10];
        for(Account acc:accs){
            Contact c = new Contact(lastName = 'test');
            insert c;
        }
    }
}