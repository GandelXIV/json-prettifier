APP_URL='https://raw.githubusercontent.com/GandelXIV/json-prettifier/main/json-prettifier.py'
INSTALLATION_PATH=/usr/bin/json-prettifier
DEPENDENCIES='curl python3'

exists()
{
    command -v "$1" >/dev/null 2>&1
}

echo 'Detecting platform...'
if exists apt; then
	echo 'Detected: apt'
	sudo apt install -y $DEPENDENCIES
elif exists pacman; then
	echo 'Detected: pacman'
	sudo pacman -S -noconfirm $DEPENDENCIES
else
	echo 'Could not detect platform!'
	echo 'Please install the following dependencies manually:'
	echo $DEPENDENCIES
fi

echo 'Download files...'
sudo curl $APP_URL > $INSTALLATION_PATH
chmod +x $INSTALLATION_PATH
echo 'Done!'
