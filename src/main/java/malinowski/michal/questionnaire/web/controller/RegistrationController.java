package malinowski.michal.questionnaire.web.controller;

import lombok.extern.slf4j.Slf4j;
import malinowski.michal.questionnaire.service.registration.RegistrationData;
import malinowski.michal.questionnaire.service.registration.RegistrationService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
@RequestMapping("/register") @Slf4j
public class RegistrationController {

    private final RegistrationService registrationService;

    public RegistrationController(RegistrationService registrationService) {
        this.registrationService = registrationService;
    }

    @GetMapping
    public String prepareRegistrationPage(Model model) {
        model.addAttribute("registrationData", new RegistrationData());
        return "registration/form";
    }

    @PostMapping
    public String processRegistrationData(@Valid RegistrationData registrationData, BindingResult errors) {
        log.debug("Dane do rejestracji: {}", registrationData);
        if (errors.hasErrors()) {
            log.debug("Błędy w danych do rejestracji: {}", errors);
            return "registration/form";
        }
        registrationService.register(registrationData);
        log.debug("Poprawnie zarejestrowano dane: {}", registrationData);
        return "registration/success";
    }

}