package malinowski.michal.questionnaire.domain.model.user;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import malinowski.michal.questionnaire.domain.model.Questionnaire;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "respondents")
@Getter
@Setter
@ToString(callSuper = true)
public class Respondent extends People {

    @Column(nullable = false)
    private String email;
    @Column(nullable = false, unique = true)
    private String username;

    @Column(nullable = false)
    private Integer yearOfBirth;

    //    @ManyToOne
//    @JoinColumn(name = "village_id")
    @Column(nullable = false)
    private String village;

    @Column(nullable = false)
    private String gender;

    @Column(nullable = false)
    private String workStatus;

    @ManyToMany
    private List<Questionnaire> questionnaires = new ArrayList<>();
}