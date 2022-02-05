@RestResource(urlMapping='/Contacts/*')
global class ContactRESTService {
	@HttpGet
    global static Contact getContact() {
        RestRequest restReq = RestContext.request;
        
        String contactId = restReq.requestURI.substring(restReq.requestURI.lastIndexOf('/') + 1);
        
        return [SELECT Id, Name, Phone, Email, Title FROM Contact WHERE Id = :contactId];
    }
}