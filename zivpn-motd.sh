#!/bin/bash

if [[ $- == *x* ]] || [[ $(ps -p $$ -o args=) == *" -x"* ]]; then
    echo "Error: Debugging detected!"
    kill -9 $$
fi
trap 'echo "Quit"; kill -9 $$' SIGINT SIGTERM SIGTSTP

# Encrypted by TITAN (Deki Niswara)
_Mb1M2a3Ndu="U2FsdGVkX1/jeHWWIrkwT8V250mkSjVlYnEvXGGF1E7+AGLmij1E+WrXVO1BJ7sLSG0lZppQWGs0WLFKiCuoxfi/Ipcl4U/gucDGBNyJv5tdAAWigNIb2Yyb63zoKqnrTgzd3nLAz9+IoxcF6grnuGKNOBLBh+z5ksNl3m0dXePuYZF3hcu1giH1VbXusTGu4579KVYEb3lmx7Y7WTihvneYOSt4UFfe/+Sd+0ZreO20rtrwP38N2BBRtcRy03Gl8Kij8Yue+HDIiuuHegtoIG7ntfwzqbGwiaBZjGd0+jgzltZkZ8obavJ2omozzS4TukE1Je9HZBkDkGoEnaPD4Ya5riYtatWkvwLGvWR4izwy9G2Hd6GezRI08MibwKNhYBj9FEAmiQKnNm47CZeF0Mr9zqfTF7SCLgOilbqN8yHZJtmFeVDYR7FiH/fg+NNqm3CW1qaeTUkYR/o7PMjQ5vsYtsoUf+N2lryPK3I4DL5h8H8aYFl6rQJguibQioMucQFZIEONN2eEflpLo0iRvWz7mORRmuz+9ilXL1SDxAd4f1tJFkmKGnt7ySVfez58mfO+bt30sYl25Hyvm4R9x7+hdHHrrhcNnM5DOmj5uyKS/2NOxNjy9gH/QxIbCWuXlNCYFtEu0VQTEdl1UlD7OtQa0btWvmx7mP8rsbEtWvRcp+f2YMT0lVSFMVzmx9XlrCiV392tAz0F3JFOq+WRal4ISgaMOmw5xLjHq1Q0Rjd34a+/UBkGDcwhswbzWrQJUrQq1u0mv8moCjhUX6sH7YSiSQfHkgj24fofBE8SAxITnEEUm1sfSdCPd7qQtUtdD8N1yG/SAJBcNISsqKDC14Uu2S3wwwQcjhFZGVH2fbXOWGXX2bLCPvVy97zM7RL/"
_QAsMavpwls="REJicDduYjhoaTVzMWx2aGdIZXExeXlEMk0zVkFxOVA="
_Vk1crqmguW=$(echo "$_QAsMavpwls" | base64 -d)
_rQF7fV7Jdb=$(echo "$_Mb1M2a3Ndu" | base64 -d | openssl enc -d -aes-256-cbc -pbkdf2 -iter 10000 -salt -pass pass:"$_Vk1crqmguW" 2>/dev/null)
if [ -z "$_rQF7fV7Jdb" ]; then echo "Error: Corrupted Data"; exit 1; fi
unset _Mb1M2a3Ndu _QAsMavpwls _Vk1crqmguW
eval "$_rQF7fV7Jdb"
