.class public Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;
.super Ljava/lang/Object;
.source "HtcTelephonyInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcTelephonyInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GbaBootStrapParam"
.end annotation


# instance fields
.field public mData:[B

.field public mEfid:I

.field final synthetic this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/HtcTelephonyInternal;I[B)V
    .locals 0
    .parameter
    .parameter "mEfid"
    .parameter "mData"

    .prologue
    .line 2407
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2408
    iput p2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;->mEfid:I

    .line 2409
    iput-object p3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;->mData:[B

    .line 2410
    return-void
.end method
