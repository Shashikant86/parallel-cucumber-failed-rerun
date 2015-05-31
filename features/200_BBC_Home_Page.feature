Feature: Prallel cucumber failed rerun
  In order to expolre parallel execution
  As a cucumber user
  I want to rerun my failed cucumber tests to see if it's genuine failure

Scenario: BBC Home Page

  Given I am on the BBC home page
  Then response code should be "200"
