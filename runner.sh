#! /bin/bash
erlc -DTEST src/calculator.erl
erl -noshel -s calculator test \
            -s init stop
