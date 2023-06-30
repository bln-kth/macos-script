echo "Requires Homebrew see install instructions at https://brew.sh/"
echo
echo "Update Mac Store Apps"
echo "Requires 'brew install mas'"
echo "To update macOS use 'softwareupdate -i -a'"
echo "Press any key to continue..."
read -s -n 1
mas upgrade

echo
echo "Update and upgrades brew incl pwsh, python etc"
echo "Press any key to continue..."
read -s -n 1
brew update
brew upgrade

echo
echo "Update pip and modules"
echo "Requires 'brew install python3 jq'"
echo "Press any key to continue..."
read -s -n 1
pip3 install --upgrade pip
python3 -m pip list --outdated --format=json | jq -r '.[] | "\(.name)==\(.latest_version)"' | xargs -n1 pip3 install -U

echo
echo "Starting pwsh and update modules"
echo "Requires 'brew install pwsh'"
echo "Press any key to continue..."
read -s -n 1
pwsh update-pwsh-modules.ps1
