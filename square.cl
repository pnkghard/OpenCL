__kernel int calc_square(int val){
	int val_square;
	val_square = val*val;
	return val_square;
}

__kernel void square(__global int *a){
    int gid = get_global_id(0);
        a[gid] = calc_square(gid);
}

// __kernel void vecAdd(__global int* A, __global int* B, __global int* C){
//     int gid = get_global_id(0);

//     C[gid] = A[gid] + B[gid];
// }