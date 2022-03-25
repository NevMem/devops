# mkdir tmp
# cd tmp
# git clone https://github.com/google/googletest.git
# cd ../
# mkdir task-ci/3rdparty
# cp -r tmp/googletest task-ci/3rdparty/
# rm -rf tmp
# ls -la task-ci/3rdparty/

mkdir task-ci/build

cd task-ci && GOOGLE_TEST_DIR=googletest cmake -B ./build -DCMAKE_BUILD_TYPE=Test
cd ../

cd task-ci && cmake --build ./build --config Test
cd ../

cd task-ci/bin && ls -la && ctest -C Test
