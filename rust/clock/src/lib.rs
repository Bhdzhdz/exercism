use std::fmt::Display;

#[derive(Debug, PartialEq, Eq)]
pub struct Clock {
    total_minutes: i32,
}

const MINUTES_PER_DAY: i32 = 24 * 60;
const MINUTES_PER_HOUR: i32 = 60;

impl Clock {
    pub fn new(hours: i32, minutes: i32) -> Self {
        Self {
            total_minutes: (minutes + hours * MINUTES_PER_HOUR).rem_euclid(MINUTES_PER_DAY),
        }
    }

    pub fn add_minutes(&self, minutes: i32) -> Self {
        Clock::new(0, self.total_minutes + minutes)
    }

    fn hours(&self) -> i32 {
        self.total_minutes / MINUTES_PER_HOUR
    }

    fn minutes(&self) -> i32 {
        self.total_minutes % MINUTES_PER_HOUR
    }
}

impl Display for Clock {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(f, "{:0>2}:{:0>2}", self.hours(), self.minutes())
    }
}
