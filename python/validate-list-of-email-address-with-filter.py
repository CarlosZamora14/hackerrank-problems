from typing import List
import re


def fun(s: str) -> bool:
    email_pattern = r'^[-_a-z0-9]+@[a-z0-9]+\.[a-z]{1,3}$'
    return bool(re.match(email_pattern, s))


def filter_mail(emails: List[str]) -> List[str]:
    return list(filter(fun, emails))


if __name__ == '__main__':
    n = int(input())
    emails = []
    for _ in range(n):
        emails.append(input())

    filtered_emails = sorted(filter_mail(emails))
    print(filtered_emails)
