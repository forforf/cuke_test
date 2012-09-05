Feature: This feature can't be tested since background fails
  Displays skipped tests

  Background:
    Given a background

  Scenario: Skip this test
    Given a skipped feature and skipped scenario
    When the skipped scenario is skipped
    Then it should be skipped