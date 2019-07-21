# Benchmark

Benchmark run from 2019-07-21 20:41:27.518102Z UTC

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



__Input: 100 integers__

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
    <td style="white-space: nowrap">NifSorter.int_sort</td>
    <td style="white-space: nowrap; text-align: right">409.70 K</td>
    <td style="white-space: nowrap; text-align: right">2.44 μs</td>
    <td style="white-space: nowrap; text-align: right">±181.37%</td>
    <td style="white-space: nowrap; text-align: right">2.16 μs</td>
    <td style="white-space: nowrap; text-align: right">14.31 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">206.30 K</td>
    <td style="white-space: nowrap; text-align: right">4.85 μs</td>
    <td style="white-space: nowrap; text-align: right">±187.98%</td>
    <td style="white-space: nowrap; text-align: right">4.37 μs</td>
    <td style="white-space: nowrap; text-align: right">18.04 μs</td>
  </tr>
</table>

Comparison
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">NifSorter.int_sort</td>
    <td style="white-space: nowrap;text-align: right">409.70 K</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">206.30 K</td>
    <td style="white-space: nowrap; text-align: right">1.99x</td>
  </tr>
</table>


<hr/>

__Input: 100K integers__

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
    <td style="white-space: nowrap">NifSorter.int_sort</td>
    <td style="white-space: nowrap; text-align: right">130.18</td>
    <td style="white-space: nowrap; text-align: right">7.68 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.65%</td>
    <td style="white-space: nowrap; text-align: right">7.63 ms</td>
    <td style="white-space: nowrap; text-align: right">9.40 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">46.55</td>
    <td style="white-space: nowrap; text-align: right">21.48 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.61%</td>
    <td style="white-space: nowrap; text-align: right">21.19 ms</td>
    <td style="white-space: nowrap; text-align: right">25.56 ms</td>
  </tr>
</table>

Comparison
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">NifSorter.int_sort</td>
    <td style="white-space: nowrap;text-align: right">130.18</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">46.55</td>
    <td style="white-space: nowrap; text-align: right">2.8x</td>
  </tr>
</table>


<hr/>

__Input: 10K integers__

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
    <td style="white-space: nowrap">NifSorter.int_sort</td>
    <td style="white-space: nowrap; text-align: right">1.47 K</td>
    <td style="white-space: nowrap; text-align: right">0.68 ms</td>
    <td style="white-space: nowrap; text-align: right">±14.66%</td>
    <td style="white-space: nowrap; text-align: right">0.65 ms</td>
    <td style="white-space: nowrap; text-align: right">0.96 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">0.64 K</td>
    <td style="white-space: nowrap; text-align: right">1.56 ms</td>
    <td style="white-space: nowrap; text-align: right">±7.82%</td>
    <td style="white-space: nowrap; text-align: right">1.52 ms</td>
    <td style="white-space: nowrap; text-align: right">1.96 ms</td>
  </tr>
</table>

Comparison
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">NifSorter.int_sort</td>
    <td style="white-space: nowrap;text-align: right">1.47 K</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">0.64 K</td>
    <td style="white-space: nowrap; text-align: right">2.3x</td>
  </tr>
</table>


<hr/>

__Input: 1K integers__

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
    <td style="white-space: nowrap">NifSorter.int_sort</td>
    <td style="white-space: nowrap; text-align: right">29.07 K</td>
    <td style="white-space: nowrap; text-align: right">34.40 μs</td>
    <td style="white-space: nowrap; text-align: right">±39.81%</td>
    <td style="white-space: nowrap; text-align: right">31.80 μs</td>
    <td style="white-space: nowrap; text-align: right">74.00 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">9.16 K</td>
    <td style="white-space: nowrap; text-align: right">109.21 μs</td>
    <td style="white-space: nowrap; text-align: right">±20.09%</td>
    <td style="white-space: nowrap; text-align: right">101.31 μs</td>
    <td style="white-space: nowrap; text-align: right">205.14 μs</td>
  </tr>
</table>

Comparison
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">NifSorter.int_sort</td>
    <td style="white-space: nowrap;text-align: right">29.07 K</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">9.16 K</td>
    <td style="white-space: nowrap; text-align: right">3.17x</td>
  </tr>
</table>


<hr/>

