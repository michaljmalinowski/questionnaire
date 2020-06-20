package malinowski.michal.questionnaire.domain.dao;

import malinowski.michal.questionnaire.domain.model.Questionnaire;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class QuestionnaireDao {
    @PersistenceContext
    private EntityManager entityManager;

    public Questionnaire getById(Long id) {
        return entityManager.find(Questionnaire.class, id);
    }

    public void save(Questionnaire entity) {
        entityManager.persist(entity);
    }

    public void update(Questionnaire entity) {
        entityManager.merge(entity);
    }

    public Questionnaire updateAndReturn(Questionnaire entity) {
        return entityManager.merge(entity);
    }

    public void remove(Questionnaire entity) {
        entityManager.remove(entityManager.contains(entity) ? entity : entityManager.merge(entity));
    }

    public List<Questionnaire> findAll() {
        return entityManager
                .createQuery("SELECT q FROM Questionnaire q", Questionnaire.class)
                .getResultList();
    }
}
