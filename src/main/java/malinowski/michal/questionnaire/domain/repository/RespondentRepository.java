package malinowski.michal.questionnaire.domain.repository;

import malinowski.michal.questionnaire.domain.model.user.Respondent;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RespondentRepository extends JpaRepository <Respondent,Long> {
}
