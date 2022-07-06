public with sharing class PincodeCallout {


    public static List<Post_Office__c> getPostOffice(Integer pincode){

        List<Post_Office__c> pOffices = new List<Post_Office__c>();
        List<Pincode_Wrapper.PostOffice> pwo = new List<Pincode_Wrapper.PostOffice>();

        APICallout__mdt callout = [SELECT Id, Endpoint__c FROM APICallout__mdt
                                    WHERE DeveloperName = 'StopPincodes'];
        String endPoint = callout.Endpoint__c + pincode;

        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(endPoint);
        request.setMethod('GET');
        HttpResponse response = http.send(request);

        system.debug(response.getStatusCode());

        Pincode_Wrapper pWrapper = Pincode_Wrapper.parse(response.getBody())[0];

        if(pWrapper.Status == 'Success'){
            for(Pincode_Wrapper.PostOffice po :pWrapper.PostOffice){
                pwo.add(po);
            }
        } else{
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.INFO, 'No Records Found'));
        }

        if(!pwo.isEmpty()){
            for(Pincode_Wrapper.PostOffice x :pwo){
                Post_Office__c y = new Post_Office__c();
                y.Name = x.Name;
                y.Pincode__c = Integer.valueOf(x.Pincode);
                y.Block__c = x.Block;
                y.Branch_Type__c = x.BranchType;
                y.Circle__c	= x.Circle;
                y.Country__c = x.Country;
                y.Delivery_Status__c = x.DeliveryStatus;
                y.Description__c = String.valueOf(x.Description);
                y.District__c = x.District;
                y.Division__c = x.Division;
                y.Region__c = x.Region;
                y.State__c = x.State;
                pOffices.add(y);    
            }
        }

        insert pOffices;

        return pOffices;

    }

}
