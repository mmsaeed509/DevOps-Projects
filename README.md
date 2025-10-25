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

- read the `README.md` in the [**`nginx`**](./nginx/)
- update the `docker-compose.yaml` file and add `nginx`
- run `docker-compose.yaml` and test on [**`https://localhost`**](https://localhost)

```bash
docker compose up -d
```
![](./imgs/3.png)

---

### Deploy To K8s Cluster

read the `README.md` in the [**`k8s`**](./k8s/) to deploy
> I'm using `minikube`

![](./imgs/4.png)