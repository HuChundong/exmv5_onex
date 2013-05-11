.class public Lcom/htc/sunnyCore/widget/gridview/GridView$GridFlingingAction;
.super Lcom/htc/sunnyCore/RenderThreadAction;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/widget/gridview/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GridFlingingAction"
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "GridFlingingAction"


# instance fields
.field private mShouldPrintFlingLog:Z

.field final synthetic this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/widget/gridview/GridView;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "host"
    .parameter "szName"

    .prologue
    const/4 v0, 0x1

    .line 4007
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$GridFlingingAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    .line 4008
    invoke-direct {p0, p2, p3}, Lcom/htc/sunnyCore/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4004
    iput-boolean v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$GridFlingingAction;->mShouldPrintFlingLog:Z

    .line 4009
    iput-boolean v0, p0, Lcom/htc/sunnyCore/RenderThreadAction;->needLockCPU:Z

    .line 4010
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 3
    .parameter "cancelReason"

    .prologue
    const/4 v2, 0x0

    .line 4052
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v0, :cond_0

    const-string v0, "profiler.performance"

    invoke-static {v0, v2}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4053
    :cond_0
    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](2102) [FPS][Gallery][GVonFling_END][FINISH]\u2026"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4055
    :cond_1
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$GridFlingingAction;->mShouldPrintFlingLog:Z

    .line 4056
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 5
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4015
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$GridFlingingAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v3, v3, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->update()V

    .line 4016
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$GridFlingingAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v3, v3, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->getRelativeMovement()I

    move-result v0

    .line 4018
    .local v0, pos:I
    if-eqz v0, :cond_4

    .line 4020
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$GridFlingingAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v3, v3, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    if-ne v3, v1, :cond_3

    .line 4021
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$GridFlingingAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v3, v2, v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->onScrollMotionIRT(II)V

    .line 4026
    :goto_0
    iget-boolean v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$GridFlingingAction;->mShouldPrintFlingLog:Z

    if-eqz v3, :cond_2

    .line 4027
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v3, :cond_0

    const-string v3, "profiler.performance"

    invoke-static {v3, v2}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 4028
    :cond_0
    const-string v3, "AutoTest"

    const-string v4, "[AutoProf](2101) [FPS][Gallery][GVonFling_BGN][START]\u2026"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4030
    :cond_1
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$GridFlingingAction;->mShouldPrintFlingLog:Z

    .line 4046
    :cond_2
    :goto_1
    if-eqz v0, :cond_7

    :goto_2
    return v1

    .line 4024
    :cond_3
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$GridFlingingAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    neg-int v4, v0

    invoke-virtual {v3, v4, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->onScrollMotionIRT(II)V

    goto :goto_0

    .line 4037
    :cond_4
    const-string v3, "GridFlingingAction"

    const-string v4, "[HTCAlbum][Gridview][GridFlingingAction]: SCROLL_STATE_IDLE"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4038
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$GridFlingingAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v3, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->reportScrollStateChange(I)V

    .line 4039
    iget-boolean v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$GridFlingingAction;->mShouldPrintFlingLog:Z

    if-nez v3, :cond_2

    .line 4040
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v3, :cond_5

    const-string v3, "profiler.performance"

    invoke-static {v3, v2}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_6

    .line 4041
    :cond_5
    const-string v3, "AutoTest"

    const-string v4, "[AutoProf](2102) [FPS][Gallery][GVonFling_END][FINISH]\u2026"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4043
    :cond_6
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$GridFlingingAction;->mShouldPrintFlingLog:Z

    goto :goto_1

    :cond_7
    move v1, v2

    .line 4046
    goto :goto_2
.end method
