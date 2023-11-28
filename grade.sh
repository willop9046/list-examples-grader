CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'

if [[ -f student-submission/ListExamples.java ]]
then
echo 'file found'
else
echo 'file not found'
fi

if [[ -f student-submission/ListExample.java ]]
then
echo 'file found'
else
echo 'file not found'
fi

cp TestListExamples.java grading-area/
cp student-submission/* grading-area/
cp lib/* grading-area/
echo 'moved files'

echo 'compiling files'
cd grading-area
javac -cp .:hamcrest-core-1.3.jar:junit-4.13.2.jar *.java
java -cp .:hamcrest-core-1.3.jar:junit-4.13.2.jar org.junit.runner.JUnitCore TestListExamples


# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

# Then, add here code to compile and run, and do any post-processing of the
# tests