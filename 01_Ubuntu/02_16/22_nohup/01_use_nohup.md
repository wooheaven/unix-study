# run.sh 를 실행하는 shell 확인하기
```{bash}
which sh
which bash

vi run.sh
#!/bin/bash
echo "run"

chmod +x run.sh
chmod 755 run.sh

nohup ./run.sh > run.log 2>&1 &

ps -ef | grep run.sh
pgrep "run.sh"

tail -f run.log

kill -9 `pgrep "run.sh"`
```
