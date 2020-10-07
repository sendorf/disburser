# Setup

To put everything up and running you need to have docker and docker-compose installed in your machine. Then run:

* make install
* make clean_db
* make start

# Using the app

Yo go to `localhost:3000` (you can configure the port setting up the env constant `DISBURSER_PORT`). There are right now no available endpoints created.

# Running the disburse worker

To run the worker `docker-compose run --rm disburser bundle exec rails c` to start the console. `DisburseJob.perform_later` to make it run.

# Choices

To avoid secuential ids that can be ugly specially at the beging I have user UUID's for the different models. I had no time to set cron task to run the job to disburse the merchants. This job calculates the fees for the orders that can be processed when the job is running. Those orders are the ones that are completed and had not been disbursed previously.

Also is missing an endopoint to retrieve the disburses for a merchant in a week, the idea wuold be creating an scope in Order model to obtain the disbursements for a week, there would be 2 endpoints, one for a concrete merchant something like `/merchants/0e325d4a-46f4-48b4-8b5f-b55048fdfdfc?week=43` (show method in the controller) and another one for all merchants for a week `/merchants?week=43` (index method in the controller).

As the fee has no sense without the order being disbursed it's created when doing it, also the way to persist this is saving the time in the order, no other information is needed as the amount disbursed is the amount of the order.
