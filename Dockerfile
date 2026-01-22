FROM maven:3-openjdk-8
WORKDIR /app
RUN git clone --depth 1 https://github.com/paritytrading/parity.git .
RUN mvn -q package -DskipTests
CMD java -cp "applications/system/target/classes:libraries/system/target/classes" com.paritytrading.parity.system.TradingSystem
EXPOSE 5000
