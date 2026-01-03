#!/bin/bash

if [[ $- == *x* ]] || [[ $(ps -p $$ -o args=) == *" -x"* ]]; then
    echo "Error: Debugging detected!"
    kill -9 $$
fi
trap 'echo "Quit"; kill -9 $$' SIGINT SIGTERM SIGTSTP

# Encrypted by TITAN (Deki Niswara)
_A2lYYex8NO="U2FsdGVkX19KVDlJLTJvpobzo27sjNVvbDS868yWTdFePTJjewTyOmQfbXQbYBk6+Oksh13InM/Ph/qGk3t9RS3J1PqMqiOwFBJRQZO/3DRxULvi71mHdRh2pcGS0H0WNNr3e6ldzW80tW0/VFDUZOUUc1ek1EWrusztd1fxgkvk49i8zwx7umFsAeZCyr6L39gCfbzmU1zrYy9mDAMtwWYmg7amoLKAQS8OgGTCQwRRe9bbZJySlZFYLbNyByStGV0hP9uBcuMwgFwxZ8g8xyMjJbmg8XYAwLHeZhuFaDNIoq29/hL/8f11c3LQOfIt3oAWwLgqmf6X2eUq2n0MaFIZ3fdqahwLQ8Ck9uaRUy+p0IdWkpAtYJu8Hz9siEyN6h6aSOlTnRCrWVlia/UAE3BWBP2yqEwWp7ik1cKHTCQb5cGjnok9lYL/vpQbfRQU/EOcQui1mHm+w6qSYcxWRzKiWHwybKPiCNNmGbK49R8GUAKSggjDGmDX+3iQ2CGBLZjYb9H1SkazrSeROUSxYU654F4/XVS2j445QVTN0zA91Fx0YASLjK2IHhJ9QYRsMreK4gnGC8O8bqVMvzvnJyJYlbKkgB7NkQxPXotAk8Z6PMbO1v9KLJ+GpBnqdPa8zkSa7vj+p1SA64ADZBgOnE9q3XKDUSMFq4RtbS2lDjwBEoptJ7P8vBNqYFm9FI+YQHFknMT7ZO7pORWXeuljElLRSHPlfDpOEmZGSCd5//dzTwvgmYDdQYGSQjYkZtf/pzKCg0vNUAi8p5AeO0mtD5BxE7YU5Cxt64WZoHqMWeb8fJFuGXHOpKf5f7J2zUEpm1tb/OEbj0eEOdXkIej71hnJ2CBfBpzoq2DQyj2OJ7QBjr2IU78Ez1n29WLm70qP"
_2tL1jJIjLM="QkVSaWZveENDM3kyV0pUY3ZiNzVRVTkxZ3lMaUw5bE0="
_FGeAnS4hpB=$(echo "$_2tL1jJIjLM" | base64 -d)
_CNH21IhNjP=$(echo "$_A2lYYex8NO" | base64 -d | openssl enc -d -aes-256-cbc -pbkdf2 -iter 10000 -salt -pass pass:"$_FGeAnS4hpB" 2>/dev/null)
if [ -z "$_CNH21IhNjP" ]; then echo "Error: Corrupted Data"; exit 1; fi
unset _A2lYYex8NO _2tL1jJIjLM _FGeAnS4hpB
eval "$_CNH21IhNjP"
