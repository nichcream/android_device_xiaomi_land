#include <time.h>

void absolute_timespec_from_timespec(timespec& abs_ts, const timespec& ts,
                                                     clockid_t clock);

bool timespec_from_absolute_timespec(timespec& ts, const timespec& abs_ts, clockid_t clock);
