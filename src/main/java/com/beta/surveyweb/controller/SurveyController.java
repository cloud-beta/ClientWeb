package com.beta.surveyweb.controller;

import com.beta.surveyweb.constant.ServerUrls;
import com.beta.surveyweb.model.Restaurant;
import com.beta.surveyweb.model.Survey;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpSession;

@Controller
public class SurveyController {

    public static final Logger logger = LoggerFactory.getLogger(SurveyController.class);

    @GetMapping("/")
    public String hello() {
        return "index";
    }

    @GetMapping("/survey")
    public String getSurvey(@RequestParam("restaurantId") String restaurantId, @RequestParam("phoneNumber") String phoneNumber, Model model, HttpSession session) {

        logger.info("get restaurantID {}, get phoneNumber : {}", restaurantId, phoneNumber);

        RestTemplate restTemplate = new RestTemplate();
        ResponseEntity<Restaurant> response = restTemplate.getForEntity(String.format(ServerUrls.RESTAURANT_INFO_SERVER_URL, restaurantId), Restaurant.class);
        if (response.getStatusCode().is2xxSuccessful()) {
            Restaurant restaurant = response.getBody();
            model.addAttribute("restaurantName", restaurant.getName());
        }
        model.addAttribute("phoneNumber", phoneNumber);
        session.setAttribute("phoneNumber", phoneNumber);
        return "survey";
    }

    @PostMapping("/dosurvey")
    public String postSurvey(HttpSession session, @ModelAttribute("surveyData") Survey.Data data) {
        RestTemplate restTemplate = new RestTemplate();
        logger.info("get survey : {}", data);
        Survey survey = new Survey(session.getAttribute("phoneNumber").toString(), data);
        ResponseEntity response = restTemplate.postForEntity("http://localhost:8081/survey/", survey, null);
        logger.info(response.toString());
        if (response.getStatusCode().is2xxSuccessful()) {

        }
        return "success";
    }
}
