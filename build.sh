set +x
echo $(python3-config --includes) 
c++ -O3 -Wall -shared -std=c++11 -fPIC $(python3-config --includes) -Iextern/pybind11/include \
                      -undefined dynamic_lookup \
                      ./example.cpp -o example$(python3-config --extension-suffix)