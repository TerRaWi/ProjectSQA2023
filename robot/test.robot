*** Settings ***
Documentation    resouce flie wih reusable keyword and varibles.

Resource        resouce.robot


*** Test Cases ***

#-----------Login Test-------------#
#Login By admin.test@gmail.com

TC_Login01
    Open Browser To Login
    Input username     admin.test@gmail.com
    Input password     12345678
    Submit Login
    Sleep   1s
    Dashboard Page Should Be Open
    [Teardown]    Close Browser

TC_Login02
    Open Browser To Login
    Input username     admin.t@gmail.com
    Input password     12345678
    Submit Login
    Sleep   1s
    Login Page Should Be Open
    [Teardown]    Close Browser

TC_Login03
    Open Browser To Login
    Input username     admin.test@gmail.com
    Input password     12345678
    Submit Login
    Sleep   1s
    Login Page Should Be Open
    [Teardown]    Close Browser

TC_Login04
    Open Browser To Login
    Input username     admin@gmail.com 
    Input password     1356789
    Submit Login
    Sleep   1s
    Login Page Should Be Open
    [Teardown]    Close Browser

TC_Login05
    FOR    ${i}    IN RANGE    4 
    Log    This is iteration ${i}
    Open Browser To Login
    Input username     admin@gmail.com 
    Input password     1356789
    Submit Login
    Sleep   ${DELAY}
    Login Page Should Be Open
    Log    Current value of i is ${i}
    END
    [Teardown]    Close Browser

TC_Login06
    FOR    ${i}    IN RANGE    4 
    Log    This is iteration ${i}
    Open Browser To Login
    Input username     admin.test 
    Input password     12345678
    Submit Login
    Sleep   ${DELAY}
    Login Page Should Be Open
    Log    Current value of i is ${i}
    END
    [Teardown]    Close Browser

TC_Login07
    FOR    ${i}    IN RANGE    4 
    Log    This is iteration ${i}
    Open Browser To Login
    Input username     admin.test@gmail.com 
    Input password     ${EMPTY}  
    Submit Login
    Sleep   ${DELAY}
    Login Page Should Be Open
    Log    Current value of i is ${i}
    END
    [Teardown]    Close Browser


#------------------#Table update User data---------------------# 
TC_PF01
     Open Browser To Login
     Input username    pusadee@kku.ac.th
     Input Password    123456789
     Submit Login
     Dashboard Page Should Be Open
     User Pro Should Be Open
     Choose File    name=admin_image    C:\Users\User\Pictures\jan.jpg
     Click Element  id:ijabo-cropper-cropBtn
     [Teardown]    Close Browser

TC_PF02
     Open Browser To Login
     Input username    pusadee@kku.ac.th
     Input Password    123456789
     Submit Login
     Dashboard Page Should Be Open
     User Pro Should Be Open
     Click Element     account-tab 
     Click Element     title_name_en
     Select From List by Value   css=select[name='title_name_en']    Miss
     Input fname_en    Pusadee    # robotcode: ignore
     Input lname_en    Seresangtakul    # robotcode: ignore
     Input fname_th    พุธษดี    # robotcode: ignore
     Input lname_th    ศิริแสงตระกูล     # robotcode: ignore
     Input Email       pusadee@kku.ac.th    # robotcode: ignore
     Select From List by Value    css=select[name='academic_ranks_en']    Assistant Professor
     Select From List by Value    css=select[name='academic_ranks_th']    ผู้ช่วยศาสตราจารย์
     Submit Form    id=AdminInfoForm  
    [Teardown]    Close Browser


TC_PF03
     Open Browser To Login
     Input username    pusadee@kku.ac.th
     Input Password    123456789
     Submit Login
     User Pro Should Be Open
     Click Element    password-tab 
     Input oldpassword    12345678    # robotcode: ignore
     Input newpassword    1234567890    # robotcode: ignore
     Input cnewpassword   1234567890    # robotcode: ignore
     Submit Form    id=AdminInfoForm
     User Pro Should Be Open
    [Teardown]    Close Browser

TC_PF04
     Open Browser To Login
     Input username    pusadee@kku.ac.th
     Input Password    123456789
     Submit Login
     User Pro Should Be Open
     Click Element    password-tab 
     Input oldpassword    123456789    # robotcode: ignore
     Input newpassword    1234   # robotcode: ignore
     Input cnewpassword   1234   # robotcode: ignore
     Submit Form    id=AdminInfoForm
    [Teardown]    Close Browser

