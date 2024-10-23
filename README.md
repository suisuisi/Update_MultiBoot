# MultiBoot
AMD-Xilinx UART UPDATE and MultiBoot

# 目录结构

- Binary - 相关工程的位流文件

- golden - golden工程

- multiboot - MultiBoot工程

- refence_doc - 参考文件

- ip - ICAPE原语操作IP，以V1.1为主

# 详细介绍

其他目录里以golde中nexample为主，比如golden中example1时通过脚本添加IPROG指令实现MultiBoot，那么Binary和multiboot路径下的example1也都是相关例程。

- example1-通过脚本添加IPROG指令实现MultiBoot（以SPI FALSH为例）
  
- example2-通过icape原语实现MultiBoot（以SPI FALSH为例）
  
- example3-通过axi-hwicap ip实现MultiBoot（以SPI FALSH为例）
  
- example4-四样错误演示（以SPI FALSH为例）
  
- example5-通过脚本添加IPROG指令实现MultiBoot（以bpi FALSH为例）
  
- example6-通过icape原语实现MultiBoot（以bpi FALSH为例）
  
- example7-通过axi-hwicap ip实现MultiBoot（以bpi FALSH为例）

- example8-预留

- example9-串口升级的第一种方式（以spi flash为主）

- example10-串口升级的第二种方式（以spi flash为主）

# 详细教程


[FPGA实现串口升级及MultiBoot(二)FPGA启动流程](https://mp.weixin.qq.com/s?__biz=Mzg4ODA5NzM1Nw==&mid=2247514260&idx=1&sn=aceee9b79a7fc3f71b91655e4a208156&chksm=cf82a7b6f8f52ea065813a30982b6388ec43d3945ce0d6dd7183ff0f988125c416ea50cf1017&token=1728019394&lang=zh_CN#rd)

[FPGA实现串口升级及MultiBoot（三)FPGA启动加载方式](https://mp.weixin.qq.com/s?__biz=Mzg4ODA5NzM1Nw==&mid=2247514297&idx=1&sn=84a5010e4b6eda7836f392aaf66fff44&chksm=cf82a79bf8f52e8d4285c870c1fc6feb5b53bc4db77258241268d193480225d818bf9f51350f&token=1728019394&lang=zh_CN#rd)

[FPGA实现串口升级及MultiBoot（四)MultiBoot简介](https://mp.weixin.qq.com/s?__biz=Mzg4ODA5NzM1Nw==&mid=2247514341&idx=1&sn=3a23bc179377c6616fefaa50ba0d7f1b&chksm=cf82a7c7f8f52ed1ceee2060974aa10ffa93c165d43a035f1decdd3f76c5eba70142a1d11c2c&token=1728019394&lang=zh_CN#rd)

[FPGA实现串口升级及MultiBoot（五)通过约束脚本添加IPROG实例 ](https://mp.weixin.qq.com/s?__biz=Mzg4ODA5NzM1Nw==&mid=2247514402&idx=1&sn=62591cae0ecde0dd30fc2d7e37a4a3c0&chksm=cf82a600f8f52f164efe98a569d5bec9214e3c0062127e82b5c6135375e33cf3d45718c7868f&payreadticket=HKpLVD9x28VrSFL6_KR2CMxflnhysjP5yEnSzBl8q0wiMZtRIR5n9u_fMWfbsGzZu_yuDmg#rd)

[FPGA实现串口升级及MultiBoot（六)ICAPE2原语实例讲解](https://mp.weixin.qq.com/s?__biz=Mzg4ODA5NzM1Nw==&mid=2247514449&idx=1&sn=7b8a8b54cf3740b7ac925f61b5b2df81&chksm=cf82a673f8f52f659e5572c68f1a59d7dd1a04556e6e7ba6f9bac7b333dcbae97cc984a60cd4&payreadticket=HAFEHuGvhovIC5woIKYE47Mc1E-I3w-SvF6hnWgENx6FvnrC8uxtAre465GkdDMIGRr6nK0#rd)

[FPGA实现串口升级及MultiBoot（七)AXI HWICAP实例讲解](https://mp.weixin.qq.com/s?__biz=Mzg4ODA5NzM1Nw==&mid=2247514468&idx=1&sn=8bd3d9fd54a4c6fb5dd314aa041b8f56&chksm=cf82a646f8f52f5008dc48a99545d1df1cc0296bb8c0e117a5833018daa5b8914bd030dabb31&payreadticket=HH5lOwZcBNSc_xqyQ8N6aMib-uZ-HiCCEyrX5NL0OyxtCz8IlStwuLmv4BjTAf2wbQ1am1g#rd)

[FPGA实现串口升级及MultiBoot（八)四样错误实例演示 ](https://mp.weixin.qq.com/s?__biz=Mzg4ODA5NzM1Nw==&mid=2247514543&idx=1&sn=e408ab48d82a011f0a3da2d6d258bf47&chksm=cf82a68df8f52f9b4c9007805567c16aa686395c57c2ffc4cc9db79a9f157a40769947c510a1&payreadticket=HKtS9Eox758pdl372VZDevGdx5OhhYaw3QUH9XyeniXn1W7s2pHe-JwG9pl5iY12KkyxE-I#rd)

