FROM registry.gitlab.com/harukanetwork/oss/harukaaya:dockerstation

RUN git clone https://github.com/MoveAngel/UserbotindoBot.git -b stag /data/UserindoBot

COPY ./config.yml /data/UserindoBot

WORKDIR /data/UserindoBot

CMD ["python", "-m", "haruka"]
