---
layout: page
title: Account & Data Deletion
include_in_header: false
permalink: /delete-account/
---

# Delete Your PulseFlix Account and Data

Last updated: July 23, 2026

This page explains how to permanently delete your PulseFlix account and the data associated with it. You can use this process whether or not you still have the PulseFlix app installed. If you tapped "Delete account" inside the app, you were brought here, and if you have already uninstalled the app, this page works the same way.

## How to Request Deletion

Send an email to <hoteptechnology@gmail.com> **from the email address associated with your PulseFlix account**, with the subject line "Account deletion request".

<a id="deletion-request-link" href="mailto:hoteptechnology@gmail.com?subject=Account%20deletion%20request">Email us to delete your account</a>

The email itself is the entire request; you do not need to include anything else in the message.

### What Happens Next

We'll verify the request is from the account owner and process deletion, of the account and all associated data, within 30 days. You don't need to do anything else after sending the email.

## What Gets Deleted

When your deletion request is processed, we permanently delete:

- __Your account__: your sign-in identity held in Firebase Authentication, including your email address, display name, and profile photo.
- __All stored user data__, including:
  - Saved movies / My List
  - Trailer playback settings
  - In-app feedback submissions
  - App-rating prompt state

## What May Be Retained

- __Anonymized analytics and diagnostics__: anonymized or aggregated analytics events (Firebase Analytics, Mixpanel) that are no longer linked to your account may persist under those providers' own retention policies. Crash diagnostics (Sentry) may likewise be retained in anonymized form.
- __Legal obligations__: we may retain certain data where we are required to do so by applicable law.

Retained data of this kind cannot be used to identify you or linked back to your deleted account.

## Deletion Is Permanent

Deletion cannot be undone. Once your account and data are deleted, they cannot be recovered, and any saved movies, settings, or other content will be lost. If you want to use PulseFlix again, you will need to create a new account.

## Contact Us

If you have any questions about account or data deletion, you can contact us:

- By email: <hoteptechnology@gmail.com>

- By visiting this page on our website: [https://phi-hotep.github.io/pulseflix-landing-page/delete-account](https://phi-hotep.github.io/pulseflix-landing-page/delete-account/)

<script>
    (function () {
        var link = document.getElementById('deletion-request-link');
        if (!link) return;

        // The app appends the signed-in user's email (and optionally lang) as
        // query parameters, e.g. /delete-account/?email=ada%40example.com&lang=fr
        var params = new URLSearchParams(window.location.search);
        var accountEmail = (params.get('email') || '').trim();

        // Derive locale the same way the site declares it (<html lang>), with an
        // optional ?lang= override so the app can request French explicitly.
        var locale = params.get('lang') || document.documentElement.lang || 'en';
        var isFrench = /^fr/i.test(locale);

        var subject, body;
        if (isFrench) {
            subject = 'Demande de suppression de compte PulseFlix';
            body = [
                'Bonjour l\'équipe PulseFlix,',
                '',
                'Je souhaite demander la suppression définitive de mon compte PulseFlix ainsi que de toutes les données personnelles associées.',
                '',
                'E-mail du compte : ' + (accountEmail || '[indiquez l\'adresse e-mail utilisée pour vous connecter]'),
                'Méthode de connexion : [Google / E-mail et mot de passe]',
                '',
                'Je comprends que cette demande sera traitée sous 30 jours, après quoi mon compte et toutes les données associées (films enregistrés, préférences, retours) seront définitivement supprimés.',
                '',
                'Merci.'
            ].join('\n');
        } else {
            subject = 'PulseFlix Account Deletion Request';
            body = [
                'Hello PulseFlix team,',
                '',
                'I would like to request the permanent deletion of my PulseFlix account and all associated personal data.',
                '',
                'Account email: ' + (accountEmail || '[enter the email address you used to sign in]'),
                'Sign-in method: [Google / Email & Password]',
                '',
                'I understand this request will be processed within 30 days, after which my account and all associated data (saved movies, preferences, and feedback) will be permanently deleted.',
                '',
                'Thank you.'
            ].join('\n');
        }

        link.href = 'mailto:hoteptechnology@gmail.com'
            + '?subject=' + encodeURIComponent(subject)
            + '&body=' + encodeURIComponent(body);
    })();
</script>
