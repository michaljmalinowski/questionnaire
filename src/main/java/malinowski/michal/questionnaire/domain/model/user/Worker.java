package malinowski.michal.questionnaire.domain.model.user;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import malinowski.michal.questionnaire.domain.model.Questionnaire;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "workers")
@Getter
@Setter
@ToString(callSuper = true)
public class Worker extends People {
    @Column(nullable = false, unique = true)
    private String email;
    @Column(nullable = false)
    private String role;

    @ManyToMany
    @JoinTable(name = "workers_questionnaires",
            joinColumns = @JoinColumn(name = "questionnaires_id"),
            inverseJoinColumns = @JoinColumn(name = "address_id"))
    private List<Questionnaire> questionnaires = new ArrayList<>();
}
