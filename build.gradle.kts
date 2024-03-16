plugins {
    id("java")
}

group = "org.example"
version = "1.0-SNAPSHOT"

java {
    sourceCompatibility = JavaVersion.VERSION_1_8 // 指定支持的 Java 代碼語言級別
    targetCompatibility = JavaVersion.VERSION_1_8 // 設置用於確定應該生成哪個Java版本的.class字節碼
}

repositories {
    mavenCentral()
}

dependencies {
    compileOnly("javax.servlet:javax.servlet-api:3.1.0")

    implementation("org.mybatis:mybatis:3.5.3")
    implementation("mysql:mysql-connector-java:8.0.19")
    implementation("ch.qos.logback:logback-classic:1.2.3") // 日誌
    implementation("com.alibaba:druid:1.1.14") // druid 數據庫連接池

    testImplementation("junit:junit:4.12") // 單元測試
}

tasks.withType<JavaCompile> {
    // 配置這個處理 idea log 亂碼問題
    options.encoding = "UTF-8"
}
