package malinowski.michal.questionnaire.service.registration;

import lombok.extern.slf4j.Slf4j;
import malinowski.michal.questionnaire.domain.model.user.Respondent;
import malinowski.michal.questionnaire.domain.repository.RespondentRepository;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Slf4j
public class DefaultRegistrationService implements RegistrationService {

    private final RespondentRepository respondentRepository;
    private final PasswordEncoder passwordEncoder;

    public DefaultRegistrationService(RespondentRepository respondentRepository, PasswordEncoder passwordEncoder) {
        this.respondentRepository = respondentRepository;
        this.passwordEncoder = passwordEncoder;
    }

    @Transactional
    @Override
    public void register(RegistrationData registrationData) {
        log.debug("Dane do rejestracji: {}", registrationData);
        Respondent respondent = new Respondent();
        respondent.setUsername(registrationData.getUsername());
        respondent.setYearOfBirth(Integer.valueOf(registrationData.getYearOfBirth()));
        respondent.setPassword(passwordEncoder.encode(registrationData.getPassword()));
        respondent.setEmail(registrationData.getEmail());
        respondent.setVillage(registrationData.getVillage());
        respondent.setGender(registrationData.getGender());
        respondent.setWorkStatus(registrationData.getWorkStatus());
        respondent.setActive(true);
        log.debug("Użytkownik do zapisania: {}", respondent);
        respondentRepository.save(respondent);
        log.debug("Zapisano użytkownika: {}", respondent);
    }
    }