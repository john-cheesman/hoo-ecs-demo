rm hoo-ecs-demo.love
find . -name "*.swp" -type f -delete
zip -9 -r hoo-ecs-demo.love . -x \*.git\* -x \*.sh\* -x \*releases\* -x \*lib/ldoc\* -x \*docs\*
