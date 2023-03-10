report 50093 "Certificate Of Analysis"
{
    // version RSPL/QC/V3/001

    DefaultLayout = RDLC;
    RDLCLayout = 'src/Certificate Of Analysis.rdl';

    dataset
    {
        dataitem("Inspection Data Sheet"; "Inspection Data Sheet")
        {
            column(No_InspectionDataSheet; "No.")
            {
            }
            column(DocumentType_InspectionDataSheet; "Document Type")
            {
            }
            column(DocumentNo_InspectionDataSheet; "Document No.")
            {
            }
            column(PostingDate_InspectionDataSheet; "Posting Date")
            {
            }
            column(Quantity_InspectionDataSheet; Quantity)
            {
            }
            column(RefID_InspectionDataSheet; "Ref ID")
            {
            }
            column(DocumentDate_InspectionDataSheet; "Document Date")
            {
            }
            column(ProdOrderDate_InspectionDataSheet; "Prod. Order Date")
            {
            }
            column(LotNo_InspectionDataSheet; "Lot No.")
            {
            }
            column(PurchOrderQuantity_InspectionDataSheet; "Purch. Order Quantity")
            {
            }
            column(VendorNo_InspectionDataSheet; "Vendor No.")
            {
            }
            column(VendorName_InspectionDataSheet; "Vendor Name")
            {
            }
            column(ItemNo_InspectionDataSheet; "Item No.")
            {
            }
            column(ItemDescription_InspectionDataSheet; "Item Description")
            {
            }
            column(ItemDescription2_InspectionDataSheet; "Item Description 2")
            {
            }
            column(UnitofMessure_InspectionDataSheet; "Unit of Messure")
            {
            }
            column(ItemTracking_InspectionDataSheet; "Item Tracking")
            {
            }
            column(Remarks_InspectionDataSheet; Remarks)
            {
            }
            column(CertificateNo_InspectionDataSheet; "Certificate No.")
            {
            }
            column(GRNNo_InspectionDataSheet; "GRN No.")
            {
            }
            column(GRNDate_InspectionDataSheet; "GRN Date")
            {
            }
            column(GRNQuantity_InspectionDataSheet; "GRN Quantity")
            {
            }
            column(ProdOrderQuantity_InspectionDataSheet; "Prod. Order Quantity")
            {
            }
            column(BeforeGRN_InspectionDataSheet; "Before GRN")
            {
            }
            column(Approval_InspectionDataSheet; Approval)
            {
            }
            column(Status_InspectionDataSheet; Status)
            {
            }
            column(ApprovedQuantity_InspectionDataSheet; "Approved Quantity")
            {
            }
            column(RejectedQuantity_InspectionDataSheet; "Rejected Quantity")
            {
            }
            column(SampleDrawnQuantity_InspectionDataSheet; "Sample Drawn Quantity")
            {
            }
            column(MfgDate_InspectionDataSheet; "Mfg. Date")
            {
            }
            column(Analyzedon_InspectionDataSheet; "Analyzed on")
            {
            }
            column(Reteston_InspectionDataSheet; "Retest on")
            {
            }
            column(SampleDrawnOn_InspectionDataSheet; "Sample Drawn On")
            {
            }
            column(InspectedBy_InspectionDataSheet; "Inspected By")
            {
            }
            column(ApprovedBy_InspectionDataSheet; "Approved By")
            {
            }
            column(ReplannedProdOrder_InspectionDataSheet; "Replanned Prod. Order")
            {
            }
            column(ReplannedItemNo_InspectionDataSheet; "Replanned Item No.")
            {
            }
            column(Item_Description; RecItem.Description)
            {
            }
            column(Item_Synonym; RecItem.Synonym)
            {
            }
            column(Item_CAS_No; RecItem."CAS No.")
            {
            }
            column(Item_MolFormula; RecItem."Mol. Formula")
            {
            }
            column(Item_MolWeight; RecItem."Mol. Weight")
            {
            }
            column(ApprovedBy; "Approved By")
            {
            }
            column(DateOf_Release; "Posting Date")
            {
            }
            dataitem("Inspection Sheet Line"; "Inspection Sheet Line")
            {
                DataItemLink = "No." = FIELD("No."),
                               "Document Type" = FIELD("Document Type"),
                               "Document No." = FIELD("Document No.");
                DataItemTableView = SORTING("No.", "Line No.");
                column(UnitofMeasure_InspectionSheetLine; "Unit of Measure")
                {
                }
                column(TextValue_InspectionSheetLine; "Text Value")
                {
                }
                column(MinValue_InspectionSheetLine; "Min. Value")
                {
                }
                column(MaxValue_InspectionSheetLine; "Max. Value")
                {
                }
                column(ActualValue_InspectionSheetLine; "Actual Value")
                {
                }
                column(QcDescription_InspectionSheetLine; "Qc Description")
                {
                }
                column(Remark_InspectionSheetLine; Remark)
                {
                }
            }

            trigger OnAfterGetRecord();
            begin
                IF RecItem.GET("Item No.") THEN;
            end;
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }

    var
        RecItem: Record 27;
}

