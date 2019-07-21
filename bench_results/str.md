# Benchmark

Benchmark run from 2019-07-21 20:42:07.046410Z UTC

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
    <td style="white-space: nowrap">NifSorter.str_sort</td>
    <td style="white-space: nowrap; text-align: right">44.28 K</td>
    <td style="white-space: nowrap; text-align: right">22.58 μs</td>
    <td style="white-space: nowrap; text-align: right">±99.51%</td>
    <td style="white-space: nowrap; text-align: right">20.86 μs</td>
    <td style="white-space: nowrap; text-align: right">49.88 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">43.91 K</td>
    <td style="white-space: nowrap; text-align: right">22.78 μs</td>
    <td style="white-space: nowrap; text-align: right">±115.24%</td>
    <td style="white-space: nowrap; text-align: right">20.85 μs</td>
    <td style="white-space: nowrap; text-align: right">50.46 μs</td>
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
    <td style="white-space: nowrap;text-align: right">44.28 K</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">43.91 K</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>
</table>

Memory Usage
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
      <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">NifSorter.str_sort</td>
    <td style="white-space: nowrap">1.73 KB</td>
      <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap">6.75 KB</td>
    <td>3.89x</td>
  </tr>
</table>

<hr/>

__Input: 100K strings__

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
    <td style="white-space: nowrap; text-align: right">16.46</td>
    <td style="white-space: nowrap; text-align: right">60.77 ms</td>
    <td style="white-space: nowrap; text-align: right">±10.37%</td>
    <td style="white-space: nowrap; text-align: right">58.30 ms</td>
    <td style="white-space: nowrap; text-align: right">80.72 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">11.43</td>
    <td style="white-space: nowrap; text-align: right">87.50 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.82%</td>
    <td style="white-space: nowrap; text-align: right">85.82 ms</td>
    <td style="white-space: nowrap; text-align: right">99.90 ms</td>
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
    <td style="white-space: nowrap;text-align: right">16.46</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">11.43</td>
    <td style="white-space: nowrap; text-align: right">1.44x</td>
  </tr>
</table>

Memory Usage
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
      <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">NifSorter.str_sort</td>
    <td style="white-space: nowrap">0.82 MB</td>
      <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap">18.53 MB</td>
    <td>22.61x</td>
  </tr>
</table>

<hr/>

__Input: 10K strings__

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
    <td style="white-space: nowrap; text-align: right">201.29</td>
    <td style="white-space: nowrap; text-align: right">4.97 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.70%</td>
    <td style="white-space: nowrap; text-align: right">4.76 ms</td>
    <td style="white-space: nowrap; text-align: right">5.97 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">179.23</td>
    <td style="white-space: nowrap; text-align: right">5.58 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.37%</td>
    <td style="white-space: nowrap; text-align: right">5.51 ms</td>
    <td style="white-space: nowrap; text-align: right">9.22 ms</td>
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
    <td style="white-space: nowrap;text-align: right">201.29</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">179.23</td>
    <td style="white-space: nowrap; text-align: right">1.12x</td>
  </tr>
</table>

Memory Usage
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
      <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">NifSorter.str_sort</td>
    <td style="white-space: nowrap">0.0183 MB</td>
      <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap">1.42 MB</td>
    <td>77.55x</td>
  </tr>
</table>

<hr/>

__Input: 1K strings__

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
    <td style="white-space: nowrap; text-align: right">2.72 K</td>
    <td style="white-space: nowrap; text-align: right">367.45 μs</td>
    <td style="white-space: nowrap; text-align: right">±21.44%</td>
    <td style="white-space: nowrap; text-align: right">341.62 μs</td>
    <td style="white-space: nowrap; text-align: right">581.68 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">2.60 K</td>
    <td style="white-space: nowrap; text-align: right">384.08 μs</td>
    <td style="white-space: nowrap; text-align: right">±26.89%</td>
    <td style="white-space: nowrap; text-align: right">357.17 μs</td>
    <td style="white-space: nowrap; text-align: right">601.48 μs</td>
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
    <td style="white-space: nowrap;text-align: right">2.72 K</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">2.60 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>
</table>

Memory Usage
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
      <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">NifSorter.str_sort</td>
    <td style="white-space: nowrap">28.99 KB</td>
      <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap">101.38 KB</td>
    <td>3.5x</td>
  </tr>
</table>

<hr/>

