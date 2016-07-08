# frozen_string_literal: true
class SolrDocument
  include Blacklight::Solr::Document
  include Blacklight::Gallery::OpenseadragonSolrDocument

  # Adds CurationConcerns behaviors to the SolrDocument.
  include CurationConcerns::SolrDocumentBehavior
  # Adds Sufia behaviors to the SolrDocument.
  include Sufia::SolrDocumentBehavior

  def collection_code
    self[Solrizer.solr_name('collectionCode')]
  end
  def catalog_number
    self[Solrizer.solr_name('catalogNumber')]
  end
  def other_catalog_numbers
    self[Solrizer.solr_name('otherCatalogNumbers')]
  end
  def continent
    self[Solrizer.solr_name('continent')]
  end
  def country
    self[Solrizer.solr_name('country')]
  end
  def state_province
    self[Solrizer.solr_name('stateProvince')]
  end
  def county
    self[Solrizer.solr_name('county')]
  end
  def higher_geography
    self[Solrizer.solr_name('higherGeography')]
  end
  def locality
    self[Solrizer.solr_name('locality')]
  end
  def decimal_latitude
    self[Solrizer.solr_name('decimalLatitude')]
  end
  def decimal_longitude
    self[Solrizer.solr_name('decimalLongitude')]
  end
  def scientific_name
    self[Solrizer.solr_name('scientificName')]
  end
  def scientific_name_authorship
    self[Solrizer.solr_name('scientificNameAuthorship')]
  end
  def kingdom
    self[Solrizer.solr_name('kingdom')]
  end
  def phylum
    self[Solrizer.solr_name('phylum')]
  end
  def dwcclass
    self[Solrizer.solr_name('dwcclass')]
  end
  def order
    self[Solrizer.solr_name('order')]
  end
  def family
    self[Solrizer.solr_name('family')]
  end
  def genus
    self[Solrizer.solr_name('genus')]
  end
  def specific_epithet
    self[Solrizer.solr_name('specificEpithet')]
  end
  def infraspecific_epithet
    self[Solrizer.solr_name('infraspecificEpithet')]
  end
  def type_status
    self[Solrizer.solr_name('typeStatus')]
  end
  def basis_of_record
    self[Solrizer.solr_name('basisOfRecord')]
  end

  # self.unique_key = 'id'

  # Email uses the semantic field mappings below to generate the body of an email.
  SolrDocument.use_extension(Blacklight::Document::Email)

  # SMS uses the semantic field mappings below to generate the body of an SMS email.
  SolrDocument.use_extension(Blacklight::Document::Sms)

  # DublinCore uses the semantic field mappings below to assemble an OAI-compliant Dublin Core document
  # Semantic mappings of solr stored fields. Fields may be multi or
  # single valued. See Blacklight::Document::SemanticFields#field_semantics
  # and Blacklight::Document::SemanticFields#to_semantic_values
  # Recommendation: Use field names from Dublin Core
  use_extension(Blacklight::Document::DublinCore)

  # Do content negotiation for AF models. 

  use_extension( Hydra::ContentNegotiation )
end
