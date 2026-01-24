# MonitoringDocker

## Para rodar as imagens
```bash
docker compose up -d
```

## Para derrubar os servidores
```bash
docker compose down
```

## Variaveis de ambiente
- `.env.example`: template base
- `.env.local`: desenvolvimento local (localhost)
- `.env`: producao/EC2 (usado no deploy)

Exemplo (local):
```bash
docker compose --env-file .env.local up -d
```

## Credenciais
login: admin
senha: admin123
