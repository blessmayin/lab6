#!/bin/bash
OWNER=$(gh api user --jq.login); COLLAB=gitlabbobby-cyber
gh api -X DELETE "repos/$OWNER/lab6/collaborators/$COLLAB"
echo "--- collaborators now (only the owner) ---"
gh api "repos/$OWNER/lab6/collaborators" -- jq '.[].login'
gh api -X DELETE "repos/$OWNER/lab6/git/refs/heads/collab-test"
