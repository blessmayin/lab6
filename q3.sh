#!/bin/bash
OWNER=$(gh api user --jq .login); COLLAB=gitlabbobby-cyber
echo "--- pending invites (blank = accepted) ---"
gh api "repos/$OWNER/lab6/invitations" --jq '.[].invitee.login'
echo "--- collaborators ---"
gh api "repos/$OWNER/lab6/collaborators" --jq '.[].login'
echo "--- permission ---"
gh api "repos/$OWNER/lab6/collaborators/$COLLAB/permission" --jq .permission
echo "--- branches (collab-test = collaborator's push) ---"
gh api "repos/$OWNER/lab6/branches" --jq '.[].name'
