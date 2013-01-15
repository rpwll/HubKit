/*
 Copyright (c) 2013 Rhys Powell and Josh Johnson
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of
 this software and associated documentation files (the "Software"), to deal in
 the Software without restriction, including without limitation the rights to
 use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
 of the Software, and to permit persons to whom the Software is furnished to do
 so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
 */

#import "Specta.h"

#define EXP_SHORTHAND
#import "Expecta.h"

#import <OCMock/OCMock.h>
#import "OKHTTPClient.h"

SpecBegin(OKHTTPClientSpec)

describe(@"OKHTTPClient", ^{
	
	// stub out sample for now
	context(@"when testing with a mock object", ^{
		__block OCMockObject *mockClient = nil;
		
		beforeAll(^{
			mockClient = [OCMockObject mockForClass:[OKHTTPClient class]];
		});
		
		it(@"should send login", ^{
			[[mockClient stub] logInUserWithUsername:@"XXXX" password:@"XXXX" success:nil failure:nil];
			[mockClient verify];
		});
		
		// sample to verify setup
		it(@"should not fail", ^{
			expect(1).to.equal(1);
			//expect(1).to.equal(2);
		});
		
	});
	
});

SpecEnd