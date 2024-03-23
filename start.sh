if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/nandhuachu/alanwalker.git /alanwalker
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /alanwalker
fi
cd /alanwalker
pip3 install -U -r requirements.txt
echo "Starting TheMovieProviderBot...."
python3 bot.py
