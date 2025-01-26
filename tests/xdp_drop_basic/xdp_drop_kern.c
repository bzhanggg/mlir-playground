// #include "../../externals/libbpf/include/uapi/linux/bpf.h";
#define XDP_DROP 0

int xdp_prog(struct xdp_md *ctx) {
    return XDP_DROP;
}