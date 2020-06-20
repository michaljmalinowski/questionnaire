package malinowski.michal.questionnaire.domain.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.time.LocalDateTime;

@Entity
@Table(name = "questionnaires")
@Getter
@Setter
@ToString(callSuper = true)
public class Questionnaire extends ParentEntity {
    @Column
    private String name;

    @Column
    private String description;

    //@ManyToMany
    @Column
    private /*List<Village>*/ String villages;

    @Column
    private Short minAge;

    @Column
    private Short maxAge;

    private String genders;

    private String workStatuses;

    @Column
    private Boolean active;

    @Column
    private LocalDateTime startTime;

    @Column
    private LocalDateTime endTime;
}
