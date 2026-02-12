# MonitoringDocker

Projeto para monitoramento e previsão do tempo em Grafana.

## Como rodar
```bash
docker compose up -d
```

## Como parar
```bash
docker compose down
```

## Variáveis de ambiente
- `.env.example`: template base
- `.env.local`: desenvolvimento local (localhost)
- `.env`: produção/EC2 (usado no deploy)

Exemplo (local):
```bash
docker compose --env-file .env.local up -d
```

## Credenciais
login: admin
senha: admin123

## Arquitetura rápida
- Grafana (10.4.8)
- InfluxDB (2.7)
- Plugin Infinity instalado via `GF_INSTALL_PLUGINS`

## Dashboards (pasta Agricultura)
- Monitoramento por Talhão: sensores e status do talhão
- Previsão do Tempo: Infinity + Open-Meteo
  - Informações da previsão e resumo agora (tabela)
  - Gráficos de temperatura, chance de chuva e vento
  - Variável `location` com opções: São Paulo, Campinas, Ribeirão Preto

## Provisionamento de dashboards
Os dashboards são carregados automaticamente a partir de `grafana/provisioning/dashboards`.
Para atualizar:
1) Edite o JSON do dashboard
2) Reinicie o Grafana: `docker compose restart grafana`
