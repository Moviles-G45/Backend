import os
import smtplib
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart
from email.mime.application import MIMEApplication

from ..core.settings import env

def send_email(
    to_email: str,
    subject: str,
    body: str,
    attachment_path: str = None
):
    """
    Envía un correo a 'to_email' con asunto 'subject' y contenido 'body'.
    Si se proporciona 'attachment_path', se adjunta el archivo al correo.
    """
    try:

        msg = MIMEMultipart()
        msg["Subject"] = subject
        msg["From"] = env.SMTP_EMAIL
        msg["To"] = to_email

        msg.attach(MIMEText(body, "plain"))

        if attachment_path:
            with open(attachment_path, "rb") as f:
                part = MIMEApplication(f.read(), Name=os.path.basename(attachment_path))
            part["Content-Disposition"] = f'attachment; filename="{os.path.basename(attachment_path)}"'
            msg.attach(part)

        with smtplib.SMTP(env.SMTP_SERVER, env.SMTP_PORT) as server:
            server.starttls()
            print(f"SMTP_EMAIL={env.SMTP_EMAIL}, SMTP_PASSWORD startswith? {env.SMTP_PASSWORD[:4]}…")
            server.login(env.SMTP_EMAIL, env.SMTP_PASSWORD)
            server.sendmail(env.SMTP_EMAIL, to_email, msg.as_string())

        print(f"Correo enviado a {to_email} (adjunto: {attachment_path if attachment_path else 'No'})")
    except Exception as e:
        print(f"Error al enviar el correo: {e}")
