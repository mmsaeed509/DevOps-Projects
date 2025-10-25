# 3-Tier Blog API System

A containerized 3-tier web application consisting of:
1. **Backend API** (Go) - serves REST responses with blog titles
2. **Database** (MySQL) - stores blog data  
3. **Proxy** (Nginx) - exposes API over HTTPS

### Architecture

```
Client → Nginx (HTTPS) → Backend API (Go) → MySQL Database
```

### File structure

```bash
├── backend
│   ├── db-password.txt
│   ├── docker-compose.yaml
│   ├── Dockerfile
│   ├── go.mod
│   ├── go.sum
│   ├── main.go
│   └── README.md
├── docker-compose.yaml
├── git-push.sh
├── imgs
│   ├── 1.png
│   ├── 2.png
│   ├── 3.png
│   └── 4.png
├── k8s
│   ├── backend_deployment.yaml
│   ├── backend_service.yaml
│   ├── database_deployment.yaml
│   ├── db-data-pvc.yaml
│   ├── db-data-pv.yaml
│   ├── db-secret.yaml
│   ├── db-service.yaml
│   ├── nginx-configmap.yaml
│   ├── proxy_deployment.yaml
│   ├── proxy_nodeport.yaml
│   └── README.md
├── nginx
│   ├── Dockerfile
│   ├── generate-ssl.sh
│   ├── nginx.conf
│   └── README.md
├── project1.pdf
└── README.md

5 directories, 30 files
```

---

### Test Docker Backend Image

read the `README.md` in the [**`backend`**](./backend/)

---

### Test Docker Compose

```bash
$ docker compose up -d

$ curl http://localhost:10000

["Blog post #0","Blog post #1","Blog post #2","Blog post #3","Blog post #4"]
```
![](./imgs/1.png)
![](./imgs/2.png)

---

### Build and Push nginx image

- read the `README.md` in the [**`nginx`**](./nginx/) To build and push the image

```bash
docker compose up -d
```
![](./imgs/3.png)

---

### Deploy To K8s Cluster

read the `README.md` in the [**`k8s`**](./k8s/) to deploy
> I'm using `minikube`

![](./imgs/4.png)