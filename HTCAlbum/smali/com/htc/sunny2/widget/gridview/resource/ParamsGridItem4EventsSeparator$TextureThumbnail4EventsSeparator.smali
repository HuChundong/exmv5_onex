.class public Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator$TextureThumbnail4EventsSeparator;
.super Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;
.source "ParamsGridItem4EventsSeparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureThumbnail4EventsSeparator"
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;-><init>(Landroid/content/Context;)V

    .line 30
    const-string v0, "ParamsGridItem4EventsSeparator"

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator$TextureThumbnail4EventsSeparator;->LOG_TAG:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method protected getItemHeight()I
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;->GRID_DIMENSION_H:I

    return v0
.end method

.method protected getItemWidth()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;->GRID_DIMENSION_W:I

    return v0
.end method
