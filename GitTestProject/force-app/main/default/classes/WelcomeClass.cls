@RestResource(urlMapping='/v1/welcome/*')
global with sharing class WelcomeClass{
    global static String WELCOME_MESSAGE = ' Welcome to Apex Rest resource tutorial';
    
    @httpGet
    global static string getWelcomeMethod(){
        return WELCOME_MESSAGE;
      }
     @httpPost
    global static string postWelcomeMethod(){
        return WELCOME_MESSAGE + ' this is post method';
      }
     @httpPatch
    global static string patchWelcomeMethod(){
        return WELCOME_MESSAGE + 'this is patch method';
      }
      }