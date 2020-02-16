#ifndef __COMMON_H__
#define __COMMON_H__

#ifndef int32
#define int32 int
#endif

enum DIRECTION {E, S, W, N};

enum ERR_COMMAND {OK, ERR_DIRECTION, ERR_X, ERR_Y, ERR_POS};

#endif