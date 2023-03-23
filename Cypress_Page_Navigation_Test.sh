#!/bin/bash
# cat command to create a new file and parameters <<- EOM to add the following lines
# describe function to group the tests in cypress
# it function to define an individual test case in cypress
# cy.visit its like the nbavigation action reques
# cy.contanis funtion used to validate text within the page loaded and aldo .click action on the element
# finally cy.url().should("include", "/settings"); that allow us to chek the current url
# EOM parameter to close the file cypressTest.js 


cat > 'cypressTest.js' <<- EOM
/// <reference types="cypress" />

describe("cypressTest.js", () => {
  it("cypressTest.js", () => {
      cy.visit('https://coderbyte.com/profile');
      cy.contains("settings").click();
      cy.url().should("include", "/settings");
  });
});
EOM

# cat command to check the file content via terminal
cat cypressTest.js