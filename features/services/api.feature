Feature: Verify the REST API
  As a QA
  I want to verify the REST API
  In order to show that I know how to use httparty

  @get_all_movies @service
  Scenario: GET verb in the endpoint /films
    Given I send the GET verb in the endpoint films
    Then will be returned status code "200"
    Then I show the title of all the movies

  @wrong_endpoint @service
  Scenario: GET verb in the endpoint /planets
    Given I send the GET verb in the endpoint planets
    When I store the count in a variable and a new GET using the variable
    Then will be returned status code error "404"
    Then will be returned message "Not found"

  @get_george_lucas_rick_mcCallum @service
  Scenario: display all titles from the George Lucas and Rick McCallum has participated
    Given I send the GET verb in the endpoint films
    Then will be returned status code "200"
    Then show all films from George Lucas and Rick McCallum
