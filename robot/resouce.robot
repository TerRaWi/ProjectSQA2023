*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${SERVER}         127.0.0.1:8000
${DELAY}          0
${Home}           http://${SERVER}/
${LOGIN URL}      http://${SERVER}/login
${Das URL}        http://${SERVER}/dashboard
${Success URL}    http://${SERVER}/dashboard
${userpro}        http://${SERVER}/profile
${Manage F}       http://${SERVER}/funds
${Research P}     http://${SERVER}/researchProjects
${VALID username}
${VALID pass}
${VALID fname_en}
${VALID fname_th}
${VALID lname_en}
${VALID lname_th}
${VALID email}
${VALID project_year} 
${VALID project_name}
${VALID academic_ranks_en}
${VALID academic_ranks_th}
${VALID olepassword}
${VALID newpassword}
${VALID cnewpassword}
${VALID budget}
${VALID start_date} 
${VALID end_date} 
${VALID Note} 
${EMPLY PASSWORD}    
${VALID expert_name}
${VALID b_uname}
${VALID b_qua_name}
${VALID b_year}
${VALID m_uname}
${VALID m_qua_name }
${VALID m_year }
${VALID d_uname} 
${VALID d_qua_name}
${VALID d_year}
${VALID fund_name}
${VALID support_resource}

# ${retry}      



*** Keywords ***
Open Browser To Home
    Open Browser    ${Home}
    Maximize Browser Window

Open Browser To Login
    Open Browser    ${LOGIN URL}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}

Input username
    [Arguments]    ${username}
    Input Text    username    ${username}

Input password
    [Arguments]    ${pass}
    Input Text    password    ${pass}

Input fname_en
    [Arguments]    ${fname_en}
    Input Text    fname_en    ${fname_en}
    
Input lname_en
    [Arguments]    ${lname_en}
    Input Text    lname_en    ${lname_en}
    
Input fname_th
    [Arguments]    ${fname_th}
    Input Text    fname_th    ${fname_th}

Input lname_th
    [Arguments]    ${lname_th}
    Input Text    lname_th    ${lname_th}

Input email
    [Arguments]    ${email}
    Input Text    email    ${email} 

Input academic_ranks_en
    [Arguments]    ${academic_ranks_en}
    Input Text    academic_ranks_en    ${academic_ranks_en}    

Input academic_ranks_th
    [Arguments]    ${academic_ranks_th}
    Input Text    academic_ranks_th    ${academic_ranks_th}  

Input oldpassword
    [Arguments]    ${oldpassword}
    Input Text    oldpassword    ${oldpassword}  

Input newpassword
    [Arguments]    ${newpassword}
    Input Text    newpassword    ${newpassword} 

Input cnewpassword
    [Arguments]    ${cnewpassword}
    Input Text    cnewpassword    ${cnewpassword} 

Input project_name
    [Arguments]    ${project_name}
    Input Text    project_name   ${project_name} 
Input project_year
    [Arguments]    ${project_year}
    Input Text    project_year   ${project_year} 

Input budget
    [Arguments]    ${budget}
    Input Text    budget  ${budget} 

Input start_date
    [Arguments]    ${start_date}
    Input Text    start_date  ${start_date} 

Input end_date 
    [Arguments]    ${end_date}
    Input Text    end_date   ${end_date} 

Input Note
    [Arguments]    ${VALID Note} 
    Input Text    Note   ${VALID Note}
Input expert_name
    [Arguments]    ${VALID expert_name}
    Input Text    expert_name   ${VALID expert_name}


Input b_uname
    [Arguments]    ${VALID b_uname}
    Input Text    b_uname   ${VALID b_uname}

Input b_qua_name
    [Arguments]    ${VALID b_qua_name}
    Input Text    b_qua_name   ${VALID b_qua_name}

Input b_year
    [Arguments]    ${VALID b_year}
    Input Text    b_year    ${VALID b_year}

Input m_uname
    [Arguments]    ${VALID m_uname}
    Input Text    m_uname    ${VALID m_uname}

Input m_qua_name 
    [Arguments]    ${m_qua_name }
    Input Text    m_uname    ${m_qua_name }

Input m_year  
    [Arguments]    ${VALID m_year }
    Input Text    m_year   ${VALID m_year }

Input d_uname
    [Arguments]    ${VALID d_uname }
    Input Text    d_uname   ${VALID d_uname }

Input d_qua_name
    [Arguments]    ${VALID d_qua_name }
    Input Text    d_qua_name   ${VALID d_qua_name}

Input d_year
    [Arguments]    ${VALID d_year }
    Input Text    d_year   ${VALID d_year}

Input fund_name
    [Arguments]    ${VALID fund_name}
    Input Text    fund_name   ${VALID fund_name}

Input support_resource
    [Arguments]    ${VALID support_resource}
    Input Text    support_resource  ${VALID support_resource}

Submit Login
    Click Button   Log In
Dasgboard click
    Click Button    sidebar

funds click
    Click Button    me-2

# Submit update!!
#    Click Button   update!!

Dashboard Page Should Be Open
    Location Should Be    ${Das URL}

Login Page Should Be Open
    Location Should Be    ${LOGIN URL}

User Pro Should Be Open
    Go To     ${userpro}

Manage Page Should Be Open
    Go To    ${Manage F} 

Research Page Should Be Open
    Go To    ${Research P} 


Change_pic click
    Click Element    css:#change_picture_btn

Choose ff
    Choose File    css:#admin_image     C:\Users\User\Pictures\jan.jpg