package malinowski.michal.questionnaire.service.questionnaire;

import lombok.extern.slf4j.Slf4j;
import malinowski.michal.questionnaire.domain.dao.QuestionnaireDao;
import malinowski.michal.questionnaire.domain.model.Questionnaire;
import malinowski.michal.questionnaire.domain.repository.QuestionnaireRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
public class DefaultQuestionnaireService implements QuestionnaireService {

    private final QuestionnaireRepository questionnaireRepository;
    private final QuestionnaireDao questionnaireDao;

    public DefaultQuestionnaireService(QuestionnaireRepository questionnaireRepository, QuestionnaireDao questionnaireDao) {
        this.questionnaireRepository = questionnaireRepository;
        this.questionnaireDao = questionnaireDao;
    }

    @Override
    public List<Questionnaire> getQuestionnaires() {
        List<Questionnaire> data = questionnaireDao.findAll();

        log.debug("Dane z ankiet:{}", data);
        return data;
    }
}
