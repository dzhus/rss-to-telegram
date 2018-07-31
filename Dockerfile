FROM python:3.7-alpine3.8@sha256:c0c8adcf2c74a38da1ee50a6e4b3de94ccd017b673159660fdbc63104aa43223
COPY . .
RUN pip install pipenv && pipenv install
CMD pipenv run python rss-to-tg.py --message-format $R2T_MESSAGE_FORMAT $R2T_URL $R2T_DESTINATION $R2T_TOKEN
