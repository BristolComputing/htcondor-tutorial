host=`hostname`
echo "I am running on $host"
echo "I got the following parameters: $@"

mkdir -p hello/world
touch hello/world.txt
touch hello/world/something.txt
touch test.txt

# show the input file
cat input_file.txt
sleep 60
