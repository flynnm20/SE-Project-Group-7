package com.example.faw.database;

import android.app.Application;
import com.example.faw.database.model.bugData;
import io.realm.Realm;
import io.realm.RealmConfiguration;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class MyApplication extends Application {

    @Override
    public void onCreate() {

      /*  String csvFile = "C:\\Users\\oisin\\Documents\\GitHub Repos\\Sweng\\SE-Project-Group-7\\testData.csv";
        BufferedReader br = null;
        String line = "";
        String cvsSplitBy = ",";
        String[] dataTest = new String[10];
        int index = 0;

        try {

            br = new BufferedReader(new FileReader(csvFile));
            while ((line = br.readLine()) != null) {

                // use comma as separator
                dataTest[index++] = line.split(cvsSplitBy);
            }
            for(int i=0; i<dataTest; i++){
                System.out.print(dataTest[i]+" "+(i%2==0?"\n":"");
            }

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (br != null) {
                try {
                    br.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

    } */

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
