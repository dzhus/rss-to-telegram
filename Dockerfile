FROM python:3.7-alpine3.8
COPY . .
RUN pip install pipenv && pipenv install
CMD pipenv run python rss-to-tg.py --message-format $R2T_MESSAGE_FORMAT $R2T_URL $R2T_DESTINATION $R2T_TOKEN
