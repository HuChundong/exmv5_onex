.class Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;
.super Ljava/lang/Object;
.source "DetailsViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/DetailsViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetailsInfo"
.end annotation


# instance fields
.field public mImageFileName:Ljava/lang/String;

.field public mImageSubFileName:Ljava/lang/String;

.field public mInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/helper/DetailsViewHelper$ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mLatitude:F

.field public mLongitude:F

.field final synthetic this$0:Lcom/htc/album/helper/DetailsViewHelper;


# direct methods
.method private constructor <init>(Lcom/htc/album/helper/DetailsViewHelper;)V
    .locals 2
    .parameter

    .prologue
    const/high16 v1, 0x437f

    .line 2114
    iput-object p1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->this$0:Lcom/htc/album/helper/DetailsViewHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->mInfo:Ljava/util/ArrayList;

    .line 2117
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->mImageFileName:Ljava/lang/String;

    .line 2118
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->mImageSubFileName:Ljava/lang/String;

    .line 2119
    iput v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->mLatitude:F

    .line 2120
    iput v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->mLongitude:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/helper/DetailsViewHelper;Lcom/htc/album/helper/DetailsViewHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2114
    invoke-direct {p0, p1}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;-><init>(Lcom/htc/album/helper/DetailsViewHelper;)V

    return-void
.end method


# virtual methods
.method public AddInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "content"

    .prologue
    .line 2128
    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->mInfo:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/album/helper/DetailsViewHelper$ImageInfo;

    iget-object v2, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->this$0:Lcom/htc/album/helper/DetailsViewHelper;

    invoke-direct {v1, v2, p1, p2}, Lcom/htc/album/helper/DetailsViewHelper$ImageInfo;-><init>(Lcom/htc/album/helper/DetailsViewHelper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2129
    return-void
.end method

.method public getInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/helper/DetailsViewHelper$ImageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2124
    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->mInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLatitude()F
    .locals 1

    .prologue
    .line 2151
    iget v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->mLatitude:F

    return v0
.end method

.method public getLongitude()F
    .locals 1

    .prologue
    .line 2155
    iget v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->mLongitude:F

    return v0
.end method

.method public isLatLongLegal()Z
    .locals 2

    .prologue
    const/high16 v1, 0x437f

    .line 2146
    iget v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->mLatitude:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->mLongitude:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setImageFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 2132
    iput-object p1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->mImageFileName:Ljava/lang/String;

    .line 2133
    return-void
.end method

.method public setImageSubFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 2136
    iput-object p1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->mImageSubFileName:Ljava/lang/String;

    .line 2137
    return-void
.end method

.method public setLatLong(FF)V
    .locals 0
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 2140
    iput p1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->mLatitude:F

    .line 2141
    iput p2, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->mLongitude:F

    .line 2142
    return-void
.end method
