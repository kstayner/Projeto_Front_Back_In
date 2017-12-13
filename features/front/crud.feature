@front
Feature: CRUD Task
  In access the site's logged in area
  As a Site user
  I validate the inclusion edit and deletion of the task

  Scenario: Create a new task
    Given I have logged in website demosuiteondemandcom
    When I create a new task
    Then the new task is created successfully

  Scenario: Edit task
    Given I have logged in website demosuiteondemandcom
    When I edit a task
    Then the task is update successfully

  Scenario: Delete task
    Given I have logged in website demosuiteondemandcom
    When I delete a task
    Then the task is delete successfully
