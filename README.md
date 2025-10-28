# String Calculator TDD Kata

A simple implementation of the String Calculator Kata in Ruby using TDD with RSpec.

---

## Requirements

- Ruby >= 2.7
- Bundler (`gem install bundler`)
- RSpec (`gem install rspec`)

---

## Setup

**Clone the repository:**
```bash
git clone https://github.com/Saikanhaiya21/string_calculator_tdd_kata.git
cd string_calculator_tdd_kata
```
**Install dependencies:**
```bash
bundle install
```

**Run Test Cases:**
```bash
bundle exec rspec 
#or 
rspec spec/string_calculator_spec.rb
```
---
## Features

- Returns `0` for an empty string.
- Returns the number itself if the string contains a single number.
- Returns the sum of numbers separated by commas or newlines.
- Supports delimiters in the format `//[delimiter]\n[numbers]`.
- Raises an exception for negative numbers and lists all negative numbers in the message.
---
