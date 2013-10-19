## University Registration

Our app has in mind the future and present students of our universities,
where they have to spend a lot of time traveling, and registrating to:
    - admission exam
    -  place confirmatin
    - for a hosting place & the public meeting
    - annual enrolment
    - a scholarship

This is the usual scenario for a student:

```gherkin
Scenario: A highschool student process for applying to college
    Given I'm a highschool student
    And I live in another city than the university
    When I want to apply to the university
    Then I have to travel to the university city
    And spend a lot of time for registration
    Then I have to travel one more time to take the exam
    And if I want a hosting place, I will travel once more

Scenario: A student annual registration process
    Given I'm a college student
    And I live in another city
    When the school has to start
    Then I have to travel to my university
    And I have to register for a hosting place
    And I have to participate in a public meeting, which is in another day
    Then I have to enrol to the faculty, every year
    And I have to register for a scholarship
```

We want students to have a lean process, so that they have time to focus on important
things.

With our app all students will just have to:

```gherkin
Scenario:  A highschool student process for applying to college
    Given I'm a highschool student
    And I live in another city than my university
    When I want to apply to the university
    Then I visit the 'apply.university.com' site
    And I fill out a registration form
    Where I can select for a hosting place during the exam
    And after I submit the form, I receive a unique ticket

    When I have to take my exam
    Then I travel to the university
    And with my ticket I present myself to the exam
    And I will receive the feedback on my email
    And if I was accepted then I will receive a confirmation form
    Where I will complete the steps

    When I have to enrol
    Then I receive a form
    Where I submit my enrolment information
    And I can choose for a hosting place
    And for a scholarship
    Then I receive my information like class

    And I traveled only once
    And I communicated consistently and easy with the administration department
    And I didn't missed any steps
    And I was well informed
```

## Grails

We are 3 girls from the Faculty of Mathematics and Computer Science, University of Bucharest,
which meet as volunteers, and become friends.

We are passionate about engineering and people. We've been a part of all the registration
processes as students and as administration, and we felt the need to help the ones
involved in this long and sometimes confusing processes.
