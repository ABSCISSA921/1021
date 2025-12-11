#include "sentry_chassis_controller/sentry_chassis_controller.h"
#include <algorithm>
#include <pluginlib/class_list_macros.h>


namespace sentry_chassis_controller {


    void SentryChassisController::CalculateKinematicsParams(){
    radius_ = std::sqrt(std::pow(wheel_track_/2.0,2)+std::pow(wheel_base/2.0,2))//半径

}


}