#!/bin/bash
#!/bin/bash
OWNER=$(gh api user --jq .login); COLLAB=gitlabbobby-cyber
gh api -X PUT "repos/$OWNER/lab6/collaborators/$COLLAB" -f permission=push
echo "--- pending invitations ---"
gh api "repos/$OWNER/lab6/invitations" --jq '.[] | {id, invitee: .invitee.login, permissions}'
