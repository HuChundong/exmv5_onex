.class Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;
.super Lcom/htc/sunnyCore/RenderThreadEvent;
.source "FullFilmView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaItemRefresh"
.end annotation


# instance fields
.field flags:I

.field index:I

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;II)V
    .locals 2
    .parameter
    .parameter "index"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 2594
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .line 2595
    const-string v0, "onMediaItemRefresh"

    invoke-direct {p0, p1, v0}, Lcom/htc/sunnyCore/RenderThreadEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2591
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->index:I

    .line 2592
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->flags:I

    .line 2596
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->index:I

    .line 2597
    iput p3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->flags:I

    .line 2598
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 2612
    return-void
.end method

.method public onProcessEventIRT()V
    .locals 3

    .prologue
    .line 2607
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->index:I

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->flags:I

    #calls: Lcom/htc/sunny2/fullfilmview/FullFilmView;->onMediaItemRefreshIRT(II)V
    invoke-static {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$1300(Lcom/htc/sunny2/fullfilmview/FullFilmView;II)V

    .line 2608
    return-void
.end method

.method public onRemovedIRT()V
    .locals 1

    .prologue
    .line 2615
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #calls: Lcom/htc/sunny2/fullfilmview/FullFilmView;->RecycleMediaItemRefresh(Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;)V
    invoke-static {v0, p0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$1400(Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;)V

    .line 2616
    return-void
.end method

.method public reset(II)V
    .locals 2
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 2601
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const-string v1, "onMediaItemRefresh"

    invoke-super {p0, v0, v1}, Lcom/htc/sunnyCore/RenderThreadEvent;->reset(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2602
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->index:I

    .line 2603
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$MediaItemRefresh;->flags:I

    .line 2604
    return-void
.end method
