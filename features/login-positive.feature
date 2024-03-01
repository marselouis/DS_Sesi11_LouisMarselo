@digital-skola @login
Feature: Swag Labs - Login - Positive

  @positive
  Scenario: As a standard_user, I want to log in successfully
    Given Louis is on the login page
    When Louis login with "standard_user" credential
    And Louis should see home page

  Scenario: As a problem_user, I want to log in successfully
    Given Louis is on the login page
    When Louis login with "problem_user" credential
    And Louis should see home page
 
  Scenario: As a performance_glitch_user, I want to log in successfully
    Given Louis is on the login page
    When Louis login with "performance_glitch_user" credential
    And Louis should see home page

  Scenario: As a error_user, I want to log in successfully
    Given Louis is on the login page
    When Louis login with "error_user" credential
    And Louis should see home page

  Scenario: As a visual_user, I want to log in successfully
    Given Louis is on the login page
    When Louis login with "visual_user" credential
    And Louis should see home page
  
 