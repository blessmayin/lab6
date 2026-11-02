echo "Pending invitations:"
gh api repos/blessmayin/lab6/invitations --jq '.[].invitee.login'
echo "Collaborators:"
gh api repos/blessmayin/lab6/collaborators --jq '.[].login'
echo "Permission of gitlabbobby-cyber:"
gh api repos/blessmayin/lab6/collaborators/gitlabbobby-cyber/permission --jq '.permission'
