*** Settings ***

Documentation   PeeringDB Search

*** Variables ***

${URL}          https://www.peeringdb.com/
${QUERY}        15169

*** Keywords ***

Open PeeringDB Page
    Open Browser                ${URL}  ${BROWSER}
    Title Should Be             PeeringDB

Input PeeringDB Form
    Input Text                  search   ${QUERY}
    Press Key                   search   \\13

Click PeeringDB Link
    Click Link                  Google LLC (15169)

Show PeeringDB Result
    Page Should Contain         google          
