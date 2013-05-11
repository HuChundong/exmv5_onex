.class public Lcom/htc/htcdlnainterface/DLNARendererData;
.super Ljava/lang/Object;
.source "DLNARendererData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/htcdlnainterface/DLNARendererData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bSupportDTCPIP:Z

.field private filterDTCPType:I

.field private filterType:I

.field private ipAddress:J

.field private rendererId:Ljava/lang/String;

.field private rendererName:Ljava/lang/String;

.field private thumbIconType:I

.field private thumbnailPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 245
    new-instance v0, Lcom/htc/htcdlnainterface/DLNARendererData$1;

    invoke-direct {v0}, Lcom/htc/htcdlnainterface/DLNARendererData$1;-><init>()V

    sput-object v0, Lcom/htc/htcdlnainterface/DLNARendererData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 258
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->rendererId:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->thumbnailPath:Ljava/lang/String;

    .line 33
    iput v0, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->thumbIconType:I

    .line 37
    iput-boolean v0, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->bSupportDTCPIP:Z

    .line 42
    iput v0, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->filterType:I

    .line 47
    iput v0, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->filterDTCPType:I

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->ipAddress:J

    .line 259
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 266
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->rendererId:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->thumbnailPath:Ljava/lang/String;

    .line 33
    iput v0, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->thumbIconType:I

    .line 37
    iput-boolean v0, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->bSupportDTCPIP:Z

    .line 42
    iput v0, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->filterType:I

    .line 47
    iput v0, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->filterDTCPType:I

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->ipAddress:J

    .line 267
    invoke-virtual {p0, p1}, Lcom/htc/htcdlnainterface/DLNARendererData;->readFromParcel(Landroid/os/Parcel;)V

    .line 268
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public getFilterDTCPType()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->filterDTCPType:I

    return v0
.end method

.method public getFilterType()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->filterType:I

    return v0
.end method

.method public getIpAddress()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->ipAddress:J

    return-wide v0
.end method

.method public getRendererId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->rendererId:Ljava/lang/String;

    return-object v0
.end method

.method public getRendererName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbIconType()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->thumbIconType:I

    return v0
.end method

.method public isbSupportDTCPIP()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->bSupportDTCPIP:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    .line 227
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->rendererId:Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->thumbnailPath:Ljava/lang/String;

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->thumbIconType:I

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->bSupportDTCPIP:Z

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->filterType:I

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->filterDTCPType:I

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->ipAddress:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_1
    return-void

    .line 231
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public setFilterDTCPType(I)V
    .locals 0
    .parameter "filterDTCPType"

    .prologue
    .line 69
    iput p1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->filterDTCPType:I

    .line 70
    return-void
.end method

.method public setFilterType(I)V
    .locals 0
    .parameter "filterType"

    .prologue
    .line 87
    iput p1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->filterType:I

    .line 88
    return-void
.end method

.method public setIpAddress(J)V
    .locals 0
    .parameter "ipAddress"

    .prologue
    .line 127
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->ipAddress:J

    .line 128
    return-void
.end method

.method public setRendererId(Ljava/lang/String;)V
    .locals 0
    .parameter "rendererId"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->rendererId:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setRendererName(Ljava/lang/String;)V
    .locals 0
    .parameter "rendererName"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setThumbIconType(I)V
    .locals 0
    .parameter "thumbIconType"

    .prologue
    .line 145
    iput p1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->thumbIconType:I

    .line 146
    return-void
.end method

.method public setbSupportDTCPIP(Z)V
    .locals 0
    .parameter "bSupportDTCPIP"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->bSupportDTCPIP:Z

    .line 108
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->rendererId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    iget v1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->thumbIconType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget-boolean v1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->bSupportDTCPIP:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 211
    iget v1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->filterType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget v1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->filterDTCPType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget-wide v1, p0, Lcom/htc/htcdlnainterface/DLNARendererData;->ipAddress:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_1
    return-void

    .line 210
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method
