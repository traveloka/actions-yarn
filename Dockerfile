FROM node:10

LABEL version="1.0.0"
LABEL repository="https://github.com/traveloka/actions-yarn"
LABEL homepage="https://github.com/traveloka/actions-yarn"
LABEL maintainer="Fatih Kalifa <fatih@traveloka.com>"

LABEL com.github.actions.name="GitHub Action for Yarn"
LABEL com.github.actions.description="Wraps the yarn CLI to enable common yarn commands."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="blue"
COPY LICENSE README.md /

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
