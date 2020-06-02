package malinowski.michal.questionnaire.domain.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;

/*@Entity
@Table(name = "users")*/
@MappedSuperclass
@Getter
@Setter
@ToString(exclude = "password", callSuper = true)
public class User extends ParentEntity {
    @Column(nullable = false, unique = true)
    private String email;
    @Column(nullable = false)
    private String password;
    @Column(nullable = false)
    private Boolean active;
    @Column(nullable = false)
    private String role;
}
