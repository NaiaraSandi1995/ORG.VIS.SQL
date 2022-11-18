ALTER TABLE dbo.FORMAS_PAGAMENTO 
  ADD CONSTRAINT fk_OrdemServicoPag FOREIGN KEY(id_os)
      REFERENCES dbo.Ordem_servico(id_os); 

ALTER TABLE dbo.ORDEM_SERVICO
  ADD CONSTRAINT fk_Mecanicos FOREIGN KEY(id_mecanico)
      REFERENCES dbo.Mecanicos(id_mecanico); 

ALTER TABLE dbo.ORDEM_SERVICO
  ADD CONSTRAINT fk_Localidade FOREIGN KEY(id_cidade)
      REFERENCES dbo.Localidades(id_cidade);

ALTER TABLE dbo.ORDEM_SERVICO
  DROP CONSTRAINT fk_Localidade;
