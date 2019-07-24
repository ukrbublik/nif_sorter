# Benchmark

Benchmark run from 2019-07-23 23:16:51.263969Z UTC

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



__Input: 100 strings__

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
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">43.28 K</td>
    <td style="white-space: nowrap; text-align: right">23.10 μs</td>
    <td style="white-space: nowrap; text-align: right">±102.86%</td>
    <td style="white-space: nowrap; text-align: right">20.77 μs</td>
    <td style="white-space: nowrap; text-align: right">50.34 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">NifSorter.str_sort</td>
    <td style="white-space: nowrap; text-align: right">41.18 K</td>
    <td style="white-space: nowrap; text-align: right">24.28 μs</td>
    <td style="white-space: nowrap; text-align: right">±77.33%</td>
    <td style="white-space: nowrap; text-align: right">21.52 μs</td>
    <td style="white-space: nowrap; text-align: right">59.12 μs</td>
  </tr>
</table>

Comparison
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap;text-align: right">43.28 K</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">NifSorter.str_sort</td>
    <td style="white-space: nowrap; text-align: right">41.18 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>
</table>


<hr/>

__Input: 1000 strings__

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
    <td style="white-space: nowrap">NifSorter.str_sort</td>
    <td style="white-space: nowrap; text-align: right">3.08 K</td>
    <td style="white-space: nowrap; text-align: right">325.08 μs</td>
    <td style="white-space: nowrap; text-align: right">±33.01%</td>
    <td style="white-space: nowrap; text-align: right">302.10 μs</td>
    <td style="white-space: nowrap; text-align: right">507.43 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">2.65 K</td>
    <td style="white-space: nowrap; text-align: right">377.85 μs</td>
    <td style="white-space: nowrap; text-align: right">±21.38%</td>
    <td style="white-space: nowrap; text-align: right">353.96 μs</td>
    <td style="white-space: nowrap; text-align: right">580.92 μs</td>
  </tr>
</table>

Comparison
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">NifSorter.str_sort</td>
    <td style="white-space: nowrap;text-align: right">3.08 K</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">2.65 K</td>
    <td style="white-space: nowrap; text-align: right">1.16x</td>
  </tr>
</table>


<hr/>

__Input: 10000 strings__

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
    <td style="white-space: nowrap">NifSorter.str_sort</td>
    <td style="white-space: nowrap; text-align: right">208.10</td>
    <td style="white-space: nowrap; text-align: right">4.81 ms</td>
    <td style="white-space: nowrap; text-align: right">±10.83%</td>
    <td style="white-space: nowrap; text-align: right">4.68 ms</td>
    <td style="white-space: nowrap; text-align: right">6.69 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">167.10</td>
    <td style="white-space: nowrap; text-align: right">5.98 ms</td>
    <td style="white-space: nowrap; text-align: right">±14.82%</td>
    <td style="white-space: nowrap; text-align: right">5.67 ms</td>
    <td style="white-space: nowrap; text-align: right">10.04 ms</td>
  </tr>
</table>

Comparison
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">NifSorter.str_sort</td>
    <td style="white-space: nowrap;text-align: right">208.10</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">167.10</td>
    <td style="white-space: nowrap; text-align: right">1.25x</td>
  </tr>
</table>


<hr/>

__Input: 100000 strings__

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
    <td style="white-space: nowrap">NifSorter.str_sort</td>
    <td style="white-space: nowrap; text-align: right">14.99</td>
    <td style="white-space: nowrap; text-align: right">66.71 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.81%</td>
    <td style="white-space: nowrap; text-align: right">65.27 ms</td>
    <td style="white-space: nowrap; text-align: right">77.41 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">10.18</td>
    <td style="white-space: nowrap; text-align: right">98.24 ms</td>
    <td style="white-space: nowrap; text-align: right">±7.36%</td>
    <td style="white-space: nowrap; text-align: right">96.25 ms</td>
    <td style="white-space: nowrap; text-align: right">114.07 ms</td>
  </tr>
</table>

Comparison
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">NifSorter.str_sort</td>
    <td style="white-space: nowrap;text-align: right">14.99</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">10.18</td>
    <td style="white-space: nowrap; text-align: right">1.47x</td>
  </tr>
</table>


<hr/>

