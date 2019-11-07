## 下载
`git clone git@github.com:weijing24/gfw_config.git ~/gfw_config`

## 内核网络配置优化 
`cp ~/gfw_config/sysctl.conf /etc/sysctl.conf`

## 部署
### ss
- docker 容器执行

```
bash ~/gfw_config/ss/ss.sh
```
- swarm 模式运行

```
cd ~/gfw_config/ss
docker stack deploy -c ss.yml ss
```

### v2ray
- docker 容器执行

```
mkdir -p /etc/v2ray
ln -s ~/gfw_config/v2ray/config.json /etc/v2ray/config.json
bash ~/gfw_config/v2ray/v2ray.sh
```

- swarm 模式运行

```
cd ~/gfw_config/v2ray
docker stack deploy -c v2ray.yml v2ray
```

