if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://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@github.com/shivayt007/evadis3.git /DQTheFileDonorBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /DQTheFileDonorBot
fi
cd /DQTheFileDonorBot
pip3 install -U -r requirements.txt
echo "Starting DQ-The-File-Donor...."
python3 bot.py
