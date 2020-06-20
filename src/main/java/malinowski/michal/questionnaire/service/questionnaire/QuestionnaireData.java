package malinowski.michal.questionnaire.service.questionnaire;

import lombok.Data;
import lombok.ToString;
import malinowski.michal.questionnaire.domain.model.Village;

import java.time.LocalDateTime;
import java.util.List;

@Data
@ToString
public class QuestionnaireData {
    private String name;
    private String description;
    private List<Village> villages;
    private Short minimalAge;
    private Short maximalAge;
    private String genders;
    private String workStatuses;
    private Boolean active;
    private LocalDateTime startTime;
    private LocalDateTime endTime;
}