TC_PF05
     Open Browser To Login
     Input username    pusadee@kku.ac.th
     Input Password    123456789
     Submit Login
     User Pro Should Be Open
     Click Element    id=password-tab 
     Input oldpassword    123456789    # robotcode: ignore
     Input newpassword    12345678    # robotcode: ignore
     Input cnewpassword   1234567890    # robotcode: ignore
     Submit Form    id=AdminInfoForm
    [Teardown]    Close Browser

TC_PF06
     Open Browser To Login
     Input username    pusadee@kku.ac.th
     Input Password    123456789
     Submit Login
     User Pro Should Be Open
     Click Element    expertise-tab 
     Click Element    css=.btn-menu1
     Input expert_name     Natural Language and Speech Processing    # robotcode: ignore
     Submit Form    id=AdminInfoForm
    [Teardown]    Close Browser

 TC_PF07
    Open Browser To Login
    Input username    pusadee@kku.ac.th
    Input Password    123456789
    Submit Login
    Dashboard Page Should Be Open
    User Pro Should Be Open
    Click Element    css=a#expertise-tab
    Click Element    css=button.btn-outline-success.btn-sm
    Input Text       id=expert_name    Natural Language and Speech Processing
    Click Element    xpath=//div[@class="col-xs-12 col-sm-12 col-md-12 text-center"]
    Click Element    btnsave
    #  [Teardown]    Close Browser

TC_PF08
     Open Browser To Login
     Input username    pusadee@kku.ac.th
     Input Password    123456789
     Submit Login
     User Pro Should Be Open
     Click Element    css=a#expertise-tab  
     Click Element    delete-expertise
     Click Element    css=.swal-button--confirm
    [Teardown]    Close Browser


TC_PF09
      Open Browser To Login
     Input username    pusadee@kku.ac.th
     Input Password    123456789
     Submit Login
     User Pro Should Be Open
     Click Element    id=education-tab
     Input b_uname    มหาวิทยาลัยขอนแก่น    # robotcode: ignore
     Input b_qua_name  วท.บ. (ฟิสิกส์)    # robotcode: ignore
     Input b_year    2529    # robotcode: ignore
     Input m_uname    จุฬาลงกรณ์มหาวิทยาลัย    # robotcode: ignore
     Input m_qua_name    วท.ม. (วิทยาการคอมพิวเตอร์)    # robotcode: ignore
     Input m_year    2535    # robotcode: ignore
     Input d_uname    University of the Ryukyus, Japan    # robotcode: ignore
     Input d_qua_name    Ph.D. (Interdisciplinary Intelligent Systems Engineering)    # robotcode: ignore
     Input d_year    2548    # robotcode: ignore
     Submit Form    id=AdminInfoForm
    [Teardown]    Close Browser

TC_PF10
    Open Browser To Login
     Input username    pusadee@kku.ac.th
     Input Password    123456789
     Submit Login
     User Pro Should Be Open
     Click Element    id=education-tab
     Input b_uname    มหาวิทยาลัยขอนแก่น    # robotcode: ignore
     Input b_qua_name  วท.บ. (ฟิสิกส์)    # robotcode: ignore
     Input b_year    2529    # robotcode: ignore
     Input m_uname    จุฬาลงกรณ์มหาวิทยาลัย    # robotcode: ignore
     Input m_qua_name    วท.ม. (วิทยาการคอมพิวเตอร์)    # robotcode: ignore
     Input m_year    2535    # robotcode: ignore
     Input d_uname    University of the Ryukyus, Japan    # robotcode: ignore
     Input d_qua_name    Ph.D. (Interdisciplinary Intelligent Systems Engineering)    # robotcode: ignore
     Input d_year    2548    # robotcode: ignore
     Submit Form    id=AdminInfoForm
    [Teardown]    Close Browser

#----------แสดงทุนการศึกษา-------------#
TC_Fund01
     Open Browser To Login
     Input username    pusadee@kku.ac.th
     Input Password    123456789
     Submit Login
     Manage Page Should Be Open    # robotcode: ignore
     [Teardown]    Close Browser

TC_Fund02
     Open Browser To Login
     Input username    pusadee@kku.ac.th
     Input Password    123456789
     Submit Login
     Manage Page Should Be Open    # robotcode: ignore
     Click Element    css=.mb-3
     Input fund_name    ทุนวิจัยประเภท 1    # robotcode: ignore
     Select From List by Value    css=select[name='fund_type']    ทุนภายใน
     Select From List by Value    css=select[name='fund_level']    กลาง
     Input support_resource    มหาวิทยาลัยขอนแก่น    # robotcode: ignore
     Click Element    css=.me-2
     [Teardown]    Close Browser

