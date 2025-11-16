*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser


*** Test Cases ***
Resetting the counter sets it back to zero
    Click Button  Paina
    Click Button  Paina
    Page Should Contain  nappia painettu 2 kertaa
    Click Button  Nollaa
    Page Should Contain  nappia painettu 0 kertaa

Reseting counter at zero keeps it at zero
    Page Should Contain  nappia painettu 0 kertaa
    Click Button  Nollaa
    Page Should Contain  nappia painettu 0 kertaa

Multiple resets keep the counter at zero
    Click Button  Nollaa
    Click Button  Nollaa
    Page Should Contain  nappia painettu 0 kertaa
