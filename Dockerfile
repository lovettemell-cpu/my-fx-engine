FROM maven:3-openjdk-8
WORKDIR /app
COPY . .
RUN mvn -B package -DskipTests
CMD java -cp target/classes com.myfx.parity_engine.Main
EXPOSE 5000