TC_Fund03
     Open Browser To Login
     Input username    pusadee@kku.ac.th
     Input Password    123456789
     Submit Login
     Manage Page Should Be Open    # robotcode: ignore
     Click Element    css=.mb-3
     Input fund_name    ทุนอุดหนุนการวิจัย มข.    # robotcode: ignore
     Select From List by Value    css=select[name='fund_type']    ทุนภายนอก
     Input support_resource   สำนักงานคณะกรรมการวิจัยแห่งชาติ    # robotcode: ignore
     Click Element    css=.me-2
     [Teardown]    Close Browser

TC_Fund04
     Open Browser To Login
     Input username    pusadee@kku.ac.th
     Input Password    123456789
     Submit Login
     Manage Page Should Be Open    # robotcode: ignore
     Click Element    css=.mb-3
     Input fund_name       ${VALID fund_name}    # robotcode: ignore
     Select From List by Value    css=select[name='fund_type']    ทุนภายนอก
     Input support_resource   สำนักงานคณะกรรมการวิจัยแห่งชาติ    # robotcode: ignore
     Click Element    css=.me-2
     [Teardown]    Close Browser


TC_Fund05
     Open Browser To Login
     Input username    pusadee@kku.ac.th
     Input Password    123456789
     Submit Login
     Manage Page Should Be Open    # robotcode: ignore
     Click Element    css=.mb-3
     Input fund_name    ทุนอุดหนุนการวิจัย มข.    # robotcode: ignore
     Select From List by Value    css=select[name='fund_type']    ทุนภายนอก
     Input support_resource    ${VALID support_resource}    # robotcode: ignore
     Click Element    css=.me-2
     [Teardown]    Close Browser

TC_Fund06
     Open Browser To Login
     Input username    pusadee@kku.ac.th
     Input Password    123456789
     Submit Login
     Manage Page Should Be Open    # robotcode: ignore
     Click Element    css=.mdi-pencil
     Input fund_name    ทุนวิจัยประเภท 1    # robotcode: ignore
     Select From List by Value    css=select[name='fund_type']    ทุนภายใน
     Select From List by Value    css=select[name='fund_level']    กลาง
     Input support_resource    มหาวิทยาลัยขอนแก่น    # robotcode: ignore
     Click Element    css=.mt-5
     [Teardown]    Close Browser

TC_Fund07
     Open Browser To Login
     Input username    pusadee@kku.ac.th
     Input Password    123456789
     Submit Login
     Manage Page Should Be Open    # robotcode: ignore
     Click Element    css=.btn-outline-primary
    [Teardown]    Close Browser

TC_RP08 
     Open Browser To Login
     Input username    pusadee@kku.ac.th
     Input Password    123456789
     Submit Login
     Manage Page Should Be Open   # robotcode: ignore
     Click Element    css=.mdi-delete
     Click Element    css=.swal-button--confirm
     Click Element    css=.swal-button--confirm
     [Teardown]    Close Browser

# TC_RP02
#      Open Browser To Login
#      Input username    pusadee@kku.ac.th
#      Input Password    123456789
#      Submit Login
#      Research Page Should Be Open    # robotcode: ignore
#      Click Element     css=.mb-3     #ADD
#      Input project_name    รูปแบบเทคโนโลยีฉลาดสำหรับสังคมสูงวัยสุขภาพดี (Smart technology for healthy aging society)    # robotcode: ignore
#      Select From List by Label    name=fund    ทุนอุดหนุนการวิจัย มข.
#      Input budget    800000000    # robotcode: ignore
#      Input Text      id=Project_start    2018-10-01
#      Input Text      id=Project_end      2020-08-03
#      Input project_year    2562
#      Select From List by Value    id=status   ดำเนินการ
#     #  Select From List By Label    name=responsible_department สาขาวิชาเทคโนโลยีสารสนเทศ
#      Select From List by Value    id=head0  สุมณฑา เกษมวิลาศ
#      Click Element    css=.me-2

# TC_RP03    
#      Open Browser To Login
#      Input username    pusadee@kku.ac.th
#      Input Password    123456789
#      Submit Login
#      Research Page Should Be Open    # robotcode: ignore
#      Click Element     css=.mb-3     #ADD
#      Input project_name   ${VALID project_name}    # robotcode: ignore
#      #Select From List by Value   ทุนอุดหนุนการวิจัย มข.
#      Input project_year    2562    # robotcode: ignore
#      Input budget    800000000    # robotcode: ignore
#      #Select From List by Value   สาขาวิชาเทคโนโลยีสารสนเทศ
#      Input Text      id=Project_start    2018-10-01
#      Input Text      id=Project_end      2020-08-03
#      Input Note    ${VALID Note}   # robotcode: ignore
#      #Select From List by Value    ดำเนินการ
#      #Select From List by Value    Select User ผศ.ดร. สุมณฑา เกษมวิลาศ
#      Click Element    Submit

