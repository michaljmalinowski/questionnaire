package malinowski.michal.questionnaire.domain.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "respondents")
@Getter @Setter @ToString(exclude = "password", callSuper = true)
public class Respondent extends ParentEntity {

    @Column(nullable = false, unique = true)
    private String email;
    @Column(nullable = false)
    private String password;
    @Column(nullable = false)
    private Integer yearOfBirth;
}
