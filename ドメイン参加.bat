echo ドメイン名を入力してください。
set /p domainname="INPUT:"
cls
echo.
echo ドメイン名:%domainname%
echo.
REM[質問] 
set /p selected="ドメイン名は以上でよろしいでしょうか。「はい」なら「y」を入力し、「いいえ」なら「n」を入力し、Enterを押して下さい。"

REM[判定]
if /i {%selected%}=={y} (goto :yes)
if /i {%selected%}=={yes} (goto :yes)
if /i {%selected%}=={n} (goto :no)
if /i {%selected%}=={no} (goto :no)



REM[--------------NOの場合--------------]
:no
cls
echo.
echo 設定をキャンセルしました。
echo 再度「ドメイン参加」を実行し設定を行って下さい。
echo.
echo Enterで終了します。
pause
exit

REM[--------------YESの場合--------------]
:yes
wmic computersystem where name="%computername%" call joindomainorworkgroup name="%domainname%" password="password" username="username" FJoinOptions=3
if ReturnValue = 0 then
echo ドメイン参加が完了しました。エンターキーを押すと再起動を行います。
pause
echo shutdown -r -h 0
exit

