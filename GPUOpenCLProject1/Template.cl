/*****************************************************************************
 * Copyright (c) 2013-2016 Intel Corporation
 * All rights reserved.
 *
 * WARRANTY DISCLAIMER
 *
 * THESE MATERIALS ARE PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL INTEL OR ITS
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
 * OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THESE
 * MATERIALS, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 * Intel Corporation is the author of the Materials, and requests that all
 * problem reports or change requests be submitted to it directly
 *****************************************************************************/

//constant sampler_t sampler = CLK_NORMALIZED_COORDS_FALSE | CLK_ADDRESS_CLAMP | CLK_FILTER_NEAREST;
constant uint chromatidSize = 100;
typedef struct chromatid {
		uint geneId[chromatidSize]; 
	}chromatid;

	typedef struct chromosome {
		chromatid momChromatid;
		chromatid dadChromatid;
	}chromosome;
	
//__kernel void Add(read_only image2d_t imageA, write_only image2d_t imageC)
__kernel void Add(__global struct chromosome *_chromosome) {
	// Custom Dani code, 
	// defining my crazy structs
	// I''m screwed trying to debug the kernel

	//const int x = get_global_id(0);
//	printf("%d\\r\\n", sizeof(r_chromosome[x]));  	//create stupid chromatid*/
	// example settings
	/*chromatid dadChromatid;
	dadChromatid.geneId[0] = 1;
	chromosome chromosome1;
	chromosome1.dadChromatid = dadChromatid;
	chromosome1.momChromatid = dadChromatid;*/
	const int x = get_global_id(0);
	_chromosome[0].dadChromatid.geneId[x]++;
//	printf("%d\\r\\n", _chromosome[0].dadChromatid.geneId[x]);  	//create stupid chromatid

	//chromatid = new chromatidType()
    

 /*   const int y = get_global_id(1);
	
    uint A = read_imageui(imageA, sampler, (int2)(x, y)).x;
   // uint B = read_imageui(imageB, sampler, (int2)(x, y)).x;

    write_imageui(imageC, (int2)(x, y), A);*/
}

