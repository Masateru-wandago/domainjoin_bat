echo �h���C��������͂��Ă��������B
set /p domainname="INPUT:"
cls
echo.
echo �h���C����:%domainname%
echo.
REM[����] 
set /p selected="�h���C�����͈ȏ�ł�낵���ł��傤���B�u�͂��v�Ȃ�uy�v����͂��A�u�������v�Ȃ�un�v����͂��AEnter�������ĉ������B"

REM[����]
if /i {%selected%}=={y} (goto :yes)
if /i {%selected%}=={yes} (goto :yes)
if /i {%selected%}=={n} (goto :no)
if /i {%selected%}=={no} (goto :no)



REM[--------------NO�̏ꍇ--------------]
:no
cls
echo.
echo �ݒ���L�����Z�����܂����B
echo �ēx�u�h���C���Q���v�����s���ݒ���s���ĉ������B
echo.
echo Enter�ŏI�����܂��B
pause
exit

REM[--------------YES�̏ꍇ--------------]
:yes
wmic computersystem where name="%computername%" call joindomainorworkgroup name="%domainname%" password="password" username="username" FJoinOptions=3
if ReturnValue = 0 then
echo �h���C���Q�����������܂����B�G���^�[�L�[�������ƍċN�����s���܂��B
pause
echo shutdown -r -h 0
exit

