# Makefile for EthicsOS-Core (FIDAN)
# Build the sovereign kernel logic

CXX = g++
CXXFLAGS = -Iinclude -Wall -std=c++11

all: ethicsos_core

ethicsos_core: src/main_kernel.cpp include/ethics_compliance.h
	$(CXX) $(CXXFLAGS) src/main_kernel.cpp -o ethicsos_core

clean:
	rm -f ethicsos_core
