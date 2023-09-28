aleo smart contract



------------------------------------------------------------------



ط¨ط¹ط¯ ط§ط² ط¯ط±غŒط§ظپطھ ظپط§ط³طھ ط¨ظ‡ ظ„غŒظ†ع© ط²غŒط± ط¨ط±غŒط¯ ظˆ ط§ظپط²ظˆظ†ظ‡ ط±ط§ ط¨ظ‡ ظ…ط±ظˆط±ع¯ط± ع©ط±ظˆظ… ط§ط¶ط§ظپظ‡ ع©ظ†غŒط¯

https://chrome.google.com/webstore/detail/json-beautifier-editor/lpopeocbeepakdnipejhlpcmifheolpl
------------------------------------------------------------------

cd $HOME

mkdir demo_deploy_Leo_app && cd demo_deploy_Leo_app

WALLETADDRESS=""

APPNAME=helloworld_"${WALLETADDRESS:4:6}"

leo new "${APPNAME}"

PATHTOAPP=$(realpath -q $APPNAME)

cd $PATHTOAPP && cd ..

PRIVATEKEY=""

RECORD=""

snarkos developer deploy "${APPNAME}.aleo" --private-key "${PRIVATEKEY}" --query "https://vm.aleo.org/api" --path "./${APPNAME}/build/" --broadcast "https://vm.aleo.org/api/testnet3/transaction/broadcast" --fee 600000 --record "${RECORD}"
