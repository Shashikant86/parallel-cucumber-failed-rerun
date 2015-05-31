Feature: Prallel cucumber failed rerun
  In order to expolre parallel execution
  As a cucumber user
  I want to rerun my failed cucumber tests to see if it's genuine failure

Scenario: Apple Home Page

  Given I am on Apple home Page
  Then response code should be "200"
