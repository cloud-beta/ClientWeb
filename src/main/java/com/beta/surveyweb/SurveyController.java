package com.beta.surveyweb;

import com.beta.surveyweb.okhttp.RestaurantInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class SurveyController {

    @GetMapping("/")
    public String hello(){
        return "index";
    }

    @GetMapping("/survey/{restaurantId}")
    public String getSurvey(@PathVariable("restaurantId") String restaurantId, Model model){
        String restaurantName = RestaurantInfo.requestRestaurantInfo(restaurantId);

        model.addAttribute("restaurantName", restaurantName);
        return "survey";
    }

    @PostMapping("/dosurvey")
    public String postSurvey(){
        //TODO 설문조사 정보 처리

        // success 페이지로 리턴
        return "success";
    }

}
