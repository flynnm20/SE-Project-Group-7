package com.example.faw.database;

import android.app.Application;

import com.example.faw.database.model.bugData;

import io.realm.Realm;
import io.realm.RealmConfiguration;

public class MyApplication extends Application {

    @Override
    public void onCreate() {
        final String dummyId = "rnad";
        final String dummmyInfo = " The fall armyworm (Spodoptera frugiperda) is a species in the order Lepidoptera and is the larval life stage of a fall armyworm moth";
        super.onCreate();
        Realm.init(this);
        RealmConfiguration config = new RealmConfiguration.Builder().initialData(new Realm.Transaction() {
            @Override
            public void execute(Realm realm) {
                bugData b = realm.createObject(bugData.class);
                b.setDataID(dummyId);
                b.setData(dummmyInfo);
            }
        }).deleteRealmIfMigrationNeeded().name("realm.db").build();
        Realm.setDefaultConfiguration(config);
    }
}
