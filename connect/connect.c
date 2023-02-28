#include <stdio.h>
#include <unistd.h>
#include <sys/syscall.h>

#define is_session_create 326

int main() {
	char *addr = "rdma://1,10.10.3.2:2333";
	syscall(is_session_create, addr);
	return 0;
}
