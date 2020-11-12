# Apriori
Hadoop MapReduce implementation of Association Rule mining - Apriori algorithm.

## Usage
This project uses Hadoop 3.3.0 by default. 

*NOTE*: This project is not tested for older releases of Hadoop below 3.3.0 and it is recommended not to use an older Hadoop release to avoid compatibility issues.


__Compile and Build the jar__

```
$ ./run.sh
```

__Run the jar__
You can run the project like this:
```
$ hadoop jar ./mba.jar com.pranit.mba.MbaDriver input output 0.5 0 6 " " 3 0
```

- *input*: path to the input dataset in HDFS
- *output*: path to the output directory in HDFS which will store all the intermediate and final results.
- *min_sup*: minimum support value for frequent item-set mining. The value should be in the range 0.0 - 1.0
- *min_conf*: minimum confidence value for association rule mining. The value should be in the range 0.0 - 1.0
- *txns_count*: total number of transactions in the input dataset. Value should not be 0.
- *delimiter*: literal used in the dataset to separate multiple items in a single line of transaction. For a .csv file , will be the separator. If the the separator is whitespace then use qoutes to enclose it like this " "
- *max_pass*: maximum number of iterations you want the Apriori algorithm to run for. A value of 5 will find all frequent item-sets of size upto 5 if possible given the threshold support specified above.
- *filterbylift*: a value of 1 will filter all the rules by positive lift percentage and final output will only contain rules with lift > 1.0 otherwise a value of 0 will output all the rules irrespective of the lift value.

## Reference
https://github.com/pranitbose/market-basket-analysis.git
