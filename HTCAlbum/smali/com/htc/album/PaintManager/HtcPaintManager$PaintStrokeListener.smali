.class Lcom/htc/album/PaintManager/HtcPaintManager$PaintStrokeListener;
.super Ljava/lang/Object;
.source "HtcPaintManager.java"

# interfaces
.implements Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/PaintManager/HtcPaintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PaintStrokeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/PaintManager/HtcPaintManager;


# direct methods
.method private constructor <init>(Lcom/htc/album/PaintManager/HtcPaintManager;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/htc/album/PaintManager/HtcPaintManager$PaintStrokeListener;->this$0:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/PaintManager/HtcPaintManager;Lcom/htc/album/PaintManager/HtcPaintManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/htc/album/PaintManager/HtcPaintManager$PaintStrokeListener;-><init>(Lcom/htc/album/PaintManager/HtcPaintManager;)V

    return-void
.end method


# virtual methods
.method public onStrokeBegin(Lcom/htc/painting/engine/StrokeEventArg$StrokeMoveEventArg;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 128
    return-void
.end method

.method public onStrokeEnd(Lcom/htc/painting/engine/StrokeEventArg$StrokeMoveEventArg;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 135
    iget-object v1, p0, Lcom/htc/album/PaintManager/HtcPaintManager$PaintStrokeListener;->this$0:Lcom/htc/album/PaintManager/HtcPaintManager;

    iget-object v0, p0, Lcom/htc/album/PaintManager/HtcPaintManager$PaintStrokeListener;->this$0:Lcom/htc/album/PaintManager/HtcPaintManager;

    #getter for: Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I
    invoke-static {v0}, Lcom/htc/album/PaintManager/HtcPaintManager;->access$000(Lcom/htc/album/PaintManager/HtcPaintManager;)I

    move-result v2

    invoke-virtual {p1}, Lcom/htc/painting/engine/StrokeEventArg$StrokeMoveEventArg;->getStroke()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/engine/stroke/Stroke;

    invoke-virtual {v0}, Lcom/htc/painting/engine/stroke/Stroke;->getId()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/htc/album/PaintManager/HtcPaintManager;->onPaintPartialStroke(II)V

    .line 138
    return-void
.end method

.method public onStrokeStatusChange(Lcom/htc/painting/engine/StrokeEventArg$StrokeStatusChangeEventArg;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 143
    return-void
.end method
