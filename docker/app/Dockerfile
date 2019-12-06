ARG BASE_REPO
ARG BASE_TAG
FROM ${BASE_REPO}:${BASE_TAG} AS builder

ENV MIX_ENV=prod

COPY . .
RUN mix release


FROM alpine:3.9

RUN apk add --update bash openssl

WORKDIR /app

ENV HOME=/app
ENV MIX_ENV=prod

COPY --from=builder /app/_build/prod/rel/luna ./
RUN chown -R nobody: /app
USER nobody

CMD ["bin/luna", "start]
