#ifndef __ROBOTCLEANER_H__
#define __ROBOTCLEANER_H__

#include "common.h"

struct RobotPosition
{
    int32 x;
    int32 y;
    DIRECTION d;
};

class RobotCleaner
{
public:
    const DIRECTION GetDirection() {return pos.d;}
    const RobotPosition &GetCurrentPosition() {return pos;}

private:
    RobotCleaner() = default;
    RobotCleaner(const RobotCleaner &) = delete;  
    RobotCleaner &operator = (const RobotCleaner &) = delete; 
    static RobotCleaner &GetInstance()  
    {  
        static RobotCleaner instance;
        return instance; 
    } 

    void Init();
    void Init(const RobotPosition &p);
    void TurnLeft();
    void TurnRight();
    void TurnRound();
    void Forward(int32 inc);
    void Backward(int32 dec);
    void SetDirection(const DIRECTION &d);

private:
    RobotPosition pos;
};

#endif
