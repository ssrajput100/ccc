def min_balls_to_buy(N, arr):
    if N == 0:
        return 0
    
    # Initialize an array to store the number of balls for each child
    balls = [1] * N
    
    # Traverse the array from left to right, updating the number of balls
    for i in range(1, N):
        if arr[i] > arr[i - 1]:
            balls[i] = balls[i - 1] + 1
    
    # Traverse the array from right to left, updating the number of balls
    for i in range(N - 2, -1, -1):
        if arr[i] > arr[i + 1] and balls[i] <= balls[i + 1]:
            balls[i] = balls[i + 1] + 1
    
    # Calculate the total number of balls needed
    total_balls = sum(balls)
    return total_balls

# Input
N = int(input())
arr = list(map(int, input().split()))

# Calculate and print the minimum number of balls to buy
result = min_balls_to_buy(N, arr)
print(result)
