.class final Lcom/htc/bluetooth/accessory/HtcAccessoryData$1;
.super Ljava/lang/Object;
.source "HtcAccessoryData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/bluetooth/accessory/HtcAccessoryData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/htc/bluetooth/accessory/HtcAccessoryData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/bluetooth/accessory/HtcAccessoryData;
    .locals 1
    .parameter "in"

    .prologue
    .line 57
    new-instance v0, Lcom/htc/bluetooth/accessory/HtcAccessoryData;

    invoke-direct {v0, p1}, Lcom/htc/bluetooth/accessory/HtcAccessoryData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/htc/bluetooth/accessory/HtcAccessoryData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/bluetooth/accessory/HtcAccessoryData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/bluetooth/accessory/HtcAccessoryData;
    .locals 1
    .parameter "size"

    .prologue
    .line 60
    new-array v0, p1, [Lcom/htc/bluetooth/accessory/HtcAccessoryData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/htc/bluetooth/accessory/HtcAccessoryData$1;->newArray(I)[Lcom/htc/bluetooth/accessory/HtcAccessoryData;

    move-result-object v0

    return-object v0
.end method
