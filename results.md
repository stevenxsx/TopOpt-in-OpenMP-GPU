I tried running the code with the default parameters and got this output:
20 1771906.875000  0.200 0.20    524288     16043 4220.844

20 - completed number of iterations
1771906 - final compliance objective. Lower is better
0.2 - physical volume fraction (20%)
0.2 - max density change between the last 2 design updates. Large because this run stopped at the iteration li,it and not at convergence threshold.
524288 - number of design elements (128 x 64 x 64)
16043 - total inner multigrid-CG iterations across all 20 outer iterations, averaging about 802 per design iteration.
4220 - elapsed runtime in seconds - roughly 70 minutes

Final design outputted as out_128_64_64.vtu
VTU files are VTK unstructured grid files for storing scientific simulation data.
It contains the 3D finite-element mesh, the topology's element connectivity, a density value for each element, and grid dimension + metadata.
Can be viewed in ParaView
