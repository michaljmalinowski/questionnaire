package malinowski.michal.questionnaire.domain.repository;

import malinowski.michal.questionnaire.domain.model.user.Worker;
import org.springframework.data.jpa.repository.JpaRepository;

public interface WorkerRepository extends JpaRepository<Worker, Long> {
}
