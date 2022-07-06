@isTest
public with sharing class PincodeCalloutTest {
    @isTest
    static void testGetPostOfficePositive() {

        Integer testPincode = 110085;

        Test.setMock(HTTPCalloutMock.class, new PincodeCalloutMock());
        List<Post_Office__c> result = PincodeCallout.getPostOffice(testPincode);

        system.assert(result != null);

    }

    @isTest 
    static void testGetPostOfficeNegative(){

        Integer testPincode = 100000;

        Test.setMock(HTTPCalloutMock.class, new PincodeCalloutMock());
        List<Post_Office__c> result = PincodeCallout.getPostOffice(testPincode);

        ApexPages.Message[] pageMessages = ApexPages.getMessages();
        System.assertNotEquals(0, pageMessages.size());

        Boolean messageFound = false;

        for(ApexPages.Message message : pageMessages) {
            if(message.getSummary() == 'No Records Found'
                && message.getSeverity() == ApexPages.Severity.INFO) {
                messageFound = true;        
            }
        }

        System.assert(messageFound);

    }
}
