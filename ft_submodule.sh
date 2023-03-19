#!/bin/bash

echo "          _ __                __                        __      __         "
echo "   ____ _(_) /_   _______  __/ /_  ____ ___  ____  ____/ /_  __/ /__  _____"
echo "  / __ \`/ / __/  / ___/ / / / __ \/ __ \`__ \/ __ \/ __  / / / / / _ \/ ___/"
echo " / /_/ / / /_   (__  ) /_/ / /_/ / / / / / / /_/ / /_/ / /_/ / /  __(__  ) "
echo " \__, /_/\__/  /____/\__,_/_.___/_/ /_/ /_/\____/\__,_/\__,_/_/\___/____/  "
echo "/____/                                                                       "


echo "What is your Github username?"
read github_username

echo "What are the names of your repositories? (Separate with spaces)"
read -a repos


for repo in "${repos[@]}"; do
    remote_url="https://github.com/${github_username}/${repo}.git"
git submodule add "$remote_url"
done

git commit -m "Added submodules to the project."
git push

