.class final Lcom/htc/AddressFinderService/interfaces/AddressData$1;
.super Ljava/lang/Object;
.source "AddressData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/AddressFinderService/interfaces/AddressData;
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
        "Lcom/htc/AddressFinderService/interfaces/AddressData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/AddressFinderService/interfaces/AddressData;
    .locals 1
    .parameter "in"

    .prologue
    .line 18
    new-instance v0, Lcom/htc/AddressFinderService/interfaces/AddressData;

    invoke-direct {v0, p1}, Lcom/htc/AddressFinderService/interfaces/AddressData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/htc/AddressFinderService/interfaces/AddressData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/AddressFinderService/interfaces/AddressData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/AddressFinderService/interfaces/AddressData;
    .locals 1
    .parameter "size"

    .prologue
    .line 23
    new-array v0, p1, [Lcom/htc/AddressFinderService/interfaces/AddressData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/htc/AddressFinderService/interfaces/AddressData$1;->newArray(I)[Lcom/htc/AddressFinderService/interfaces/AddressData;

    move-result-object v0

    return-object v0
.end method
