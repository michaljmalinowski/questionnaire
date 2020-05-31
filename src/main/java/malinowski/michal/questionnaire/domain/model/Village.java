package malinowski.michal.questionnaire.domain.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "villages")
@Getter
@Setter
@ToString(callSuper = true)
public class Village extends ParentEntity {
    private String name;
    private String code;
}
