SELECT clients.clnt_id, clients.name FROM clients INNER JOIN
    (SELECT * FROM branches WHERE name = '��������') bshk
ON bshk.brnc_id = clients.brnc_brnc_id
WHERE clients.name = '�������';