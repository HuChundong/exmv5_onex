.class Lcom/htc/sunnyCore/widget/gridview/GridView$GridPanningAction;
.super Lcom/htc/sunnyCore/RenderThreadAction;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/widget/gridview/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridPanningAction"
.end annotation


# static fields
.field public static final PANNING_ACTION_NAME:Ljava/lang/String; = "Panning"


# instance fields
.field private mShouldPrintScrollLog:Z

.field final synthetic this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/widget/gridview/GridView;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter "host"

    .prologue
    const/4 v1, 0x1

    .line 3931
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$GridPanningAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    .line 3932
    const-string v0, "Panning"

    invoke-direct {p0, p2, v0}, Lcom/htc/sunnyCore/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3928
    iput-boolean v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$GridPanningAction;->mShouldPrintScrollLog:Z

    .line 3933
    iput-boolean v1, p0, Lcom/htc/sunnyCore/RenderThreadAction;->needLockCPU:Z

    .line 3934
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 3
    .parameter "cancelReason"

    .prologue
    const/4 v2, 0x1

    .line 3973
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v0, :cond_0

    const-string v0, "profiler.performance"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 3974
    :cond_0
    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](2102) [FPS][Gallery][GVonScroll_END][FINISH]\u2026"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3976
    :cond_1
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$GridPanningAction;->mShouldPrintScrollLog:Z

    .line 3977
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 5
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3938
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$GridPanningAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v3, v3, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    if-nez v3, :cond_1

    .line 3967
    :cond_0
    :goto_0
    return v1

    .line 3941
    :cond_1
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$GridPanningAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v3, v3, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->getStatus()Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    move-result-object v3

    sget-object v4, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    if-eq v3, v4, :cond_4

    .line 3942
    iget-boolean v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$GridPanningAction;->mShouldPrintScrollLog:Z

    if-nez v3, :cond_0

    .line 3943
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v3, :cond_2

    const-string v3, "profiler.performance"

    invoke-static {v3, v1}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 3944
    :cond_2
    const-string v3, "AutoTest"

    const-string v4, "[AutoProf](2102) [FPS][Gallery][GVonScroll_END][FINISH]\u2026"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3946
    :cond_3
    iput-boolean v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$GridPanningAction;->mShouldPrintScrollLog:Z

    goto :goto_0

    .line 3951
    :cond_4
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$GridPanningAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v3, v3, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->update()V

    .line 3952
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$GridPanningAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v3, v3, Lcom/htc/sunnyCore/widget/gridview/GridView;->mGridViewScroller:Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/GridViewScroller;->getRelativeMovement()I

    move-result v0

    .line 3953
    .local v0, pos:I
    if-eqz v0, :cond_5

    .line 3954
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$GridPanningAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget v3, v3, Lcom/htc/sunnyCore/widget/gridview/GridView;->mOrientation:I

    if-ne v3, v2, :cond_9

    .line 3955
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$GridPanningAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v3, v1, v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->onScrollMotionIRT(II)V

    .line 3961
    :cond_5
    :goto_1
    iget-boolean v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$GridPanningAction;->mShouldPrintScrollLog:Z

    if-eqz v3, :cond_8

    .line 3962
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v3, :cond_6

    const-string v3, "profiler.performance"

    invoke-static {v3, v1}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_7

    .line 3963
    :cond_6
    const-string v3, "AutoTest"

    const-string v4, "[AutoProf](2101) [FPS][Gallery][GVonScroll_BGN][START]\u2026"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3965
    :cond_7
    iput-boolean v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$GridPanningAction;->mShouldPrintScrollLog:Z

    :cond_8
    move v1, v2

    .line 3967
    goto :goto_0

    .line 3958
    :cond_9
    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$GridPanningAction;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    neg-int v4, v0

    invoke-virtual {v3, v4, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->onScrollMotionIRT(II)V

    goto :goto_1
.end method
