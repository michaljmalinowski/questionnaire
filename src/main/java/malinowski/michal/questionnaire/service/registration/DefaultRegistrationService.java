package malinowski.michal.questionnaire.service.registration;

import lombok.extern.slf4j.Slf4j;
import malinowski.michal.questionnaire.domain.model.User;
import malinowski.michal.questionnaire.domain.repository.UserRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service @Slf4j
public class DefaultRegistrationService implements RegistrationService {

    private final UserRepository userRepository;

    public DefaultRegistrationService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Transactional
    @Override
    public void register(RegistrationData registrationData) {
        log.debug("Dane do rejestracji: {}", registrationData);
        User user = new User();
        user.setUsername(registrationData.getUsername());
        user.setPassword(registrationData.getPassword());
        user.setEmail(registrationData.getEmail());
        user.setActive(true);
        log.debug("Użytkownik do zapisania: {}", user);
        userRepository.save(user);
        log.debug("Zapisano użytkownika: {}", user);
    }
}
