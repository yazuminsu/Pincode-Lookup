public with sharing class PincodeController {

    @testVisible
    Integer pincode;
    @testVisible
    List<Post_Office__c> result;

    public List<Post_Office__c> getPostOffice(){
        return result;
    }

    public Integer getPincode(){
        return pincode;
    }

    public void setPincode(Integer p){
        pincode = p;
    }

    public Pagereference doSearch(){

        result = [SELECT Id, Pincode__c, Name, Block__c, Branch_Type__c, Circle__c, Country__c, Delivery_Status__c, Description__c, District__c, Division__c, Region__c, State__c 
                    FROM Post_Office__c
                    WHERE Pincode__c= :pincode];
        if(result.isEmpty()){
            List<Post_Office__c> poFromCallout = PincodeCallout.getPostOffice(pincode);
            result = poFromCallout;
        }
        
        return null;
    }



}