# TC_RP04    
#      Open Browser To Login
#      Input username    pusadee@kku.ac.th
#      Input Password    123456789
#      Submit Login
#      Research Page Should Be Open    # robotcode: ignore
#      Click Element     css=.mb-3     #ADD
#      Input project_name  รูปแบบเทคโนโลยีฉลาดสำหรับสังคมสูงวัยสุขภาพดี(Smart technology for healthy aging society)    # robotcode: ignore
#      #Select From List by Value   ทุนอุดหนุนการวิจัย มข.
#      Input project_year    ${VALID project_year}     # robotcode: ignore
#      Input budget    800000000    # robotcode: ignore
#      #Select From List by Value   สาขาวิชาเทคโนโลยีสารสนเทศ
#      Input Text      id=Project_start    2018-10-01
#      Input Text      id=Project_end      2020-08-03
#      Input Note    ${VALID Note}   # robotcode: ignore
#      #Select From List by Value    ดำเนินการ
#      #Select From List by Value    Select User ผศ.ดร. สุมณฑา เกษมวิลาศ
#      Click Element    Submit

# TC_RP05    
#      Open Browser To Login
#      Input username    pusadee@kku.ac.th
#      Input Password    123456789
#      Submit Login
#      Research Page Should Be Open    # robotcode: ignore
#      Click Element     css=.mb-3      #ADD
#      Input project_name  รูปแบบเทคโนโลยีฉลาดสำหรับสังคมสูงวัยสุขภาพดี(Smart technology for healthy aging society)    # robotcode: ignore
#      #Select From List by Value   ทุนอุดหนุนการวิจัย มข.
#      Input project_year    2562   # robotcode: ignore
#      Input budget    ${VALID budget}   # robotcode: ignore
#      #Select From List by Value   สาขาวิชาเทคโนโลยีสารสนเทศ
#      Input Text      id=Project_start    2018-10-01
#      Input Text      id=Project_end      2020-08-03
#      Input Note    ${VALID Note}   # robotcode: ignore
#      #Select From List by Value    ดำเนินการ
#      #Select From List by Value    Select User ผศ.ดร. สุมณฑา เกษมวิลาศ
#      Click Element    Submit

# TC_RP06    
#      Open Browser To Login
#      Input username    pusadee@kku.ac.th
#      Input Password    123456789
#      Submit Login
#      Research Page Should Be Open    # robotcode: ignore
#      Click Element     css=.mb-3      #ADD
#      Input project_name  รูปแบบเทคโนโลยีฉลาดสำหรับสังคมสูงวัยสุขภาพดี(Smart technology for healthy aging society)    # robotcode: ignore
#      #Select From List by Value   ---------
#      Input project_year    2562   # robotcode: ignore
#      Input budget      800000000    # robotcode: ignore
#      #Select From List by Value   สาขาวิชาเทคโนโลยีสารสนเทศ
#      Input Text      id=Project_start    2018-10-01
#      Input Text      id=Project_end      2020-08-03
#      Input Note    ${VALID Note}   # robotcode: ignore
#      #Select From List by Value    ดำเนินการ
#      #Select From List by Value    Select User ผศ.ดร. สุมณฑา เกษมวิลาศ
#      Click Element    Submit

# TC_RP07    
#      Open Browser To Login
#      Input username    pusadee@kku.ac.th
#      Input Password    123456789
#      Submit Login
#      Research Page Should Be Open    # robotcode: ignore
#      Click Element     css=.mb-3    #ADD
#      Input project_name  รูปแบบเทคโนโลยีฉลาดสำหรับสังคมสูงวัยสุขภาพดี(Smart technology for healthy aging society)    # robotcode: ignore
#      #Select From List by Value   fund
#      Input project_year    2562   # robotcode: ignore
#      Input budget    800000000   # robotcode: ignore
#      #Select From List by Value   สาขาวิชาเทคโนโลยีสารสนเทศ
#      Input Text      id=Project_start    2018-10-01
#      Input Text      id=Project_end      2020-08-03
#      Input Note    ${VALID Note}   # robotcode: ignore
#      #Select From List by Value    ดำเนินการ
#      #Select From List by Value    Select User --------
