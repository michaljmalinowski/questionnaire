package malinowski.michal.questionnaire.web.controller;

import malinowski.michal.questionnaire.utils.SecurityUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class HomePageController {

    @GetMapping
    public String prepareHomePage(Model model) {
        model.addAttribute("username", SecurityUtils.username());
        return "home-page";
    }
}