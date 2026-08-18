#!/usr/bin/env python3
"""Estimate rectangular duct dimensions from airflow and velocity."""
import argparse


def main() -> None:
    parser = argparse.ArgumentParser(description="Estimate duct size")
    parser.add_argument("--cfm", type=float, required=True, help="Airflow in CFM")
    parser.add_argument("--velocity", type=float, default=900,
                        help="Design velocity in fpm (default: 900)")
    args = parser.parse_args()

    area_sqft = args.cfm / args.velocity
    # Assume height of 12 inches, compute width
    height_in = 12.0
    width_in = area_sqft * 144.0 / height_in
    print(f"Airflow: {args.cfm:.0f} CFM @ {args.velocity:.0f} fpm")
    print(f"Required area: {area_sqft:.2f} sq ft")
    print(f"Recommended duct: {width_in:.0f} x {height_in:.0f} in")


if __name__ == "__main__":
    main()