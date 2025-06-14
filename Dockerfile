# pull a base image which gives all the required tools and libraries.
FROM openjdk:17

# create a folder where the app code will be stored.
WORKDIR /app

# copy the source code from your HOST machine to your container.
COPY src/Main.java /app/Main.java

# compile the application code.
RUN javac Main.java

# run the application 
CMD ["java", "Main"]