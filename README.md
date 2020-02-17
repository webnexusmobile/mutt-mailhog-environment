# MailHog and Mutt containers to showcase email testing

## Execution
```shell
docker-compose up
```

## Result
For every _*.html_ file under _./mails_ you will find an email in the MailHog GUI under http://localhost:8025 containing the _*.html_ file's content as email body.

These emails can be used to develop libraries or test scenarios leveraging the MailHog APIs:

https://github.com/mailhog/MailHog/blob/master/docs/APIv1.md

https://github.com/mailhog/MailHog/blob/master/docs/APIv2.md

