mkdir tmp
cd tmp
git clone https://github.com/google/googletest.git
cd ../
mkdir task-ci/3rdparty
cp -r tmp/googletest task-ci/3rdparty/
rm -rf tmp
ls -la task-ci/3rdparty/

cd task-ci && cmake -B ${{github.workspace}}/task-ci/build -DCMAKE_BUILD_TYPE=${{env.BUILD_TYPE}}
cd ../

cd task-ci && cmake --build ${{github.workspace}}/task-ci/build --config ${{env.BUILD_TYPE}}
cd ../

# cd task-ci/build && ctest -C ${{env.BUILD_TYPE}}
