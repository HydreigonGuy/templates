# Prometheus

Prometheus is a logging tool. Together with grafana and other external tools you can easily log and retrieve metrics.

### Grafana

Grafana is a visual interface that links to Prometheus or Loki and displays the data they send.

You can completely configure it manually on the website or do it with configuration files. In this template we have the *datasources* folder which automatically links grafana to loki and prometheus, and you can add a *dashboards* folder to make and configure dashboards.

### Loki

Loki is a tool to display logs on grafana. In this context it displays the logs for docker containers, but it can display any kind of log from a file.
