package malinowski.michal.questionnaire.domain.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;

@Entity
@Table(name = "respondents")
@Getter
@Setter
@ToString(callSuper = true)
public class Respondent extends User {
    @Column(nullable = false)
    private Integer yearOfBirth;

    @ManyToOne
    @JoinColumn(name = "village_id")
    private Village village;

    @Column(nullable = false)
    private Gender gender;

    @Column(nullable = false)
    private WorkStatus workStatus;
}
