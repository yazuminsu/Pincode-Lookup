@isTest
private class PincodeControllerTest {

    @istest static void controllerTest() {
        Pagereference pageRef = Page.PincodeLookup;
        Test.setCurrentPage(pageRef);

        PincodeController pCon = new PincodeController();
        Test.setMock(HTTPCalloutMock.class, new PincodeCalloutMock());

        // String nextPage = pCon.doSearch().getUrl();
        // system.assertEquals('/apex/failure?error=noParam', nextPage);

        pCon = new PincodeController();
        pCon.setPincode(110085);
        pageRef = pCon.doSearch();
        system.assertEquals(pCon.result[0].Name, 'Avantika');
        pCon.getPincode();
        system.assertEquals(pCon.pincode, 110085);
        pCon = new PincodeController();
        pCon.getPostOffice();
        system.assert(pCon.result.isEmpty());


    }
}
