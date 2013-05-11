.class final Lcom/htc/album/TabPluginDevice/smart/SmartEventCollection$1;
.super Ljava/lang/Object;
.source "SmartEventCollection.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/smart/SmartEventCollection;
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
        "Lcom/htc/album/TabPluginDevice/smart/SmartEventCollection;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/album/TabPluginDevice/smart/SmartEventCollection;
    .locals 1
    .parameter "in"

    .prologue
    .line 100
    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/SmartEventCollection;

    invoke-direct {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartEventCollection;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartEventCollection$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/album/TabPluginDevice/smart/SmartEventCollection;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/album/TabPluginDevice/smart/SmartEventCollection;
    .locals 1
    .parameter "size"

    .prologue
    .line 105
    new-array v0, p1, [Lcom/htc/album/TabPluginDevice/smart/SmartEventCollection;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartEventCollection$1;->newArray(I)[Lcom/htc/album/TabPluginDevice/smart/SmartEventCollection;

    move-result-object v0

    return-object v0
.end method
