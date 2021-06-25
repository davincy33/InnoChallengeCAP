using CatalogService as service from '../../srv/interaction_srv';
annotate service.Interactions_Items with @( // header-level annotations
  // ---------------------------------------------------------------------------
  // List Report
  // ---------------------------------------------------------------------------
  UI : {
      LineItem            : [
          {
              $Type             : 'UI.DataField',
              Value             : INTHeader_ID,
              ![@UI.Importance] : #High
          },
          {
              $Type : 'UI.DataField',
              Value : LANGU
          },
          {
              $Type             : 'UI.DataField',
              Value             : LOGTEXT,
              ![@UI.Importance] : #High
          }
      ],
      SelectionFields     : [
          LANGU,
          LOGTEXT

      ]
  }) {
      INTHeader_ID @title : 'Unique ID';
      LANGU        @title : 'Language';
      LOGTEXT      @title : 'Text Description';
  };