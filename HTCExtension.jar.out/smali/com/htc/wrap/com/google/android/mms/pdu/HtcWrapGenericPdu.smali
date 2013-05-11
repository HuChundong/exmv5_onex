.class public Lcom/htc/wrap/com/google/android/mms/pdu/HtcWrapGenericPdu;
.super Lcom/google/android/mms/pdu/GenericPdu;
.source "HtcWrapGenericPdu.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/android/mms/pdu/GenericPdu;-><init>()V

    .line 10
    return-void
.end method

.method public static getPhoneType(Lcom/google/android/mms/pdu/GenericPdu;)I
    .locals 1
    .parameter "pdu"

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/GenericPdu;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public static setPhoneType(Lcom/google/android/mms/pdu/GenericPdu;I)V
    .locals 0
    .parameter "pdu"
    .parameter "phoneType"

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/GenericPdu;->setPhoneType(I)V

    .line 14
    return-void
.end method
