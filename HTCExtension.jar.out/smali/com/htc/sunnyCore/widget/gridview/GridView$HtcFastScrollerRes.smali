.class public Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;
.super Ljava/lang/Object;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/widget/gridview/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HtcFastScrollerRes"
.end annotation


# instance fields
.field mResOverlay:I

.field mResThumbHor:I

.field mResThumbVer:I

.field mResTrack:I

.field final synthetic this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/widget/gridview/GridView;I)V
    .locals 6
    .parameter
    .parameter "resThumbVertical"

    .prologue
    const v2, 0x208003f

    .line 4329
    const v4, 0x208003e

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;IIII)V

    .line 4333
    return-void
.end method

.method public constructor <init>(Lcom/htc/sunnyCore/widget/gridview/GridView;IIII)V
    .locals 2
    .parameter
    .parameter "resThumbHorizontal"
    .parameter "resThumbVertical"
    .parameter "resOverlay"
    .parameter "resTrack"

    .prologue
    const v1, 0x208003f

    .line 4335
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4323
    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;->mResThumbHor:I

    .line 4324
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;->mResThumbVer:I

    .line 4325
    const v0, 0x208003e

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;->mResOverlay:I

    .line 4326
    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;->mResTrack:I

    .line 4336
    if-eqz p2, :cond_0

    .line 4337
    iput p2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;->mResThumbHor:I

    .line 4339
    :cond_0
    if-eqz p3, :cond_1

    .line 4340
    iput p3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;->mResThumbVer:I

    .line 4342
    :cond_1
    if-eqz p4, :cond_2

    .line 4343
    iput p4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;->mResOverlay:I

    .line 4345
    :cond_2
    if-eqz p5, :cond_3

    .line 4346
    iput p5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;->mResTrack:I

    .line 4347
    :cond_3
    return-void
.end method

.method private isEnableHtcFastScroller()Z
    .locals 2

    .prologue
    .line 4350
    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;->mResThumbHor:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;->mResThumbVer:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;->mResOverlay:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$HtcFastScrollerRes;->mResTrack:I

    if-eqz v0, :cond_0

    .line 4351
    const/4 v0, 0x1

    .line 4354
    :goto_0
    return v0

    .line 4353
    :cond_0
    const-string v0, "GridView"

    const-string v1, "[Gridview][isEnableHtcFastScroller] Can\'t enable HtcFastScroller due to resources are not ready."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4354
    const/4 v0, 0x0

    goto :goto_0
.end method
