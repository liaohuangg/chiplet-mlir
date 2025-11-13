
文件说明
complex.h：定义了复数类的头文件，用于复数运算。
vector.h：定义了三维向量类的头文件，用于空间向量运算。
watch.h：用于复数矩阵输出的头文件，便于查看处理过程中的矩阵数据。
echo_m.cpp：生成雷达回波的仿真程序，是SAR成像过程中的重要组成部分。
deal_m.cpp：成像处理程序，利用CS算法对回波数据进行成像处理。

 complex.h是定义复数类的头文件；complex类的对象可以像double型的数据一样用运算符进行加减乘除运算，和输入，输出操作，为编程带来方便；该文件还定义了一维和二维的快速傅里叶变换(FFT)；

  vector.h是定义三维向量类的头文件；vector类的对象可以用运算符进行加减乘运算；

  watch.h是复数矩阵的输出头文件；可输出矩阵量化后的幅度、相位到bmp文件，以观察成像结果或频谱；也可输出矩阵的某一列或某一行到txt文件，可用excel查看数据；也可以二进制输出dat文件，可用于结果储存，这种格式文件也可用于成像质量评估软件；

  echo_m.cpp是生成回波的仿真程序；结果保存在txt文件，以便被后面的成像处理程序调用；

  deal_m.cpp是成像处理程序；该程序采用进行三次相位补偿的CS算法；

  整个程序仿真了条带模式下机载SAR点阵目标的CS算法的成像过程。系统参数可根据具体情况修改。

  由于图像较大和运算复杂，程序运行时间较长，大约为3-4分钟。


使用说明
请确保您的开发环境支持C++，并且已正确配置了相关的编译器。在编译和运行仿真程序前，请确保所有头文件和源文件都位于同一目录下，并按照以下步骤操作：

编译echo_m.cpp和deal_m.cpp程序。
运行echo_m程序生成雷达回波数据。
使用deal_m程序对生成的回波数据进行成像处理。
注意事项
请根据您的具体需求对代码进行相应的调整和优化。
请确保在仿真过程中遵循所有相关的学术和科研规范。
许可
此资源文件可供个人学习和研究使用，未经允许不得用于商业用途。如需使用或分享，请遵守相关法律法规，并保持原作者的知识产权。


运行该程序
g++ -g echo_m.cpp -o echo_m -I ./
./echo_m // 生成echo_m60.txt 生成雷达回波的仿真程序，是SAR成像过程中的重要组成部分。
g++ -g deal_m.cpp -o deal_m -I ./
./deal_m //随后运行deal_m生成结果 成像处理程序，利用CS算法对回波数据进行成像处理。


Callgrind 是一个代码性能分析工具，它可以生成函数调用图，用于识别代码中的瓶颈和优化机会，隶属于Valgrind的工具集。

valgrind安装流程：
  ./autogen.sh
  ./configure --prefix=/usr/local
  make
  make install

valgrind --tool=callgrind  ./deal_m > test.log 2>&1



KCacheGrind是一个Linux下的性能分析工具，可以用来分析程序的运行时间和内存使用情况。

kcachegrind安装流程：
Requirements:
* KF 5.12 or higher: Frameworks development packages (libs & headers)
* CMake
的安装这个
apt-get install extra-cmake-modules
且 Could not find a configuration file for package "ECM" that is compatible
  with requested version "6.0.0".
Commands (from base directory):

	cmake .; make; make install

To not build in the source directories, do:
  接下来这样
	mkdir build; cd build; cmake ..; make; make install

简单运行 “kcachegrind” 应该会打开一个没有加载跟踪的顶级窗口。