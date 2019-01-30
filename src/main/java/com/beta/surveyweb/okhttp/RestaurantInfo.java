package com.beta.surveyweb.okhttp;

import com.beta.surveyweb.constant.ServerUrls;
import okhttp3.*;
import org.json.JSONObject;

import java.io.IOException;

public class RestaurantInfo {
    public static String requestRestaurantInfo(String restaurantId){
        OkHttpClient client = new OkHttpClient.Builder()
                .build();

        Request request = new Request.Builder()
                .url(ServerUrls.RESTAURANT_INFO_SERVER_URL + "/information/place/" + restaurantId)
                .get()
                .build();

        String name = "";

        try {
            Response response = client.newCall(request).execute();

            if(response.isSuccessful()) {
                System.out.println("@@@@ SUCCESS @@@@");
                JSONObject jsonObject = new JSONObject(response.body().string());
                name = jsonObject.getString("name");
            }
            else{
                System.out.println("@@@@ ERROR @@@@" + response.body().string());
            }

        } catch (IOException e) {
            e.printStackTrace();
        }

        return name;
    }

}
