```
curl -sL stacks-blockchain.localhost/v2/info | jq
```

## Stacks

install stacks

```shell
npm i -g @stacks/cli
```

```shell
stacks -i -I http://stacks-blockchain-api-http.localhost \
     send_tokens \
         --address $TO_ADDRESS \
         --amount 110000000 \
         --fee 100000 \
         --nonce 0 \
         --payment_key $PAYMENT_KEY \
         ;
```

```shell
stacks get_stacks_wallet_key "12 words wallet key from chrome extentions"
```

```shell
stacks -i \
       -I http://stacks-blockchain-api-http.localhost \
       balance $ADDRESS \
 ;
```
