package malinowski.michal.questionnaire.domain.repository;

import malinowski.michal.questionnaire.domain.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
}