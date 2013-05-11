.class public Lcom/htc/android/pim/eas/EASGalSearchResult;
.super Ljava/lang/Object;
.source "EASGalSearchResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/android/pim/eas/EASGalSearchResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_FAIL:I = -0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_SERVER_ERROR:I = -0x2


# instance fields
.field protected elements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/pim/eas/EASGalElement;",
            ">;"
        }
    .end annotation
.end field

.field protected nSearchReturnCode:I

.field protected nStatus:I

.field protected nStoreReturnCode:I

.field protected nTotal:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/htc/android/pim/eas/EASGalSearchResult$1;

    invoke-direct {v0}, Lcom/htc/android/pim/eas/EASGalSearchResult$1;-><init>()V

    sput-object v0, Lcom/htc/android/pim/eas/EASGalSearchResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->nTotal:I

    .line 29
    iput v1, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->nStatus:I

    .line 30
    iput v1, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->nStoreReturnCode:I

    .line 31
    iput v1, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->nSearchReturnCode:I

    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    .line 157
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->nTotal:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->nSearchReturnCode:I

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->nStoreReturnCode:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->nStatus:I

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 164
    .local v0, elementCount:I
    if-lez v0, :cond_0

    .line 165
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    .line 166
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 167
    iget-object v3, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/htc/android/pim/eas/EASGalElement;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/android/pim/eas/EASGalSearchResult$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/htc/android/pim/eas/EASGalSearchResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public getElements()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/pim/eas/EASGalElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSearchReturnCode()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->nSearchReturnCode:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->nStatus:I

    return v0
.end method

.method public getStoreReturnCode()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->nStoreReturnCode:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->nTotal:I

    return v0
.end method

.method public setElements(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/pim/eas/EASGalElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, elementList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/pim/eas/EASGalElement;>;"
    iput-object p1, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    .line 104
    return-void
.end method

.method public setSearchReturnCode(I)V
    .locals 0
    .parameter "returnCode"

    .prologue
    .line 55
    iput p1, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->nSearchReturnCode:I

    .line 56
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 87
    iput p1, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->nStatus:I

    .line 88
    return-void
.end method

.method public setStoreReturnCode(I)V
    .locals 0
    .parameter "storeReturnCode"

    .prologue
    .line 71
    iput p1, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->nStoreReturnCode:I

    .line 72
    return-void
.end method

.method public setTotal(I)V
    .locals 0
    .parameter "total"

    .prologue
    .line 39
    iput p1, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->nTotal:I

    .line 40
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 119
    iget v2, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->nTotal:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget v2, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->nSearchReturnCode:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget v2, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->nStoreReturnCode:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget v2, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->nStatus:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object v2, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 125
    .local v0, elementCount:I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 127
    iget-object v2, p0, Lcom/htc/android/pim/eas/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v0           #elementCount:I
    .end local v1           #i:I
    :cond_0
    return-void
.end method
