FROM --platform=linux/amd64 viceo/runner-base:latest
WORKDIR /github-runner

ARG NAME
ARG LABELS
ARG URL
ARG TOKEN

RUN ./config.sh --unattended \
    --name $NAME \
    --labels $LABELS \
    --url $URL \
    --token $TOKEN

ENTRYPOINT [ "/github-runner/run.sh" ] 