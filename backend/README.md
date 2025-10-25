Build the Docker Image

```bash
docker build -t mmsaeed509/go-app:v1 .
```
> replace `mmsaeed509/go-app:v1` with your `<docker_hub_user>/<repo_name>:<app_version>`

---

Test the container

```bash
$ docker run -it --name Test-GoApp -v /home/o0xwolf/GitHub-SSD/DevOps-Projects/backend/db-password.txt:/run/secrets/db-password -p 10000:8080 mmsaeed509/go-app:v1

2025/10/24 22:56:33 Prepare db...
```
> I'll use port `10000` as `8000` used by another container(portainer)
---

Push image to Docker Hub

```bash
docker push mmsaeed509/go-app:v1
```
> replace `mmsaeed509/go-app:v1` with your `<docker_hub_user>/<repo_name>:<app_version>`

---

Test the container using `docker-compose.yaml`

```bash
docker compose up
```