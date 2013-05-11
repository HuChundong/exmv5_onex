.class public Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode$TextureThumbnail4CarMode;
.super Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;
.source "ParamsGridItem4CarMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureThumbnail4CarMode"
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;-><init>(Landroid/content/Context;)V

    .line 26
    const-string v0, "TextureThumbnail4CarMode"

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode$TextureThumbnail4CarMode;->LOG_TAG:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method protected getItemHeight()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;->GRID_DIMENSION:I

    return v0
.end method

.method protected getItemWidth()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;->GRID_DIMENSION:I

    return v0
.end method
