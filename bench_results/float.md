# Benchmark

Benchmark run from 2019-07-21 20:55:29.748286Z UTC

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
    <td style="white-space: nowrap; text-align: right">372.55 K</td>
    <td style="white-space: nowrap; text-align: right">2.68 μs</td>
    <td style="white-space: nowrap; text-align: right">±237.67%</td>
    <td style="white-space: nowrap; text-align: right">2.30 μs</td>
    <td style="white-space: nowrap; text-align: right">18.70 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">175.50 K</td>
    <td style="white-space: nowrap; text-align: right">5.70 μs</td>
    <td style="white-space: nowrap; text-align: right">±90.14%</td>
    <td style="white-space: nowrap; text-align: right">4.97 μs</td>
    <td style="white-space: nowrap; text-align: right">22.73 μs</td>
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
    <td style="white-space: nowrap;text-align: right">372.55 K</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">175.50 K</td>
    <td style="white-space: nowrap; text-align: right">2.12x</td>
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
    <td style="white-space: nowrap">NifSorter.float_sort</td>
    <td style="white-space: nowrap">1.42 KB</td>
      <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap">6.75 KB</td>
    <td>4.75x</td>
  </tr>
</table>

<hr/>

__Input: 100K floats__

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
    <td style="white-space: nowrap; text-align: right">102.67</td>
    <td style="white-space: nowrap; text-align: right">9.74 ms</td>
    <td style="white-space: nowrap; text-align: right">±7.08%</td>
    <td style="white-space: nowrap; text-align: right">9.49 ms</td>
    <td style="white-space: nowrap; text-align: right">13.12 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">27.26</td>
    <td style="white-space: nowrap; text-align: right">36.69 ms</td>
    <td style="white-space: nowrap; text-align: right">±12.69%</td>
    <td style="white-space: nowrap; text-align: right">36.69 ms</td>
    <td style="white-space: nowrap; text-align: right">44.65 ms</td>
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
    <td style="white-space: nowrap;text-align: right">102.67</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">27.26</td>
    <td style="white-space: nowrap; text-align: right">3.77x</td>
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
    <td style="white-space: nowrap">NifSorter.float_sort</td>
    <td style="white-space: nowrap">0.88 MB</td>
      <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap">18.49 MB</td>
    <td>21.11x</td>
  </tr>
</table>

<hr/>

__Input: 10K floats__

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
    <td style="white-space: nowrap; text-align: right">1.21 K</td>
    <td style="white-space: nowrap; text-align: right">0.83 ms</td>
    <td style="white-space: nowrap; text-align: right">±15.58%</td>
    <td style="white-space: nowrap; text-align: right">0.78 ms</td>
    <td style="white-space: nowrap; text-align: right">1.17 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">0.43 K</td>
    <td style="white-space: nowrap; text-align: right">2.34 ms</td>
    <td style="white-space: nowrap; text-align: right">±60.78%</td>
    <td style="white-space: nowrap; text-align: right">2.03 ms</td>
    <td style="white-space: nowrap; text-align: right">9.16 ms</td>
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
    <td style="white-space: nowrap;text-align: right">1.21 K</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">0.43 K</td>
    <td style="white-space: nowrap; text-align: right">2.83x</td>
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
    <td style="white-space: nowrap">NifSorter.float_sort</td>
    <td style="white-space: nowrap">0.0488 MB</td>
      <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap">1.42 MB</td>
    <td>29.12x</td>
  </tr>
</table>

<hr/>

__Input: 1K floats__

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
    <td style="white-space: nowrap; text-align: right">24.52 K</td>
    <td style="white-space: nowrap; text-align: right">40.79 μs</td>
    <td style="white-space: nowrap; text-align: right">±52.63%</td>
    <td style="white-space: nowrap; text-align: right">36.63 μs</td>
    <td style="white-space: nowrap; text-align: right">101.65 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">7.46 K</td>
    <td style="white-space: nowrap; text-align: right">134.11 μs</td>
    <td style="white-space: nowrap; text-align: right">±39.62%</td>
    <td style="white-space: nowrap; text-align: right">116.66 μs</td>
    <td style="white-space: nowrap; text-align: right">247.27 μs</td>
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
    <td style="white-space: nowrap;text-align: right">24.52 K</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">7.46 K</td>
    <td style="white-space: nowrap; text-align: right">3.29x</td>
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
    <td style="white-space: nowrap">NifSorter.float_sort</td>
    <td style="white-space: nowrap">1.22 KB</td>
      <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap">102.83 KB</td>
    <td>84.37x</td>
  </tr>
</table>

<hr/>

