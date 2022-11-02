if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/iamakinola/movies-desire /movies-desire
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /movies-desire
fi
cd /movies-desire
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
