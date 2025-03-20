name: Cypress Cucumber Automation Project
description: >
  This project tests the login functionality of the https://www.saucedemo.com/ using:
  - Cucumber (Gherkin) for BDD
  - Mochawesome for generating test reports
  - 
The following libraries and tools were used in this project:
- Cypress - JavaScript End-to-End testing framework.
- @badeball/cypress-cucumber-preprocessor - Enables Cucumber with Cypress.
- @bahmutov/cypress-esbuild-preprocessor - Transpiles test files.
- Mochawesome - Generates HTML and JSON test reports.
- cypress-multi-reporters - Allows multiple reporters.

The following resources were referenced while completing this project:
- Cypress Official Documentation: https://docs.cypress.io
- Cucumber (Gherkin) Syntax Guide: https://cucumber.io/docs/gherkin/
- Mochawesome Configuration: https://www.npmjs.com/package/mochawesome
- Cypress + Cucumber Integration: https://github.com/badeball/cypress-cucumber-preprocessor

project_structure:
  - cypress/
    - e2e/
      - features/
        - LoginFeature.feature
    - reports/
    - support/
      - step-definitions/
        - login.cy.js
      - e2e.js
  - cypress.config.js
  - package.json
  - package-lock.json

installation:
  steps:
    - Clone the repository:
      command: git clone https://github.com/ASCabuyao/silverspin_qa_automation.git
    - Install dependencies:
      command: npm install

run_tests:
  steps:
    - Run all tests:
      command: npx cypress run
    - Open Cypress GUI:
      command: npx cypress open

view_reports:
  location: cypress/reports/mochawesome.html

The following libraries and tools were used in this project:
- Cypress - JavaScript End-to-End testing framework.
- @badeball/cypress-cucumber-preprocessor - Enables Cucumber with Cypress.
- @bahmutov/cypress-esbuild-preprocessor - Transpiles test files.
- Mochawesome - Generates HTML and JSON test reports.
- cypress-multi-reporters - Allows multiple reporters.

The following resources were referenced while completing this project:

Cypress Official Documentation: https://docs.cypress.io
Cucumber (Gherkin) Syntax Guide: https://cucumber.io/docs/gherkin/
Mochawesome Configuration: https://www.npmjs.com/package/mochawesome
Cypress + Cucumber Integration: https://github.com/badeball/cypress-cucumber-preprocessor
