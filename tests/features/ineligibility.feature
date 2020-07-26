Feature: Test the ineligibility screens

Try to get to the screens that show ineligibility.

Scenario: User is ineligible because they don't have a MA juvenile record
    Given I start the petitioner interview
    When I click the button "Next "
    And I should see the phrase "These questions are for sealing Massachusetts juvenile records."
    And I click the button "No"
    Then I should see the phrase "This tool can only help with sealing juvenile records in Massachusetts."

Scenario: User is ineligible because they don't have docket sheets and said they will come back later
    Given I start the petitioner interview
    When I click the button "Next "
    And I click the button "Yes"
    And I should see the phrase "Do you already have certified copies of the docket sheets for all of your juvenile cases?"
    And I click the button "No"
    And I should see the phrase "If you’re not a US citizen, it can be very important to have the copies for a hearing,"
    And I click the button "Yes, tell me more"
    And I should see the phrase "Having a copy of your Massachusetts criminal records can make it easier"
    And I click the button "I will come back to the form after ordering my docket sheets "
    Then I should see the phrase "We hope we could help a little."

Scenario: User is ineligible because they have open cases
    Given I start the petitioner interview
    When I click the button "Next "
    And I click the button "Yes"
    And I click the button "Yes"
    And I should see the phrase "Do you have any open criminal or juvenile cases right now anywhere in the USA?"
    And I click the button "Yes"
    Then I should see the phrase "Sorry, but because you have an open case you’re not eligible to get your juvenile record sealed."

Scenario: User is ineligible because they are on probation
    Given I start the petitioner interview
    When I click the button "Next "
    And I click the button "Yes"
    And I click the button "Yes"
    And I click the button "No"
    And I should see the phrase "Are you now on probation for any criminal or juvenile case in the USA"
    And I click the button "Yes"
    Then I should see the phrase "Sorry, but because you are on probation you’re not eligible to get your juvenile record sealed."

Scenario: User is ineligible because they have had juvenile cases in the past three years
    Given I start the petitioner interview
    When I click the button "Next "
    And I click the button "Yes"
    And I click the button "Yes"
    And I click the button "No"
    And I click the button "No"
    And I should see the phrase "Have you had any juvenile cases in any state in the USA"
    And I click the button "Yes"
    Then I should see the phrase "Sorry, but because you had a juvenile case in the USA in the past three years you’re not eligible to get your juvenile record sealed."

Scenario: User is ineligible because they have been in juvenile custody
    Given I start the petitioner interview
    When I click the button "Next "
    And I click the button "Yes"
    And I click the button "Yes"
    And I click the button "No"
    And I click the button "No"
    And I click the button "No"
    And I should see the phrase "Have you been in juvenile custody anywhere in the USA"
    And I click the button "Yes"
    Then I should see the phrase "Sorry, but because you have been in juvenile custody in the USA in the past three years you’re not eligible to get your juvenile record sealed."

Scenario: User is ineligible because they have convictions in adult court
    Given I start the petitioner interview
    When I click the button "Next "
    And I click the button "Yes"
    And I click the button "Yes"
    And I click the button "No"
    And I click the button "No"
    And I click the button "No"
    And I click the button "No"
    And I should see the phrase "Have you had any convictions in any adult court in the USA"
    And I click the button "Yes"
    Then I should see the phrase "Sorry, but because you were convicted in the USA (in a state or federally) in the past three years you’re not eligible to get your juvenile record sealed."

Scenario: User is ineligible because they have convictions in federal court
    Given I start the petitioner interview
    When I click the button "Next "
    And I click the button "Yes"
    And I click the button "Yes"
    And I click the button "No"
    And I click the button "No"
    And I click the button "No"
    And I click the button "No"
    And I click the button "No"
    And I should see the phrase "Have you had any convictions in any federal court"
    And I click the button "Yes"
    Then I should see the phrase "Sorry, but because you were convicted in the USA (in a state or federally) in the past three years you’re not eligible to get your juvenile record sealed."

Scenario: User is ineligible because they were in incarceration
    Given I start the petitioner interview
    When I click the button "Next "
    And I click the button "Yes"
    And I click the button "Yes"
    And I click the button "No"
    And I click the button "No"
    And I click the button "No"
    And I click the button "No"
    And I click the button "No"
    And I click the button "No"
    And I should see the phrase "Were you incarcerated in the USA"
    And I click the button "Yes"
    Then I should see the phrase "Sorry, but because you were incarcerated in the USA in the past three years you’re not eligible to get your juvenile record sealed."

Scenario: User is eligible
    Given I start the petitioner interview
    When I click the button "Next "
    And I click the button "Yes"
    And I click the button "Yes"
    And I click the button "No"
    And I click the button "No"
    And I click the button "No"
    And I click the button "No"
    And I click the button "No"
    And I click the button "No"
    And I click the button "No"
    Then I should see the phrase "We think you can probably seal your juvenile records."
