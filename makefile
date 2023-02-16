jar:
	docker run -it --rm -v "maven-repo:/root/.m2" -v "$(PWD):/src" -w "/src" maven:3.9-eclipse-temurin-8 mvn -Drat.skip=true clean package

clean:
	docker run -it --rm -v "maven-repo:/root/.m2" -v "$(PWD):/src" -w "/src" maven:3.9-eclipse-temurin-8 mvn -Drat.skip=true clean
