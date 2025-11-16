*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
Setting the counter to a specific value works
    Click Button  Paina
    Click Button  Paina
    Page Should Contain  nappia painettu 2 kertaa
    Input Text  name=new_value  5
    Click Button  aseta
    Page Should Contain  nappia painettu 5 kertaa

Setting the counter to zero works
    Reset Counter
    Click Button  Paina
    Page Should Contain  nappia painettu 1 kertaa
    Input Text  name=new_value  0
    Click Button  aseta
    Page Should Contain  nappia painettu 0 kertaa

Setting the counter negative value is not allowed
    Reset Counter
    Click Button  Paina
    Page Should Contain  nappia painettu 1 kertaa
    Input Text  name=new_value  -3
    Click Button  aseta
    Page Should Contain  nappia painettu 1 kertaa

Setting the counter to a large value works
    Reset Counter
    Input Text  name=new_value  1000
    Click Button  aseta
    Page Should Contain  nappia painettu 1000 kertaa
