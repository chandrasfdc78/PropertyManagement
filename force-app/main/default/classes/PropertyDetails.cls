public with sharing class PropertyDetails {
    @AuraEnabled(cacheable=true)
    public static list<property__c> getLatestProperty(){
        list<property__c> allPropertyList = new list<property__c>();
        allPropertyList = [SELECT Id,
                                    Additional_Room__c,
                                    Available_From__c,
                                    Carpet_Area__c,
                                    Covered_Area_sqft__c,
                                    Electricity_Status__c,
                                    Facing__c,
                                    For_Bachellor__c,
                                    For_Family__c,
                                    Furnishing_Available__c,
                                    Furnished_Type__c,
                                    Geo_Map__c,
                                    Landmark__c,
                                    Location__c,
                                    Area__c,
                                    street__c,
                                    state__c,
                                    country__c,
                                    Maintanance_Charge__c,
                                    No_of_Balcony__c,
                                    No_of_Bath_Room__c,
                                    No_of_Bed_room__c,
                                    Property_Description__c,
                                    Property_Main_Image__c,
                                    Property_Owner__c,
                                    Property_Video_URL__C,
                                    Name,
                                    Rent__c,
                                    Security_Deposit__c,
                                    Status__C,
                                    Verified__c,
                                    water_availability__c
                            FROM property__c
                            LIMIT 50
                            ];
     return allPropertyList;   
    }
}
