package database.model;

import io.realm.Realm;
import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;

public class bugData  extends RealmObject {

    @PrimaryKey
    private String id;

    private String data;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public  bugData(String id,String data){
        this.id = id;
        this.data=data;
    }

    public bugData(){

    }

}
