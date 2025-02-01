#include "/mydeps/linux-5.4/include/uapi/linux/bpf.h"

int xdp_prog(struct xdp_md *ctx) {
    return XDP_DROP;
}