# Benchmark

Benchmark run from 2019-07-23 23:14:24.686619Z UTC

## System

Benchmark suite executing on the following system:

<table style="width: 1%">
  <tr>
    <th style="width: 1%; white-space: nowrap">Operating System</th>
    <td>Linux</td>
  </tr><tr>
    <th style="white-space: nowrap">CPU Information</th>
    <td style="white-space: nowrap">Intel(R) Core(TM) i5-6500 CPU @ 3.20GHz</td>
  </tr><tr>
    <th style="white-space: nowrap">Number of Available Cores</th>
    <td style="white-space: nowrap">4</td>
  </tr><tr>
    <th style="white-space: nowrap">Available Memory</th>
    <td style="white-space: nowrap">15.55 GB</td>
  </tr><tr>
    <th style="white-space: nowrap">Elixir Version</th>
    <td style="white-space: nowrap">1.7.4</td>
  </tr><tr>
    <th style="white-space: nowrap">Erlang Version</th>
    <td style="white-space: nowrap">21.2</td>
  </tr>
</table>

## Configuration

Benchmark suite executing with the following configuration:

<table style="width: 1%">
  <tr>
    <th style="width: 1%">:time</th>
    <td style="white-space: nowrap">1 s</td>
  </tr><tr>
    <th>:parallel</th>
    <td style="white-space: nowrap">1</td>
  </tr><tr>
    <th>:warmup</th>
    <td style="white-space: nowrap">100 ms</td>
  </tr>
</table>

## Statistics



__Input: 100 floats__

Run Time
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">NifSorter.float_sort</td>
    <td style="white-space: nowrap; text-align: right">328.07 K</td>
    <td style="white-space: nowrap; text-align: right">3.05 μs</td>
    <td style="white-space: nowrap; text-align: right">±146.49%</td>
    <td style="white-space: nowrap; text-align: right">2.64 μs</td>
    <td style="white-space: nowrap; text-align: right">19.19 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">157.02 K</td>
    <td style="white-space: nowrap; text-align: right">6.37 μs</td>
    <td style="white-space: nowrap; text-align: right">±253.34%</td>
    <td style="white-space: nowrap; text-align: right">4.95 μs</td>
    <td style="white-space: nowrap; text-align: right">24.37 μs</td>
  </tr>
</table>

Comparison
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">NifSorter.float_sort</td>
    <td style="white-space: nowrap;text-align: right">328.07 K</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">157.02 K</td>
    <td style="white-space: nowrap; text-align: right">2.09x</td>
  </tr>
</table>


<hr/>

__Input: 1000 floats__

Run Time
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">NifSorter.float_sort</td>
    <td style="white-space: nowrap; text-align: right">26.04 K</td>
    <td style="white-space: nowrap; text-align: right">38.40 μs</td>
    <td style="white-space: nowrap; text-align: right">±53.16%</td>
    <td style="white-space: nowrap; text-align: right">33.54 μs</td>
    <td style="white-space: nowrap; text-align: right">99.98 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">7.10 K</td>
    <td style="white-space: nowrap; text-align: right">140.75 μs</td>
    <td style="white-space: nowrap; text-align: right">±74.07%</td>
    <td style="white-space: nowrap; text-align: right">121.71 μs</td>
    <td style="white-space: nowrap; text-align: right">269.47 μs</td>
  </tr>
</table>

Comparison
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">NifSorter.float_sort</td>
    <td style="white-space: nowrap;text-align: right">26.04 K</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">7.10 K</td>
    <td style="white-space: nowrap; text-align: right">3.67x</td>
  </tr>
</table>


<hr/>

__Input: 10000 floats__

Run Time
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">NifSorter.float_sort</td>
    <td style="white-space: nowrap; text-align: right">1.04 K</td>
    <td style="white-space: nowrap; text-align: right">0.96 ms</td>
    <td style="white-space: nowrap; text-align: right">±20.20%</td>
    <td style="white-space: nowrap; text-align: right">0.88 ms</td>
    <td style="white-space: nowrap; text-align: right">1.73 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">0.54 K</td>
    <td style="white-space: nowrap; text-align: right">1.85 ms</td>
    <td style="white-space: nowrap; text-align: right">±13.16%</td>
    <td style="white-space: nowrap; text-align: right">1.77 ms</td>
    <td style="white-space: nowrap; text-align: right">2.81 ms</td>
  </tr>
</table>

Comparison
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">NifSorter.float_sort</td>
    <td style="white-space: nowrap;text-align: right">1.04 K</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">0.54 K</td>
    <td style="white-space: nowrap; text-align: right">1.93x</td>
  </tr>
</table>


<hr/>

__Input: 100000 floats__

Run Time
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">NifSorter.float_sort</td>
    <td style="white-space: nowrap; text-align: right">76.43</td>
    <td style="white-space: nowrap; text-align: right">13.08 ms</td>
    <td style="white-space: nowrap; text-align: right">±10.40%</td>
    <td style="white-space: nowrap; text-align: right">12.80 ms</td>
    <td style="white-space: nowrap; text-align: right">19.92 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">33.28</td>
    <td style="white-space: nowrap; text-align: right">30.05 ms</td>
    <td style="white-space: nowrap; text-align: right">±11.19%</td>
    <td style="white-space: nowrap; text-align: right">29.40 ms</td>
    <td style="white-space: nowrap; text-align: right">39.46 ms</td>
  </tr>
</table>

Comparison
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">NifSorter.float_sort</td>
    <td style="white-space: nowrap;text-align: right">76.43</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">33.28</td>
    <td style="white-space: nowrap; text-align: right">2.3x</td>
  </tr>
</table>


<hr/>

