echo "Press 1 for Phone or 2 for PC: "
read -r device
if [ $device == "2" ]; then
unzip ngrok.zip
rm -rf ngrok.zip
fi
chmod +x ngrok 
cp -R ngrok ~/
cd ~
rm -rf ngrokold
echo " Enter your command to add authtoken: "
read -r token
$token
echo
echo
echo "Do you want to test your ngrok (Y/N): "
read -r choice
if [[ $choice == "y" || $choice == "Y" ]]; then
echo "Enter any 4 digit port number to test: "
read -r port
./ngrok http $port
else
exit 1
fi

