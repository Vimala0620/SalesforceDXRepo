global class EmailtoHandler implements Messaging.InboundEmailHandler {

    global Messaging.InboundEmailResult handleInboundEmail(
        Messaging.InboundEmail email,
        Messaging.InboundEnvelope envelope
    ) {
        Messaging.InboundEmailResult result = new Messaging.InboundEmailResult();

        try {
            Case c = new Case();

            // Subject
            c.Subject = email.subject != null ? email.subject : 'No Subject';

            // Description
            c.Description = email.plainTextBody != null ? email.plainTextBody : '';

            // Customer Email
            c.SuppliedEmail = envelope.fromAddress;

            // Priority logic
            if (email.subject != null && email.subject.containsIgnoreCase('urgent')) {
                c.Priority = 'High';
            } else {
                c.Priority = 'Medium';
            }

            // Status
            c.Status = 'New';
            c.Origin = 'Email';

            insert c;

            result.success = true;

        } catch (Exception e) {
            result.success = false;
        }

        return result;
    }
}