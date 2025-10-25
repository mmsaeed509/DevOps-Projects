Build the Docker Image

```bash
docker build -t mmsaeed509/go-app-nginx:v1 .
```
> replace `mmsaeed509/go-app-nginx:v1` with your `<docker_hub_user>/<repo_name>:<app_version>`

---

Push image to Docker Hub

```bash
docker push mmsaeed509/go-app-nginx:v1
```
> replace `mmsaeed509/go-app-nginx:v1` with your `<docker_hub_user>/<repo_name>:<app_version>`

