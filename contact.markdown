---
title: Contact
layout: main
---
<form method="POST" action="https://formsubmit.co/{{ site.email }}">
    <!-- Name input -->
    <div data-mdb-input-init class="form-outline mb-4">
        <label class="form-label" for="form-name">Name</label>
        <input type="text" name="name" id="form-name" class="form-control" required/>
    </div>
    <!-- Email input -->
    <div data-mdb-input-init class="form-outline mb-4">
        <label class="form-label" for="form-email">Email</label>
        <input type="email" name="email" id="form-email" class="form-control" required/>
    </div>
    <!-- Phone -->
    <div data-mdb-input-init class="form-outline mb-4">
        <label class="form-label" for="form-phone">Phone</label>
        <input type="tel" maxLength="10" minLength="10" name="phone" id="form-phone" class="form-control" pattern="0[0-9]{9}">
    </div>
    <!-- Message input -->
    <div data-mdb-input-init class="form-outline mb-4">
        <label class="form-label" for="form-message">Message</label>
        <textarea name="message" id="form-message" rows="4" class="form-control" required></textarea>
    </div>
    <!-- Form control -->
    <input type="hidden" name="_subject" value="Website Form">
    <input type="hidden" name="_next" value="{{ site.url }}/contact-success.html">
    <!-- Submit button -->
    <button data-mdb-ripple-init type="submit" class="btn {{ site.data.visual.button }} btn-block mb-4">Send</button>
</form>