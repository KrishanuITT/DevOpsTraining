username="krishanuasdm"
if grep -q "^$username:" /etc/passwd; then
    echo "User Exists"
else
    echo "User does not exist"
fi