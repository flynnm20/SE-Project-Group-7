package com.example.faw.database.model;

import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.annotations.Required;

public class bugData extends RealmObject {
    @PrimaryKey
    @Required
    private String dataID;

    private String data;

    public bugData(String dataID, String data){
        this.dataID = dataID;
        this.data = data;
    }

    public String getDataID() {
        return dataID;
    }

    public void setDataID(String dataID) {
        this.dataID = dataID;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    @Override
    public String toString() {
        return "bugData{" +
                "dataID='" + dataID + '\'' +
                ", data='" + data + '\'' +
                '}';
    }
}
