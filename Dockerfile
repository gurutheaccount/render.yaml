FROM odoo:16.0

USER root
RUN pip3 install --upgrade pip && pip3 install -r /requirements.txt

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
