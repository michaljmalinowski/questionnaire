# questionnaire

Cel - aplikacja do obslugi formularzy ankietowych

Technologie:
* wysyłanie maila,
* używanie tokenów jednorazowych (przy rejestracji)
* spring

Odbiorcy:
* administratorzy (users-admin):
    * administrują użytkownikami zaufanymi
    * dodawanie/usuwanie administratorów 
* użytkownicy zaufani(users-user):
    * zajmują się obsługą ankiet (tworzenie, edycja, kasowanie)
    * po zakończeniu ankiety dostają gotowe analizy na e-mail
    * mają wgląd w anonimizowane wypełnione ankiety
    * mogą edytować model analiz odpowiedzi
* ankietowani(respondents):
    * mają dostęp do wypełnienia formularza
    * podczas rejestracji wymagany e-mail i metryczka
        * r.urodzenia,
        * miejsce zamieszkania (woj,pow,gmina,miejscowość - lista z BDO przerobiona na bazę?)
        * forma zatrudnienia (student/uczeń/pracujący/emeryt+rencista/bezrobotny)
    * jeśli wyrażą zgodę, dostaną informację o nowych ankietach dla ich meryczki
* każdy - może zobaczyć formularz:
    * przy zatwierdzaniu wymagany mail (do wysłania potwierdzenia), opcja założenia konta


* Cel projektu - 1,3 zdania opisu biznesowego
* Odbiorca projektu-użytkownik i admin
* Podział funkcjonalny na części
    * samodzielna rejestracja respondenta (potwierdzenie mail - token)
        [/respondent/register](/respondent/register)
    * logowanie respondenta (sesja)
    [/respondent/login](/respondent/login)
    * logowanie user/admin (sesja)
    [/user/login](/user/login)
    * panel respondenta
        * moduł przeglądu wypełnionych ankiet (możliwość edycji)
        * moduł przeglądu ankiet filtrowanych
        * moduł edycji danych
    * panel user/admin
        * moduł ogólny 
            * panel użytkownika (edycja danych profilu)
            * panel ankiet (dodawanie/edycja/usuwanie)
            * panel edycji ankiety (dodawanie/edycja/usuwanie pytań i odpowiedzi)
            * panel wypełnionych ankiet (wyniki)
        * moduł administratora
            * edycja użytkowników(dodawanie / edycja/ usuwanie)
                * przy dodawaniu jednorazowy token do logowania wysyłany na maila
            * autoryzacja publikowania i zamykania ankiet
    * strona główna
    * przegląd ankiet
* kryteria akceptacji części
* zakres projektu na podstawie czasu

na Githubie dawać dużo rzeczy i comitów co chwile

model domeny biznesowej (nie skopać) - przemyśleć układ

warstwy:
* config
* domain
    * model
    * dao
    * repositories
* services
* dto
* controllers
    * web
    * rest (dodatek)

css - olać, bo ważniejsza jest zawartość niż super widok z niczym (ewentualnie nic)

service layer -> wygodniej niż domenowy

najpierw zrobić encje