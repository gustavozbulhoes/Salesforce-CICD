public with sharing class createPMDAlert {
    //test PMD alert
    public static void createContactForAccount(){
        List<Account> accs = [SELECT Id FROM Account LIMIT 10];
        List<Contact> cons = new List<Contact>();
        for(Account acc:accs){
            Contact c = new Contact(lastName = 'test',AccountId = acc.Id);
            cons.add(c);
        }
        insert cons;
    }
}