# Generated via
#  `rails generate curation_concerns:work GenericWork`
module CurationConcerns
  class GenericWorkForm < Sufia::Forms::WorkForm
    self.model_class = ::GenericWork
    self.terms += [:resource_type]

    self.terms += [:collectionCode]
    self.terms += [:catalogNumber]
    self.terms += [:otherCatalogNumbers]
    self.terms += [:continent]
    self.terms += [:country]
    self.terms += [:stateProvince]
    self.terms += [:county]
    self.terms += [:higherGeography]
    self.terms += [:locality]
    self.terms += [:decimalLatitude]
    self.terms += [:decimalLongitude]
    self.terms += [:scientificName]
    self.terms += [:scientificNameAuthorship]
    self.terms += [:kingdom]
    self.terms += [:phylum]
    self.terms += [:dwcclass]
    self.terms += [:order]
    self.terms += [:family]
    self.terms += [:genus]
    self.terms += [:specificEpithet]
    self.terms += [:infraspecificEpithet]
    self.terms += [:typeStatus]
    self.terms += [:basisOfRecord]

    self.required_fields = [:title, :creator, :rights]

  end
end
