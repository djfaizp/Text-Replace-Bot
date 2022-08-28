if [ -z $UPSTREAM_REPO ]

then

  echo "Cloning main Repository"

  git clone https://github.com/djfaizp/Text-Replace-Bot.git /Text-replace

else

  echo "Cloning Custom Repo from $UPSTREAM_REPO "

  git clone $UPSTREAM_REPO /Text-replace

fi

cd /Text-replace

pip3 install -U -r requirements.txt

echo "Starting Bot...."

python3 bot.py
