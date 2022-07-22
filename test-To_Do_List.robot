**Settings**
Library   Selenium2Library

**Variables**
${URL}      https://abhigyank.github.io/To-Do-List/
${BROWSER}            chrome
${DELAY}              0.5

**Keywords**
Open Todo List Website
    Open Browser     ${URL}    ${BROWSER}
    Title Should Be     To-Do List

Add New Task
    Click Element   (//span[@class="mdl-tabs__ripple-container mdl-js-ripple-effect"])[1]
    Wait Until Page Contains Element  id=new-task 
    Input Text      id=new-task       Test Add New Task
    Set Selenium Speed      ${DELAY}
    Wait Until Page Contains Element    //*[@id="add-item"]/button
    Click Element   //*[@id="add-item"]/button

Delete on To Do Task
    Click Element   (//span[@class="mdl-tabs__ripple-container mdl-js-ripple-effect"])[2]
    Set Selenium Speed      ${DELAY}
    Wait Until Page Contains Element    (//span[@class="mdl-button__ripple-container"])[1]
    Click Element   (//span[@class="mdl-button__ripple-container"])[1]


Complete on To Do Task 
    Click Element   (//span[@class="mdl-tabs__ripple-container mdl-js-ripple-effect"])[2]
    Set Selenium Speed      ${DELAY}
    Wait Until Page Contains Element    (//*[@id="incomplete-tasks"]/li/label/span[4])[1]
    Click Element   (//*[@id="incomplete-tasks"]/li/label/span[4])[1]

Delete on Completed Task
    Click Element   (//span[@class="mdl-tabs__ripple-container mdl-js-ripple-effect"])[3]
    Set Selenium Speed      ${DELAY}
    Wait Until Page Contains Element    (//span[@class="mdl-button__ripple-container"])[1]
    Click Element   (//span[@class="mdl-button__ripple-container"])[1]
    

**Test Cases**
1-Open Website
    Open Todo List Website
    

2-Action Add Task -> Complete -> Delete Complete Task
    Add New Task 
    Complete on To Do Task 
    Delete on Completed Task

3-Action Add Task -> Delete To Do Task
    Add New Task
    Delete on To Do Task

4-Close Website
    Close Browser

