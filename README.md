# Vue 3 + Vite + Dockerfile + docker-compose

1. 使用 nodejs 20 版本進行開發
2. 預設 npm run dev -- --host 對外開啟PORT:5173 
3. 預設安裝 git ，並且可綁定ssh_key
4. Dockerfile 啟動時預設啟用npm install 且放入volume
5. 預設git mail與name 
```sh
    RUN git config --global user.email "chunhsing0921@gmail.com" && \
    git config --global user.name "Emptywu"
```

## Reference
[Vite Configuration Reference](https://vitejs.dev/config/).
