
# TrustGraph on Intel Tiber cloud

The purpose of this repo is to track work we're doing to get TrustGraph
running on Intel accelerated data-center products.

This is a work-in-progress.

## SSH parameters

When you launch an instance, you click on 'How to connect via SSH'
and it shows you a command like this:

```
ssh -J guest@j.j.j.j sdp@h.h.h.h
```

The second 2 user@address bits are needed for the commands here.
Replace j.j.j.j with the IP address in the first term, and h.h.h.h with
the address of the second.

## Deploying to a Gaudi system using vLLM

Software: TrustGraph 1.0.13, vLLM from HabanaAI fork.
Model: Llama 3.3 70B

Put your HuggingFace token in a file called `hf.token`.  You need to go
to the Llama 3.3 70B model page and accept the licence.

Connect to the server, deploy TrustGraph and start it up.
```
./deploy-tiber guest@j.j.j.j sdp@h.h.h.h deploy-gaudi-vllm.zip
```

Connect to the server via SSH:
```
./port-forward guest@j.j.j.j sdp@h.h.h.h
```
This forwards ports:

- 3001 localhost -> 3000 on remote for Grafana
- 8889 localhost -> 8888 on remote for web interface
- 8089 localhost -> 8088 on remote for TrustGraph API

## Deploying to a multi-GPU 1550 system using vLLM

Software: TrustGraph 1.0.13, TGI server 3.3.1-intel-xpu

Put your HuggingFace token in a file called `hf.token`.

Connect to the server, deploy TrustGraph and start it up.
```
./deploy-tiber guest@j.j.j.j sdp@h.h.h.h deploy-gpu-tgi.zip
```

Connect to the server via SSH:
```
./port-forward guest@j.j.j.j sdp@h.h.h.h
```
This forwards ports:

- 3001 localhost -> 3000 on remote for Grafana
- 8889 localhost -> 8888 on remote for web interface
- 8089 localhost -> 8088 on remote for TrustGraph API

## Deploying to a GR system using TGI

Software: TrustGraph 1.0.13, TGI server 3.3.1-intel-xpu

Put your HuggingFace token in a file called `hf.token`.

Connect to the server, deploy TrustGraph and start it up.
```
./deploy-tiber guest@j.j.j.j sdp@h.h.h.h deploy-gr.zip
```

Connect to the server via SSH:
```
./port-forward guest@j.j.j.j sdp@h.h.h.h
```
This forwards ports:

- 3001 localhost -> 3000 on remote for Grafana
- 8889 localhost -> 8888 on remote for web interface
- 8089 localhost -> 8088 on remote for TrustGraph API

