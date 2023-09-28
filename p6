def maximizeProfits(producer_companies, consumer_companies):
    # Sort producer and consumer companies by delivery dates
    producer_companies.sort(key=lambda x: x[1])
    consumer_companies.sort(key=lambda x: x[1])

    max_profit = 0
    current_producer = 0
    current_profit = 0

    for consumer in consumer_companies:
        while current_producer < len(producer_companies) and producer_companies[current_producer][1] < consumer[1]:
            # Choose the producer with the earliest delivery date
            current_producer += 1

        if current_producer < len(producer_companies):
            # Calculate the profit for selling widgets to the consumer
            current_profit += (consumer[0] - producer_companies[current_producer][0])

        max_profit = max(max_profit, current_profit)

    return max_profit

# Input
m, n = map(int, input().split())
producer_companies = [list(map(int, input().split())) for _ in range(m)]
consumer_companies = [list(map(int, input().split())) for _ in range(n)]

# Calculate and print the maximum total profit
result = maximizeProfits(producer_companies, consumer_companies)
print(result)
