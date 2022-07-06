@isTest
global class PincodeCalloutMock implements HttpCalloutMock {

    global HttpResponse respond(HttpRequest request) {

        if(request.getEndpoint().endsWith('110085')){
            HttpResponse response = new HttpResponse();
            response.setBody('[{"Message":"Number of pincode(s) found:8","Status":"Success","PostOffice":[{"Name":"Avantika","Description":null,"BranchType":"Sub Post Office","DeliveryStatus":"Non-Delivery","Circle":"Delhi","District":"North Delhi","Division":"Delhi North","Region":"Delhi","Block":"NA","State":"Delhi","Country":"India","Pincode":"110085"},{"Name":"Naharpur","Description":null,"BranchType":"Branch Post Office","DeliveryStatus":"Delivery","Circle":"Delhi","District":"North West Delhi","Division":"Delhi North","Region":"Delhi","Block":"North West Delhi","State":"Delhi","Country":"India","Pincode":"110085"},{"Name":"Prashant Vihar","Description":null,"BranchType":"Sub Post Office","DeliveryStatus":"Non-Delivery","Circle":"Delhi","District":"North West Delhi","Division":"Delhi North","Region":"Delhi","Block":"Delhi","State":"Delhi","Country":"India","Pincode":"110085"},{"Name":"Rithala","Description":null,"BranchType":"Branch Post Office","DeliveryStatus":"Non-Delivery","Circle":"Delhi","District":"North West Delhi","Division":"Delhi North","Region":"Delhi","Block":"Delhi","State":"Delhi","Country":"India","Pincode":"110085"},{"Name":"Rohini Courts","Description":null,"BranchType":"Sub Post Office","DeliveryStatus":"Non-Delivery","Circle":"Delhi","District":"North West Delhi","Division":"Delhi North","Region":"Delhi","Block":"NA","State":"Delhi","Country":"India","Pincode":"110085"},{"Name":"Rohini sec-11","Description":null,"BranchType":"Sub Post Office","DeliveryStatus":"Non-Delivery","Circle":"Delhi","District":"North West Delhi","Division":"Delhi North","Region":"Delhi","Block":"Delhi","State":"Delhi","Country":"India","Pincode":"110085"},{"Name":"Rohini Sector 5","Description":null,"BranchType":"Sub Post Office","DeliveryStatus":"Non-Delivery","Circle":"Delhi","District":"North West Delhi","Division":"Delhi North","Region":"Delhi","Block":"Delhi","State":"Delhi","Country":"India","Pincode":"110085"},{"Name":"Rohini Sector-7","Description":null,"BranchType":"Sub Post Office","DeliveryStatus":"Delivery","Circle":"Delhi","District":"North West Delhi","Division":"Delhi North","Region":"Delhi","Block":"NA","State":"Delhi","Country":"India","Pincode":"110085"}]}]');
            response.setStatusCode(200);
            return response;
        }else if(request.getEndpoint().endsWith('100000')){
            HttpResponse response = new HttpResponse();
            response.setBody('[{"Message":"No records found","Status":"Error","PostOffice":null}]');
            response.setStatusCode(200);
            return response;
        }else{
            HttpResponse response = new HttpResponse();
            response.setBody('[{"Message":"Number of pincode(s) found:1","Status":"Success","PostOffice":[{"Name":"Avantika","Description":null,"BranchType":"Sub Post Office","DeliveryStatus":"Non-Delivery","Circle":"Delhi","District":"North Delhi","Division":"Delhi North","Region":"Delhi","Block":"NA","State":"Delhi","Country":"India","Pincode":null}]}]');
            response.setStatusCode(200);
            return response;
        }

    }
    
}
