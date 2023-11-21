# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Resource              ../Resourcefile/common.robot
Suite Setup           Setup Browser
Suite Teardown        End suite


*** Test Cases ***
Entering a Contacts
    [Tags]            Contact
    Appstate          Home
    LaunchApp         Sales
    ClickText         Contacts
    UseTable          Item Number
    ${vname}=         GetCellText                 r2/c?Name         tag=a
    Log               ${vname}
    # Run Keyword If                              ('${lcostprrice}'=='$30.00') and ('${lmarkup}'=='40.00%')    Test Keyword 1
    Run Keyword If    '${vname}'=='Arthur Song'                     Test Keyword 1
    ...               ELSE                        Test keyword 2
    Sleep             10s



*** Keywords ***
Test Keyword 1
    Log To Console    Executed Keyword 1 - Expected Result
    ClickText         Contacts
    ClickText         New
    Log               Log Executed 1 - Expected Result
Test Keyword 2
    Log To Console    Executed Keyword 2 - Not Expected
    #ClickText         Intelligence View
   # ClickText         List View
    Log               Log Executed 2 - Not Expected

    #ClickUntil       New Contact                 New
    #UseModal         On
    #TypeText         Phone                       +917396637458
    #Picklist         Salutation                  Mr.
    #TypeText         First Name                  tara srinivas20051979
    #TypeText         Last Name                   chandika
    #ComboBox         Search Accounts...          GenePoint
    #TypeText         Email                       tvsh@gmail.com
    #TypeText         Title                       project16
    #TypeText         Mailing Street              hanuman nagar 4th line
    #TypeText         Mailing City                guntur
    #TypeText         Mailing State/Province      ap
    #TypeText         Mailing Zip/Postal Code     522006
    #TypeText         Mailing Country             india
    #TypeText         Other Street                vijayapuri colony
    #TypeText         Other City                  guntur
    #TypeText         Other State/Province        ap
    #TypeText         Other Zip/Postal Code       52206
    #TypeText         Other Country               india
    #TypeText         Fax                         7398878560
    #PickList         Lead Source                 Web
    #TypeText         Home Phone                  8987
    #ClickText        Birthdate                   anchor=Home Phone
    #DropDown         Pick a Year                 1979
    #ClickText        Previous                    Month
    #ClickText        Previous                    Month
    #ClickText        Previous                    Month
    #ClickText        20
    #TypeText         Other Phone                 987946
    #TypeText         Department                  testing department
    #TypeText         Assistant                   no assistant
    #TypeText         Asst. Phone                 00000034
    #TypeText         Description                 learning copado robotic testing
    #ClickText        Save                        partial_match=False
    #UseModal         Off
    #ClickText        Details

    # End creation of contacts
