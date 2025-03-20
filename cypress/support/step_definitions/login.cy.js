import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

const baseUrl = "https://www.saucedemo.com";

Given("the user visits the login page", () => {
  cy.visit(baseUrl);
});

When(
  "the user logs in with username {string} and password {string}",
  (username, password) => {
    cy.get('input[name="user-name"]').type(username);
    cy.get('input[name="password"]').type(password);
    cy.get('input[type="submit"]').click();
  }
);

Then("the user should be redirected to the inventory page", () => {
  cy.url().should("eq", "https://www.saucedemo.com/inventory.html");
  cy.get(".title").should("contain", "Products");
});

Then("the user should see an error message {string}", (errorMessage) => {
  cy.get(".error-message-container.error")
    .should("be.visible")
    .and("contain", errorMessage);
});

When("the user leaves the username field empty and enters password {string}", (password) => {
  cy.get('input[name="user-name"]').clear();
  cy.get('input[name="password"]').type(password);
  cy.get('input[type="submit"]').click();
});

When("the user enters username {string} and leaves the password field empty", (username) => {
  cy.get('input[name="user-name"]').type(username);
  cy.get('input[name="password"]').clear();
  cy.get('input[type="submit"]').click();
});

When("the user leaves both fields empty and submits the form", () => {
  cy.get('input[name="user-name"]').clear();
  cy.get('input[name="password"]').clear();
  cy.get('input[type="submit"]').click();
});

When("the user enters a password {string}", (password) => {
  cy.get('input[name="password"]').type(password);
});

Then("the password should be masked", () => {
  cy.get('input[name="password"]').should("have.attr", "type", "password");
});

When("the user enters a password {string} and clicks the visibility toggle", (password) => {
  cy.get('input[name="password"]').type(password);
  cy.get('button[class="password-toggle"]').click();
});

Then("the password should be visible", () => {
  cy.get('input[name="password"]').should("have.attr", "type", "text");
});

When("the user clicks the visibility toggle again", () => {
  cy.get('button[class="password-toggle"]').click();
});

Given("the user visits the login page on a mobile device", () => {
  cy.viewport(375, 667);
  cy.visit(baseUrl);
});

Then("the username and password fields should be visible", () => {
  cy.get('input[name="user-name"]').should("be.visible");
  cy.get('input[name="password"]').should("be.visible");
});
