def count_ways_to_cut_rod(N, K):
    # Create a list dp to store the number of ways for each value from 0 to N
    dp = [0] * (N + 1)
    dp[0] = 1  # There is one way to represent 0 as the sum of any powers
    
    # Iterate through each power from 1 to K
    for power in range(1, K + 1):
        # Calculate the possible values that can be used to represent N
        values = [i ** power for i in range(1, N + 1) if i ** power <= N]
        
        # Update dp based on the current power
        for value in values:
            for i in range(value, N + 1):
                dp[i] += dp[i - value]
    
    return dp[N]

# Input
N = int(input())
K = int(input())

# Calculate and print the number of ways to cut the rod
result = count_ways_to_cut_rod(N, K)
print(result)
