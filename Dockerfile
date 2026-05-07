FROM node:25-alpine

ENV NPM_CONFIG_FUND=false \
    NPM_CONFIG_AUDIT=false \
    NPM_CONFIG_UPDATE_NOTIFIER=false

RUN npm install -g @actual-app/cli \
    && npm cache clean --force \
    && rm -rf /root/.npm

CMD ["sleep", "infinity"]
