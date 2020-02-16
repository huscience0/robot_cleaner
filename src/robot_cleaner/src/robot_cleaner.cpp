#include "robot_cleaner.h"

void RobotCleaner::Init()
{
    pos.x = 0;
    pos.y = 0;
    pos.d = N;
}

void RobotCleaner::Init(const RobotPosition &p)
{
    pos.x = p.x;
    pos.y = p.y;
    pos.d = p.d;
}

void RobotCleaner::TurnLeft()
{
    DIRECTION d = DIRECTION((GetDirection() + 3) % 4);
    SetDirection(d);
}

void RobotCleaner::TurnRight()
{
    DIRECTION d = DIRECTION((GetDirection() + 3) % 4);
    SetDirection(d);
}

void RobotCleaner::TurnRound()
{
    DIRECTION d = DIRECTION((GetDirection() + 2) % 4);
    SetDirection(d);
}

void RobotCleaner::Forward(int32 inc) 
{
    if (inc < 1 || inc > 10) return;
    pos.y += inc;
}

void RobotCleaner::Backward(int32 dec) 
{
    if (dec < 1 || dec > 10) return;
    pos.y -= dec;
}

void RobotCleaner::SetDirection(const DIRECTION &d) 
{
    pos.d = d;
}
