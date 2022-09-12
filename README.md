## Instructions
You may also download the benchmark from [this link]().  
To run the benchmark, you can follow the instructions below.
1. modify `PARSECBenchmark-v3.0-Ferret-Taskflow/pkgs/apps/ferret/src/Makefile`
    + you should change the taskflow include path in line 80
2. load environment variables
    + move to `PARSECBenchmark-v3.0-Ferret-Taskflow` directory
    + `source env.sh`
3. build taskflow version ferret
    + `parsecmgmt -a build -p ferret -c gcc-taskflow`
    + `-c` means the version, available ones are `gcc-taskflow`, `gcc-tbb`, `gcc-pthreads`, `gcc`
    + the official version is `gcc-tbb`, `gcc-pthreads` and `gcc`, we add `gcc-taskflow`
4. run taskflow version dedup
    + `parsecmgmt -a run -p ferret -c gcc-taskflow -i native -n 8`
    + `-c` means which version you want to run(remember to build first)
    + `-i` means which dataset you want to run
    + `-n` means how many threads you want to use
5. uninstall
    + uninstall specific version `parsecmgmt -a uninstall -p ferret -c gcc-taskflow`
    + uninstall all `parsecmgmt -a fulluninstall -p ferret`
6. for more infomation, you can type in `parsecmgmt -a -h` or visit PARSEC official website
