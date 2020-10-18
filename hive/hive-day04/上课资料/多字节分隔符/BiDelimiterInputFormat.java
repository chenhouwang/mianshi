package com.ghgj.hive.dbdelimiter;

import java.io.IOException;

import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapred.FileSplit;
import org.apache.hadoop.mapred.InputSplit;
import org.apache.hadoop.mapred.JobConf;
import org.apache.hadoop.mapred.RecordReader;
import org.apache.hadoop.mapred.Reporter;
import org.apache.hadoop.mapred.TextInputFormat;

public class BiDelimiterInputFormat extends TextInputFormat {

	@Override
	public RecordReader<LongWritable, Text> getRecordReader(InputSplit genericSplit, JobConf job, Reporter reporter) throws IOException {

		reporter.setStatus(genericSplit.toString());
		BiRecordReader reader = new BiRecordReader(job, (FileSplit) genericSplit);
		return reader;
	}
}
