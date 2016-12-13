#include "TestHarness_c.h"
#include "CommandLineTestRunner.h"

#include "cbuffer.h"
#include "stdio.h"
#include "string.h"

#define SIZE 12
uint8_t cbuf_data[SIZE] = {0};

CBuffer_t cbuf = {
  .size = SIZE,
  .head = 1,
  .tail = 0,
  .data = cbuf_data
};

const uint8_t pattern[5] = {50, 51, 52, 53, 54};

TEST_GROUP(FirstTestGroup)
{
    void setup()
    {
        memset(cbuf_data, 0.55, SIZE);
        cbuf.size = SIZE;
        cbuf.head = 1;
        cbuf.tail = 0;
    }
};

TEST(FirstTestGroup, MultiplePushPops)
{
    uint8_t read[5];
    CBufferError_t result;
    result = CBufferPushMultiple(&cbuf, 5, pattern);
    CHECK_EQUAL(NO_ERROR, result);
    result = CBufferPushMultiple(&cbuf, 5, pattern);
    CHECK_EQUAL(NO_ERROR, result);
    result = CBufferPushMultiple(&cbuf, 5, pattern);
    CHECK_EQUAL(NOT_ENOUGH_SPACE, result);

    result = CBufferPopMultiple(&cbuf, 5, read);
    CHECK_EQUAL(NO_ERROR, result);
    CHECK(memcmp(pattern, read, 5) == 0);
    result = CBufferPopMultiple(&cbuf, 5, read);
    CHECK_EQUAL(NO_ERROR, result);
    CHECK_EQUAL(0, memcmp(pattern, read, 5));

    result = CBufferPopMultiple(&cbuf, 1, read);
    CHECK_EQUAL(NOT_ENOUGH_DATA, result);
}

TEST(FirstTestGroup, InterleavedPushPops)
{
    uint8_t read[5];

    CBufferError_t result;
    result = CBufferPushMultiple(&cbuf, 2, pattern);
    CHECK_EQUAL(NO_ERROR, result);

    result = CBufferPopMultiple(&cbuf, 1, read);
    CHECK_EQUAL(NO_ERROR, result);

    result = CBufferPushMultiple(&cbuf, 3, pattern + 2);
    CHECK_EQUAL(NO_ERROR, result);

    result = CBufferPopMultiple(&cbuf, 4, read + 1);
    CHECK_EQUAL(NO_ERROR, result);
    
    CHECK_EQUAL(0, memcmp(pattern, read, 5));
}

TEST(FirstTestGroup, WrappingAround)
{
    uint8_t read[100*5] = {0x55};
    CBufferError_t result;

    for (int i = 0; i < 100; i++) {
        result = CBufferPushMultiple(&cbuf, 5, pattern);
        CHECK_EQUAL(NO_ERROR, result);

        result = CBufferPopMultiple(&cbuf, 5, read + i * 5);
        CHECK_EQUAL(NO_ERROR, result);
    }
    for (int i = 0; i < 100*5; i++) {
        CHECK_EQUAL(pattern[i%5], read[i]);
    }
}

TEST(FirstTestGroup, FreeTaken)
{
    uint8_t read[5]
    ;
    CBufferError_t result;
    CHECK_EQUAL(0, CBufferTaken(&cbuf));
    CHECK_EQUAL(SIZE, CBufferFree(&cbuf));

    result = CBufferPushMultiple(&cbuf, 5, pattern);
    CHECK_EQUAL(NO_ERROR, result);

    CHECK_EQUAL(5, CBufferTaken(&cbuf));
    CHECK_EQUAL(SIZE - 5, CBufferFree(&cbuf));

    result = CBufferPopMultiple(&cbuf, 3, read);
    CHECK_EQUAL(NO_ERROR, result);
    
    CHECK_EQUAL(2, CBufferTaken(&cbuf));
    CHECK_EQUAL(SIZE - 2, CBufferFree(&cbuf));
}

int main(int ac, char** av)
{
  return RUN_ALL_TESTS(ac, av);
}