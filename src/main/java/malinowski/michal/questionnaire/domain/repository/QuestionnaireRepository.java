package malinowski.michal.questionnaire.domain.repository;

import malinowski.michal.questionnaire.domain.model.Questionnaire;
import org.springframework.data.jpa.repository.JpaRepository;

public interface QuestionnaireRepository extends JpaRepository<Questionnaire, Long> {
}

