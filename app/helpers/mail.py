import smtplib
from email.mime.text import MIMEText
from ..core.settings import env

def send_email(to_email: str, reset_link: str):
    """Envía un correo con el enlace de restablecimiento de contraseña."""
    try:
        subject = "Restablecimiento de contraseña"
        body = f"Hola,\n\nHaz clic en el siguiente enlace para restablecer tu contraseña:\n\n{reset_link}\n\nSi no solicitaste este cambio, ignora este mensaje."

        msg = MIMEText(body)
        msg["Subject"] = subject
        msg["From"] = env.SMTP_EMAIL
        msg["To"] = to_email

        with smtplib.SMTP(env.SMTP_SERVER, env.SMTP_PORT) as server:
            server.starttls()
            server.login(env.SMTP_EMAIL, env.SMTP_PASSWORD)
            server.sendmail(env.SMTP_EMAIL, to_email, msg.as_string())

        print(f"Correo enviado a {to_email}")
    except Exception as e:
        print(f"Error al enviar el correo: {e}")