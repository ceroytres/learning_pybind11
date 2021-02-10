set +x
echo $(python3-config --includes) 
c++ -O3 -Wall -shared -std=c++11 -fPIC $(python3-config --includes) -Iextern/pybind11/include \
                      -undefined dynamic_lookup \
                      ./src/example.cpp -o ./build/example$(python3-config --extension-suffix)

c++ -O3 -Wall -shared -std=c++11 -fPIC $(python3-config --includes) -Iextern/pybind11/include \
                      -undefined dynamic_lookup \
                      ./src/pet.cpp -o ./build/pet$(python3-config --extension-suffix)