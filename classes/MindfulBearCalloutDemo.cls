/**
 * @description       : 
 * @author            : Ben Learn
 * @group             : 
 * @last modified on  : 02-04-2022
 * @last modified by  : Ben Learn
**/
public class MindfulBearCalloutDemo {
    static final String ORG_ENDPOINT = 'https://[trailhead-org-domain]-dev-ed.my.salesforce.com/';
    static final String SECURITY_TOKEN = '[user security token]';
    static final String PASSWORD = '[user password]';
    static final String CLIENT_ID = '[connected app consumer id]';
    static final String CLIENT_SECRET = '[connected app consumer secret]';
    
    public static String authorize() {
        Http http = new Http();
        
        HttpRequest authorizationRequest = new HttpRequest();            
        authorizationRequest.setEndpoint(ORG_ENDPOINT + 'services/oauth2/token');
        authorizationRequest.setMethod('POST');
        authorizationRequest.setBody('grant_type=password&client_id=' + CLIENT_ID + '&client_secret=' + CLIENT_SECRET + '&username=bowser@aol102121.com&password=' + PASSWORD + 
                                     SECURITY_TOKEN + '&format=json');
        
        HttpResponse response = http.send(authorizationRequest);

        if(response.getStatusCode() == 200) {
            Object responseBody = JSON.deserializeUntyped(response.getBody());
            Map<String, Object> responseMap = (Map<String, Object>) responseBody;
            return String.valueOf(responseMap.get('access_token'));
        }
        
        return null;
    }
    
    public static void getContact() {
        String accessToken = authorize();
        
        Http http = new Http();
        
        HttpRequest serviceRequest = new HttpRequest();
        serviceRequest.setEndpoint(ORG_ENDPOINT + 'services/apexrest/Contacts/[id of contact you want to retrieve]');
        serviceRequest.setMethod('GET');
        serviceRequest.setHeader('Authorization', 'Bearer ' + accessToken);
        
        HttpResponse response = http.send(serviceRequest);
        
        if(response.getStatusCode() == 200) {
            System.debug(response.getBody());
        }
        
    }
}