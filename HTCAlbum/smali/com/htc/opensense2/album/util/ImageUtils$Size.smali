.class public Lcom/htc/opensense2/album/util/ImageUtils$Size;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Size"
.end annotation


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v0, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->width:I

    .line 50
    iput v0, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->height:I

    .line 43
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v0, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->width:I

    .line 50
    iput v0, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->height:I

    .line 46
    iput p1, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->width:I

    .line 47
    iput p2, p0, Lcom/htc/opensense2/album/util/ImageUtils$Size;->height:I

    .line 48
    return-void
.end method
