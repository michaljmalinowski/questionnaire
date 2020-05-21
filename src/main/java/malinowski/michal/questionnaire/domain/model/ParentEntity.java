package malinowski.michal.questionnaire.domain.model;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;

//klasa bazowa dla encji - by nie zapominać o id, dzięki temu mapowanie idzie dalej
//to nie jest encja!
@MappedSuperclass
//poniżej ułatwienia z Lomboka
@Getter
@Setter
@EqualsAndHashCode (of={"id"})
@ToString(of={"id"})
public abstract class ParentEntity {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long id;
}
