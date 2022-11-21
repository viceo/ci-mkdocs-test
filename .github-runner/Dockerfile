FROM --platform=linux/amd64 viceo/runner-base:latest
WORKDIR /github-runner
RUN ./config.sh --url https://github.com/viceo/ci-mkdocs-test \
    --unattended \
    --url https://github.com/viceo/ci-mkdocs-test.git \
    --name mkdocs-test-runner \
    --labels test,mkdocs \
    --token ADF5QWKQ2VV3FPVP5XH7SETDPPZPE

ENTRYPOINT [ "/github-runner/run.sh" ] 