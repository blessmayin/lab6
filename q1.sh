#!/bin/bash
gh repo create lab6 --public --add-readme 2>/dev/null || echo "lab6 already exists"
gh repo view lab6 --json name,visibility,url
