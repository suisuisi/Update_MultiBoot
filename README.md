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
