#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#include <complex.h>
#include <fftw3.h>

#include "util.h"

int test_1d_redft00(int n) {

    int N = 2 * (n - 1);

    double *in = fftw_alloc_real(n);
    fftw_complex *in_logical = fftw_alloc_complex(N);
    double *out = fftw_alloc_real(n);
    fftw_complex *out_logical = fftw_alloc_complex(N);

    fftw_plan p = fftw_plan_r2r_1d(n, in, out, FFTW_REDFT00, FFTW_ESTIMATE);

    fill_random_1d_real(n, in);

    // the first half of the array is identical
    for (int i = 0; i < n; ++i) {
        in_logical[i] = in[i];
    }

    // second half is filled according to even symmetry around n-1
    for (int i = 0; i < n - 2; ++i) {
        in_logical[n + i] = in[n - 2 - i];
    }

    dump_1d_real("test_1d_redft00_in.dat", n, in);
    dump_1d_cplx("test_1d_redft00_in_logical.dat", N, in_logical);

    // manual implementation of logically-equivalent DFT
    double a = 0.0;
    double b = 0.0;
    dft_1d_cplx(N, in_logical, out_logical, a, b);

    fftw_execute(p);

    dump_1d_real("test_1d_redft00_out.dat", n, out);
    dump_1d_cplx("test_1d_redft00_out_logical.dat", N, out_logical);

    // check output of logically equivalent DFT
    double eps = 1e-12;
    int status = 0;

    // 1. logically equivalent output should be purely real-valued
    for (int i = 0; i < N; ++i) {
        if (fabs(cimag(out_logical[i])) > eps) {
            printf("error: imag of [%d] is %g\n", i, cimag(out_logical[i]));
            status = 1;
        } else {
            printf("imag of [%d] is %g\n", i, cimag(out_logical[i]));
        }
    }

    // 2. first n values should have identical real values
    double delta;
    for (int i = 0; i < n; ++i) {
        delta = creal(out_logical[i]) - out[i];
        if (fabs(delta) > eps) {
            printf("error: delta of [%d] is %g\n", i, delta);
            status = 1;
        } else {
            printf("match of [%d] (delta=%g)\n", i, delta);
        }
    }

    // 3. even symmetry of output values around n-1
    for (int i = 0; i < n - 2; ++i) {
        delta = creal(out_logical[n + i]) - out[n - 2 - i];
        if (fabs(delta) > eps) {
            printf("error: delta of [%d] is %g\n", n + i, delta);
            status = 1;
        } else {
            printf("match of [%d] (delta=%g)\n", n + i, delta);
        }
    }

    if (status == 0) {
        printf("=> all ok\n");
    } else {
        printf("=> errors\n");
    }

    fftw_destroy_plan(p);
    fftw_free(in);
    fftw_free(in_logical);
    fftw_free(out);
    fftw_free(out_logical);

    return status;
}

int main(int argc, char** argv) {
    int status = 0;
    status += test_1d_redft00(5);
    status += test_1d_redft00(6);
    return status;
}
