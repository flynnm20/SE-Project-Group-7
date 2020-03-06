package com.example.faw.database.model;

import io.realm.Realm;
import io.realm.exceptions.RealmException;

public class RealmHelper {

    Realm realm;
    Boolean saved = null;
    public boolean save(final bugData bug){
        if(bug == null){
            saved =false;
        }
        else{
            realm.executeTransaction(new Realm.Transaction() {
                @Override
                public void execute(Realm realm) {
                    try{
                        bugData b = realm.copyToRealmOrUpdate(bug);
                        saved = true;
                    }catch(RealmException e){
                        e.printStackTrace();
                        saved = false;
                    }
                }
            });
        }
        return saved;
    }
}
