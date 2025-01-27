#include "bpf.h";

int xdp_prog(struct xdp_md *ctx) {
    return XDP_DROP;
}